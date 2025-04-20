#include "sparse.h"
#include "dynarr.h"
#include "vector.h"

#include <string.h>
#include <stdio.h>
#include <assert.h>

typedef struct
{
    size_t index;
    char value[];
}
pair_t;


typedef struct
{
    sparse_foreach_t func;
    void *param;
}
adapt_foreach_param_t;


typedef struct
{
    sparse_aggregate_t func;
    void *param;
}
adapt_aggregate_param_t;


/*                            ***
* ===  Forward Declarations === *
***                            */

/*
* Used for finding insertion place for pair
*   value   -> pair_t *pair_to_insert
*   element -> pair_t *pair_in_the_arraytor
*/
static ssize_t cmp_pairs_by_index(const void *const value, const void *const element, void *const param);

/*
* Used for binary search of the pair by providen index
*   value   -> size_t *index
*   element -> pair_t *pair
*/
static ssize_t cmp_index_to_pair(const void *const value, const void *const element, void *const param);

static bool match_by_index(const void *const element, void *const index);
/*
* Access header allocated in underlying storage layer.
*/
static sparse_header_t *get_sparse_header(const sparse_t *const array);

static int adapt_foreach(const void *const element, void *const param);

static int adapt_aggregate(const void *const element, void *const acc, void *const param);


/*                           ***
* ===  API Implementation  === *
***                           */

sparse_t *sparse_create_(const sparse_opts_t *const opts)
{
    assert(opts);

    /* dynarr's `element_size` is the real size
       of an allocation per element,
       so we need to introduce separate property getter
       for sparse array */
    sparse_t *array = dynarr_create(
        .element_size = sizeof(size_t) + calc_aligned_size(opts->element_size, ALIGNMENT),
        .initial_cap = opts->initial_cap,
        .ext_header_size = sizeof(sparse_header_t),
        .grow_factor = opts->grow_factor,
        .grow_threshold = opts->grow_threshold,
        .shrink_threshold = opts->shrink_threshold
    );

    if (!array) return NULL;

    sparse_header_t *ext_header = (sparse_header_t*)dynarr_get_ext_header(array);
    *ext_header = (sparse_header_t) {
        .element_size = opts->element_size
    };

    return array;
}


sparse_t *sparse_clone(const sparse_t *const array)
{
    assert(array);
    return dynarr_clone(array);
}


void sparse_destroy(sparse_t *const array)
{
    assert(array);
    dynarr_destroy(array);
}


size_t sparse_element_size(const sparse_t *const array)
{
    assert(array);
    return get_sparse_header(array)->element_size;
}


size_t sparse_first_index(const sparse_t *const array)
{
    assert(array);
    assert(sparse_size(array) != 0);

    pair_t *first = dynarr_first(array);
    return first->index;
}


size_t sparse_last_index(const sparse_t *const array)
{
    assert(array);
    assert(sparse_size(array) != 0);

    pair_t *last = dynarr_last(array);
    return last->index;
}


size_t sparse_first_free_index(const sparse_t *const array)
{
    assert(array);

    const size_t size = sparse_size(array);
    size_t index = 0;

    for (size_t i = 0; i < size; ++i)
    {
        pair_t *pair = (pair_t *)dynarr_get(array, i);
        if (pair->index > index)
        {
            return index;
        }
        index = pair->index + 1;
    }
    return index;
}


size_t sparse_last_free_index(const sparse_t *const array)
{
    assert(array);
    if (sparse_size(array) == 0) return 0;
    pair_t *p = (pair_t *)dynarr_last(array);
    return p->index + 1;
}


size_t sparse_size(const sparse_t *const array)
{
    assert(array);
    return dynarr_size(array);
}


