

bin_PROGRAMS = sparse_matrix
sparse_matrix_SOURCES = sparse_matrix.c
sparse_matrix_LDADD = $(top_builddir)/src/libsparse_static.la

sparse_matrix_LIBS = $(CODE_COVERAGE_LIBS)
sparse_matrix_CPPFLAGS = $(CODE_COVERAGE_CPPFLAGS) \
						 -I$(top_srcdir)/src \
						 -I$(top_srcdir)/dynarr/src

sparse_matrix_CFLAGS = $(CODE_COVERAGE_CFLAGS)
sparse_matrix_CXXFLAGS = $(CODE_COVERAGE_CXXFLAGS)


