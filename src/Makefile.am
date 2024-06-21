noinst_LTLIBRARIES = libsparse_array_funcs.la
lib_LTLIBRARIES = libsparse_array.la libsparse_array_static.la

libsparse_array_funcs_la_SOURCES = sparse_array.c sparse_array.h
libsparse_array_funcs_la_CFLAGS = -I../dynarr/src/ -I../dynarr/vector/src/
libsparse_array_funcs_la_LDFLAGS = -L../dynarr/src/.libs/ -L../dynarr/vector/src/.libs/

libsparse_array_la_SOURCES =
libsparse_array_la_LDFLAGS = -shared
libsparse_array_la_LIBADD = libsparse_array_funcs.la ../dynarr/src/libdynarr.la

libsparse_array_static_la_SOURCES =
libsparse_array_static_la_LDFLAGS = -static
libsparse_array_static_la_LIBADD = libsparse_array_funcs.la ../dynarr/src/libdynarr_static.la
