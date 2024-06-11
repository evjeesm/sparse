#ifndef _SPARSE_H_
#define _SPARSE_H_

#include "dynarr.h"

#define ALIGNMENT sizeof(size_t)

typedef dynarr_t sparse_t;

typedef struct
{
    size_t element_size; /* excluding index */
    size_t initial_cap;
    float grow_factor;
    float grow_threshold;
    float shrink_threshold;
}
sparse_opts_t;

typedef struct
{
    size_t element_size;
}
sparse_header_t;

typedef enum sparse_status_t
{
    SPARSE_SUCCESS = DYNARR_SUCCESS,
    SPARSE_INSERT_INDEX_OVERRIDE = DYNARR_STATUS_LAST
}
sparse_status_t;

/*
* Callbacks:
*/
typedef void (*printer_t) (const void *const element);

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
* Allocate new sparce array with provided options.
*/
sparse_t *sparse_create_(const sparse_opts_t *const opts);


/*
* Duplicates sparse array.
*/
sparse_t *sparce_clone(const sparse_t *const array);


/*
* Frees sparce array resources.
*/
void sparse_destroy(sparse_t *const array);


/*
* Access element size property.
*/
size_t sparse_element_size(const sparse_t *const array);


/*
* Distance from the begining of the array to the last stored index + 1.
* a.k.a size including empty elements.
*/
size_t sparse_fullsize(const sparse_t *const array);


/*
* Actual amount of stored elements. (excluding empty ones)
*/
size_t sparse_realsize(const sparse_t *const array);


/*
* Inserts new element into an array,
* will not override already stored element at provided index
* (in which case returns SPARSE_INSERT_INDEX_OVERRIDE)
*/
sparse_status_t sparse_insert(sparse_t **const array, const size_t index, const void *const value);


/*
* Returns stored element's value address.
*/
void *sparse_get(const sparse_t *array, const size_t index);


/*
* Checks wherether element stored at given index or not.
* Elements at indecies that exceed array bounds considered to be null as well.
*/
bool sparse_is_null(const sparse_t *const array, const size_t index);


/*
* Print contents of the array.
*/
void sparse_print(const sparse_t *array, printer_t printer);


#endif/*_SPARSE_H_*/
