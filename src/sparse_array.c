#include "sparse_array.h"

#include <string.h>
#include <stdio.h>
#include <assert.h>

typedef struct
{
    size_t index;
    char value[];
}
pair_t;

/*                            ***
* ===  Forward Declarations === *
***                            */

/*
* Used for finding insertion place for pair
*   value   -> pair_t *pair_to_insert
*   element -> pair_t *pair_in_the_arraytor
*/
static ssize_t cmp_pair_by_index(const void *const value, const void *const element, void *const param);


/*
* Used for binary search of the pair by providen index
*   value   -> size_t *index
*   element -> pair_t *pair
*/
static ssize_t cmp_index_with_pair(const void *const value, const void *const element, void *const param);


/*
* Access header allocated in underlying storage layer.
*/
static sparse_header_t *get_sparse_header(const sparse_t *const array);


/*                           ***
* ===  API Implementation  === *
***                           */

sparse_t *sparse_create_(const sparse_opts_t *const opts)
{
    assert(opts);

    sparse_t *array = dynarr_create(
        .element_size = sizeof(size_t) + calc_aligned_size(opts->element_size, ALIGNMENT),
        .data_offset = sizeof(sparse_header_t),
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


sparse_t *sparce_clone(const sparse_t *const array)
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


size_t sparse_fullsize(const sparse_t *const array)
{
    assert(array);
    if (dynarr_size(array) == 0) return 0;
    pair_t *p = (pair_t *)dynarr_last(array);
    return p->index + 1;
}


size_t sparse_realsize(const sparse_t *const array)
{
    assert(array);
    return dynarr_size(array);
}


sparse_status_t sparse_insert(sparse_t **const array, const size_t index, const void *const value)
{
    assert(array && *array);
    assert(value);

    /* element for given index already exists */
    if (vector_binary_find(*array, &index, dynarr_size(*array), cmp_index_with_pair, NULL))
    {
        return SPARSE_INSERT_INDEX_OVERRIDE;
    }

    size_t place;
    dynarr_status_t status = dynarr_binary_reserve(array, &index, cmp_index_with_pair, NULL, &place);
    if (DYNARR_SUCCESS != status) return (sparse_status_t)status;

    pair_t *pair = dynarr_get(*array, place);
    pair->index = index;
    memcpy(pair->value, value, sparse_element_size(*array));

    return SPARSE_SUCCESS;
}


bool sparse_is_null(const sparse_t *const array, const size_t index)
{
    assert(array);
    return !vector_binary_find(array, &index, dynarr_size(array), cmp_index_with_pair, NULL);
}


void sparse_print(const sparse_t *const array, const printer_t printer)
{
    assert(array);
    assert(printer);

    const size_t size = sparse_fullsize(array);
    for (size_t i = 0; i < size; ++i)
    {
        pair_t *pair = (pair_t *)sparse_get(array, i);
        if (pair)
        {
            printf("[%zu:", pair->index);
            printer(pair->value);
            printf("], ");
        }
    }
}


void* sparse_get(const sparse_t *const array, const size_t index)
{
    assert(array);
    pair_t *p = (pair_t *)vector_binary_find(array, &index, dynarr_size(array), cmp_index_with_pair, NULL);
    if (!p) return NULL;
    return p->value;
}


/*                         ***
* ===  Static Functions  === *
***                         */

static sparse_header_t *get_sparse_header(const sparse_t *const array)
{
    return dynarr_get_ext_header(array);
}


static ssize_t cmp_pair_by_index(const void *const value, const void *const element, void *const param)
{
    (void)param;
    return (ssize_t) ((const pair_t *)value)->index - ((const pair_t *)element)->index;
}


static ssize_t cmp_index_with_pair(const void *const value, const void *const element, void *const param)
{
    (void)param;
    return (ssize_t)*(size_t*) value - ((const pair_t *) element)->index;
}
