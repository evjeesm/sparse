ACLOCAL_AMFLAGS = -I m4 -I/usr/share/aclocal
SUBDIRS = dynarr src tests examples


CODE_COVERAGE_BRANCH_COVERAGE = 1

include $(top_srcdir)/aminclude_static.am
clean-local: code-coverage-clean
distclean-local: code-coverage-dist-clean
