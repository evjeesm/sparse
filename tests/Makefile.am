
VALGRIND_memcheck_FLAGS = --leak-check=full --track-origins=yes
@VALGRIND_CHECK_RULES@

TESTS = sparse_array_test
check_PROGRAMS = sparse_array_test

sparse_array_test_SOURCES = sparse_array_test.c $(top_builddir)/src/sparse_array.h
sparse_array_test_CFLAGS = @CHECK_CFLAGS@ -I../dynarr/src/ -I../dynarr/vector/src/
sparse_array_test_LDADD = $(top_builddir)/src/libsparse_array.la @CHECK_LIBS@
