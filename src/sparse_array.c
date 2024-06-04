#include "sparse_array.h"

#include <string.h>
#include <stdio.h>
#include <assert.h>


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

static size_t calc_aligned_size(const size_t size, const size_t alignment);
static srr_header_t *get_srr_header(const sparse_array_t *const array);


/*                           ***
* ===  API Implementation  === *
***                           */

void srr_create_(sparse_array_t **const array, const srr_opts_t *const opts)
{
    dynarr_create(*array,
        .element_size = sizeof(size_t) + calc_aligned_size(opts->element_size, ALIGNMENT),
        .data_offset = sizeof(srr_header_t),
        .grow_factor = opts->grow_factor,
        .grow_threshold = opts->grow_threshold,
        .shrink_threshold = opts->shrink_threshold
        );

    srr_header_t *ext_header = (srr_header_t*)dynarr_get_ext_header(*array);
    *ext_header = (srr_header_t) {
        .element_size = opts->element_size
    };
}


void srr_destroy(sparse_array_t *const array)
{
    assert(array);
    dynarr_destroy(array);
}


size_t srr_fullsize(const sparse_array_t *const array)
{
    assert(array);
    if (dynarr_size(array) == 0) return 0;
    pair_t *p = (pair_t *)dynarr_last(array);
    return p->index + 1;
}


size_t srr_realsize(const sparse_array_t *const array)
{
    assert(array);
    return dynarr_size(array);
}


size_t srr_element_size(const sparse_array_t *const array)
{
    assert(array);
    return get_srr_header(array)->element_size;
}


bool srr_is_null(const sparse_array_t *const array, const size_t index)
{
    assert(array);
    return !vector_binary_find(array, &index, dynarr_size(array), cmp_index_with_pair, NULL);
}


bool srr_insert(sparse_array_t **const array, const size_t index, const void *const value)
{
    assert(array && *array);
    assert(value);

    /* element for given index already exists */
    if (vector_binary_find(*array, &index, dynarr_size(*array), cmp_index_with_pair, NULL))
    {
        return false;
    }

    size_t place;
    if (!dynarr_binary_reserve(array, &index, cmp_index_with_pair, NULL, &place))
    {
        return false;
    }

    pair_t *pair = dynarr_get(*array, place);
    pair->index = index;
    memcpy(pair->value, value, srr_element_size(*array));

    return true;
}


void sparse_array_print(const sparse_array_t *const array, printer_t printer)
{
    assert(array);
    const size_t size = srr_fullsize(array);
    for (size_t i = 0; i < size; ++i)
    {
        pair_t *pair = (pair_t *)srr_get(array, i);
        if (pair)
        {
            printf("[%zu:", pair->index);
            printer(pair->value);
            printf("], ");
        }
    }
}


void* srr_get(const sparse_array_t *const array, const size_t index)
{
    assert(array);
    pair_t *p = (pair_t *)vector_binary_find(array, &index, dynarr_size(array), cmp_index_with_pair, NULL);
    if (!p) return NULL;
    return p->value;
}


/*                         ***
* ===  Static Functions  === *
***                         */

static srr_header_t *get_srr_header(const sparse_array_t *const array)
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


/*
* Function calculates size of the element while respecting requirement for alignment.
*/
static size_t calc_aligned_size(const size_t size, const size_t alignment)
{
    return (size + alignment - 1) / alignment * alignment;
}


static void print_int(const void *element)
{
    printf("%d", *(int*)element);
}
