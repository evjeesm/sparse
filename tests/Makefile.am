
VALGRIND_memcheck_FLAGS = --leak-check=full --track-origins=yes
@VALGRIND_CHECK_RULES@

TESTS = sparse_test
check_PROGRAMS = sparse_test

sparse_test_SOURCES = sparse_test.c $(top_srcdir)/src/sparse.h
sparse_test_CFLAGS = @CHECK_CFLAGS@ -I$(top_srcdir)/dynarr/src/ -I$(top_srcdir)/dynarr/vector/src/
sparse_test_LDADD = $(top_builddir)/src/libsparse.la @CHECK_LIBS@