sparse_status_t sparse_insert(sparse_t **const array, const size_t index, const void *const value)
{
    assert(array && *array);
    assert(value);

    /* element for given index already exists */
    if (vector_binary_find(*array, &index, dynarr_size(*array), cmp_index_to_pair, NULL))
    {
        return SPARSE_INSERT_INDEX_OVERRIDE;
    }

    size_t place;
    dynarr_status_t status = dynarr_binary_reserve(array, &index, cmp_index_to_pair, NULL, &place);
    if (DYNARR_SUCCESS != status) return (sparse_status_t)status;

    pair_t *pair = dynarr_get(*array, place);
    pair->index = index;
    memcpy(pair->value, value, sparse_element_size(*array));

    return SPARSE_SUCCESS;
}


sparse_status_t sparse_insert_reserve(sparse_t **const array, const size_t index)
{
    assert(array && *array);

    /* element for given index already exists */
    if (vector_binary_find(*array, &index, dynarr_size(*array), cmp_index_to_pair, NULL))
    {
        return SPARSE_INSERT_INDEX_OVERRIDE;
    }

    size_t place;
    dynarr_status_t status = dynarr_binary_reserve(array, &index, cmp_index_to_pair, NULL, &place);
    if (DYNARR_SUCCESS != status) return (sparse_status_t)status;

    pair_t *pair = dynarr_get(*array, place);
    pair->index = index;

    return SPARSE_SUCCESS;
}


sparse_status_t sparse_remove(sparse_t **const array, const size_t index)
{
    assert(array && *array);
    
    dynarr_status_t status = dynarr_remove_if(array, match_by_index, 1, (void *const)&index);

    if (DYNARR_SHRINK_ERROR == status) return SPARSE_ALLOC_ERROR;
    return SPARSE_SUCCESS;
}


void* sparse_get(const sparse_t *const array, const size_t index)
{
    assert(array);
    pair_t *p = (pair_t *)vector_binary_find(array, &index, dynarr_size(array), cmp_index_to_pair, NULL);
    if (!p) return NULL;
    return p->value;
}


bool sparse_is_empty_element(const sparse_t *const array, const size_t index)
{
    assert(array);
    return !vector_binary_find(array, &index, dynarr_size(array), cmp_index_to_pair, NULL);
}


int sparse_foreach(const sparse_t *const sparse,
        const sparse_foreach_t func,
        void *const param)
{
    assert(sparse);
    assert(func);

    adapt_foreach_param_t aparam = {
        .func = func,
        .param = param,
    };

    return dynarr_foreach(sparse, adapt_foreach, &aparam);
}


int sparse_aggregate(const sparse_t *const sparse,
        const sparse_aggregate_t func,
        void *const acc,
        void *const param)
{
    assert(sparse);
    assert(func);

    adapt_aggregate_param_t aparam = {
        .func = func,
        .param = param,
    };

    return dynarr_aggregate(sparse, adapt_aggregate, acc, &aparam);
}


int sparse_transform(sparse_t *const sparse,
        const sparse_transform_t func,
        void *const param)
{
    assert(sparse);
    assert(func);

    return sparse_foreach(sparse, (sparse_foreach_t)func, param);
}


/*                         ***
* ===  Static Functions  === *
***                         */

static ssize_t cmp_pairs_by_index(const void *const value, const void *const element, void *const param)
{
    (void)param;
    return (ssize_t) ((const pair_t *)value)->index - ((const pair_t *)element)->index;
}


static ssize_t cmp_index_to_pair(const void *const value, const void *const element, void *const param)
{
    (void)param;
    return (ssize_t)*(size_t*) value - ((const pair_t *) element)->index;
}


static bool match_by_index(const void *const element, void *const index)
{
    return ((pair_t*)element)->index == *(size_t*)index;
}


static sparse_header_t *get_sparse_header(const sparse_t *const array)
{
    return dynarr_get_ext_header(array);
}


static int adapt_foreach(const void *const element, void *const param)
{
    const pair_t *p = element;
    adapt_foreach_param_t *adapt = param;
    return adapt->func(p->index, &p->value, adapt->param);
}


static int adapt_aggregate(const void *const element, void *const acc, void *const param)
{
    const pair_t *p = element;
    adapt_aggregate_param_t *adapt = param;
    return adapt->func(p->index, &p->value, acc, adapt->param);
}
