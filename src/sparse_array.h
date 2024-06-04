#ifndef _SRR_H_
#define _SRR_H_

#include "dynarr.h"

#define ALIGNMENT sizeof(size_t)

typedef dynarr_t sparse_array_t;

typedef struct
{
    size_t element_size; /* excluding index */
    size_t initial_cap;
    float grow_factor;
    float grow_threshold;
    float shrink_threshold;
    vector_error_handler_t error_handler;
}
srr_opts_t;

typedef struct
{
    size_t element_size;
}
srr_header_t;

/*
* Callbacks: 
*/
typedef void (*printer_t) (const void *const element);

/*
* Create wrappers:
*/
#define srr_create(srr_ptr, ...) {\
    _Pragma("GCC diagnostic push") \
    _Pragma("GCC diagnostic ignored \"-Woverride-init\"") \
    srr_create_(&srr_ptr, \
        &(srr_opts_t){ \
            DYNARR_DEFAULT_ARGS, \
            __VA_ARGS__ \
        } \
    ); \
    _Pragma("GCC diagnostic pop") \
}

#define ssr_create_manual_errhdl(srr_ptr, error_out, ...) \
    ssr_create(srr_ptr, \
        .error_handler = DYNARR_MANUAL_ERROR_HANDLER(error_out), \
        __VA_ARGS__ \
    )

/*
* Allocate new sparce array with provided options.
*/
void srr_create_(sparse_array_t **const array, const srr_opts_t *const opts);


/*
* Frees sparce array resources.
*/
void srr_destroy(sparse_array_t *const array);


/*
* Access element size property.
*/
size_t srr_element_size(const sparse_array_t *const array);


/*
* Distance from the begining of the array to the last stored index + 1.
* a.k.a size including empty elements.
*/
size_t srr_fullsize(const sparse_array_t *const array);


/*
* Actual amount of stored elements. (excluding empty ones)
*/
size_t srr_realsize(const sparse_array_t *const array);


/*
* Inserts new element into an array,
* will not override already stored element at provided index
* (in which case returns false)
*/
bool srr_insert(sparse_array_t **const array, const size_t index, const void *const value);


/*
* Returns stored element's value address.
*/
void *srr_get(const sparse_array_t *array, const size_t index);


/*
* Checks wherether element stored at given index or not.
* Elements at indecies that exceed array bounds considered to be null as well.
*/
bool srr_is_null(const sparse_array_t *const array, const size_t index);


/*
* Print contents of the array.
*/
void srr_print(const sparse_array_t *array, printer_t printer);


#endif/*_SRR_H_*/
