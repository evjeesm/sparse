
VALGRIND_memcheck_FLAGS = --leak-check=full --track-origins=yes
@VALGRIND_CHECK_RULES@

TESTS = srr_test
check_PROGRAMS = srr_test

srr_test_SOURCES = sparse_array_test.c $(top_builddir)/src/sparse_array.h
srr_test_CFLAGS = @CHECK_CFLAGS@ -I../dynarr/src/ -I../dynarr/vector/src/
srr_test_LDADD = $(top_builddir)/src/libsparse_array.la $(top_builddir)/dynarr/src/libdynarr.la @CHECK_LIBS@
