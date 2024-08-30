
VALGRIND_memcheck_FLAGS = --leak-check=full --track-origins=yes
@VALGRIND_CHECK_RULES@

TESTS = sparse_test
check_PROGRAMS = sparse_test

sparse_test_SOURCES = sparse_test.c $(top_srcdir)/src/sparse.h
sparse_test_LDADD = $(top_builddir)/src/libsparse_static.la @CHECK_LIBS@
sparse_test_LIBS = $(CODE_COVERAGE_LIBS)
sparse_test_CPPFLAGS = -I$(top_srcdir)/dynarr/src/ \
					   -I$(top_srcdir)/dynarr/vector/src/ \
					   $(CODE_COVERAGE_CPPFLAGS)
sparse_test_CFLAGS = @CHECK_CFLAGS@ $(CODE_COVERAGE_CFLAGS)
sparse_test_CXXFLAGS = $(CODE_COVERAGE_CXXFLAGS)

debug-sparse-test: $(top_builddir)/src/libsparse_static.la sparse_test
	LD_LIBRARY_PATH=$(top_builddir)/srcs:/usr/local/lib CK_FORK=no gdb -tui sparse_test
