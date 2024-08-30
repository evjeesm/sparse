noinst_LTLIBRARIES = libsparse_funcs.la
lib_LTLIBRARIES = libsparse.la libsparse_static.la

libsparse_funcs_la_SOURCES = sparse.c sparse.h
libsparse_funcs_la_CFLAGS = -I$(top_srcdir)/dynarr/src/ -I$(top_srcdir)/dynarr/vector/src/
libsparse_funcs_la_LDFLAGS = -L$(top_builddir)/dynarr/src/ -L$(top_builddir)/dynarr/vector/src/

libsparse_la_SOURCES =
libsparse_la_LDFLAGS = -shared
libsparse_la_LIBADD = libsparse_funcs.la $(top_builddir)/dynarr/src/libdynarr.la

libsparse_static_la_SOURCES =
libsparse_static_la_LDFLAGS = -static
libsparse_static_la_LIBADD = libsparse_funcs.la $(top_builddir)/dynarr/src/libdynarr_static.la

include_HEADERS = sparse.h
