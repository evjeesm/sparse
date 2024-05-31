
VALGRIND_memcheck_FLAGS = --leak-check=full --track-origins=yes
@VALGRIND_CHECK_RULES@

TESTS = srr_test
check_PROGRAMS = srr_test

srr_test_SOURCES = sparce_array_test.c $(top_builddir)/src/sparce_array.h
srr_test_CFLAGS = @CHECK_CFLAGS@ -I../dynarr/src/ -I../dynarr/vector/src/
srr_test_LDADD = $(top_builddir)/src/libsparce_array.la @CHECK_LIBS@
