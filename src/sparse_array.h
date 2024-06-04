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

typedef struct
{
    size_t index;
    char value[];
}
pair_t;

typedef void (*printer_t) (const void *element);

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


void srr_create_(sparse_array_t **const array, const srr_opts_t *const opts);

void srr_destroy(sparse_array_t *const array);

size_t srr_element_size(const sparse_array_t *const array);

bool srr_insert(sparse_array_t **const array, const size_t index, const void *const value);

size_t srr_fullsize(const sparse_array_t *const array);

size_t srr_realsize(const sparse_array_t *const array);

bool srr_is_null(const sparse_array_t *const array, const size_t index);

void srr_print(const sparse_array_t *array, printer_t printer);

void *srr_get(const sparse_array_t *array, size_t index);

#endif/*_SRR_H_*/
