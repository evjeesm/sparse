noinst_LTLIBRARIES = libsparse_array_funcs.la
lib_LTLIBRARIES = libsparse_array.la libsparse_array_static.la

libsparse_array_funcs_la_SOURCES = sparse_array.c sparse_array.h
libsparse_array_funcs_la_CFLAGS = -I$(top_srcdir)/dynarr/src/ -I$(top_srcdir)/dynarr/vector/src/
libsparse_array_funcs_la_LDFLAGS = -L$(top_builddir)/dynarr/src/ -L$(top_builddir)/dynarr/vector/src/

libsparse_array_la_SOURCES =
libsparse_array_la_LDFLAGS = -shared
libsparse_array_la_LIBADD = libsparse_array_funcs.la $(top_builddir)/dynarr/src/libdynarr.la

libsparse_array_static_la_SOURCES =
libsparse_array_static_la_LDFLAGS = -static
libsparse_array_static_la_LIBADD = libsparse_array_funcs.la $(top_builddir)/dynarr/src/libdynarr_static.la

include_HEADERS = sparse_array.h
