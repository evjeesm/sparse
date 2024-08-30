noinst_LTLIBRARIES = libsparse_funcs.la
libsparse_funcs_la_SOURCES = sparse.c sparse.h
libsparse_funcs_la_CFLAGS = -I$(top_srcdir)/dynarr/src/ \
							-I$(top_srcdir)/dynarr/vector/src/
libsparse_funcs_la_LDFLAGS = -L$(top_builddir)/dynarr/src/ \
							 -L$(top_builddir)/dynarr/vector/src/

lib_LTLIBRARIES = libsparse_static.la
if !MINGW
lib_LTLIBRARIES += libsparse.la
endif

libsparse_la_SOURCES =
libsparse_la_LDFLAGS = -shared
libsparse_la_LIBADD = libsparse_funcs.la \
					  $(top_builddir)/dynarr/src/libdynarr.la

libsparse_la_LIBS = $(CODE_COVERAGE_LIBS)
libsparse_la_CPPFLAGS = $(CODE_COVERAGE_CPPFLAGS)
libsparse_la_CFLAGS = $(CODE_COVERAGE_CFLAGS)
libsparse_la_CXXFLAGS = $(CODE_COVERAGE_CXXFLAGS)

libsparse_static_la_SOURCES =
libsparse_static_la_LDFLAGS = -static
libsparse_static_la_LIBADD = libsparse_funcs.la \
							 $(top_builddir)/dynarr/src/libdynarr_static.la
libsparse_static_la_LIBS = $(CODE_COVERAGE_LIBS)
libsparse_static_la_CPPFLAGS = $(CODE_COVERAGE_CPPFLAGS)
libsparse_static_la_CFLAGS = $(CODE_COVERAGE_CFLAGS)
libsparse_static_la_CXXFLAGS = $(CODE_COVERAGE_CXXFLAGS)

include_HEADERS = sparse.h
