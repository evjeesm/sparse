#ifndef _SPARSE_H_
#define _SPARSE_H_

#include "dynarr.h"

#define ALIGNMENT sizeof(size_t)

typedef dynarr_t sparse_t;

typedef struct
{
    size_t element_size; /* excluding index and padding */
    size_t initial_cap;
    float grow_factor;
    float grow_threshold;
    float shrink_threshold;
}
sparse_opts_t;

typedef struct
{
    size_t element_size; /* stores actual data size 
                            (excuding index and padding) */
}
sparse_header_t;

typedef enum sparse_status_t
{
    SPARSE_SUCCESS = DYNARR_SUCCESS,
    SPARSE_ALLOC_ERROR = DYNARR_ALLOC_ERROR,
    SPARSE_INSERT_INDEX_OVERRIDE = DYNARR_STATUS_LAST
}
sparse_status_t;

/*
* Create wrappers:
*/
#define sparse_create(...) \
    sparse_create_( \
        &(sparse_opts_t){ \
            DYNARR_DEFAULT_ARGS, \
            __VA_ARGS__ \
        } \
    )


/*
* Allocate new sparse array with provided options.
*/
sparse_t *sparse_create_(const sparse_opts_t *const opts);


/*
* Duplicates sparse array.
*/
sparse_t *sparse_clone(const sparse_t *const array);


/*
* Frees sparse array resources.
*/
void sparse_destroy(sparse_t *const array);


/*
* Returs neto data size of the element.
* (excluding storage for index and padding)
*/
size_t sparse_element_size(const sparse_t *const array);


/*
* Actual amount of stored elements. (excluding empty ones)
*/
size_t sparse_size(const sparse_t *const array);


/*
* Returns first free index. (Middle insert may cause inefficiencies)
*/
size_t sparse_first_free_index(const sparse_t *const array);


/*
* Returns last free index that can be used to reserve an element.
*/
size_t sparse_last_free_index(const sparse_t *const array);


/*
* Inserts new element into an array,
* will not override already stored element at provided index
* (in which case returns SPARSE_INSERT_INDEX_OVERRIDE)
*/
sparse_status_t sparse_insert(sparse_t **const array, const size_t index, const void *const value);


/*
* Reserve space for element at requested index without copying data.
* will not override already stored element at provided index
* (in which case returns SPARSE_INSERT_INDEX_OVERRIDE)
*/
sparse_status_t sparse_insert_reserve(sparse_t **const array, const size_t index);


/*
* Returns stored element's value address.
*/
void *sparse_get(const sparse_t *array, const size_t index);


/*
* Removes an element at a given index.
*/
sparse_status_t sparse_remove(sparse_t **const array, const size_t index);


/*
* Checks wherether element exists.
* Elements at indecies exceeding array bounds considered
* to be empty as well.
*/
bool sparse_is_empty_element(const sparse_t *const array, const size_t index);


typedef int (*sparse_foreach_t) (const size_t index, const void *const element, void *const param);
typedef int (*sparse_aggregate_t) (const size_t index, const void *const element, void *const acc, void *const param);
typedef int (*sparse_transform_t) (const size_t index, void *const element, void *const param);

int sparse_foreach(const sparse_t *const sparse,
        const sparse_foreach_t func,
        void *const param);

int sparse_aggregate(const sparse_t *const sparse,
        const sparse_aggregate_t func,
        void *const acc,
        void *const param);

int sparse_transform(sparse_t *const sparse,
        const sparse_transform_t func,
        void *const param);

#endif/*_SPARSE_H_*/
