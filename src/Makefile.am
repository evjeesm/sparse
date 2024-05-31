lib_LTLIBRARIES = libsparse_array.la
libsparse_array_la_SOURCES = sparse_array.c sparse_array.h dynarr.h vector.h
libsparse_array_la_LDFLAGS = -L../dynarr/src/.libs/ -L../dynarr/vector/src/.libs/ -ldynarr -lvector
libsparse_array_la_CFLAGS = -I../dynarr/src/ -I../dynarr/vector/src
