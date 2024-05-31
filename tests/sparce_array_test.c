#include "../src/sparce_array.h"
#include <check.h>
#include <stdlib.h>

static sparce_array_t *arr;

static void setup_empty(void)
{
    srr_create(arr,
        .element_size = sizeof(int)
    );
}

static void setup_full(void)
{
    const size_t cap = 100;

    srr_create(arr,
        .element_size = sizeof(int),
        .initial_cap = cap
    );

    // full capacity
    for (int i = 0; i < (int)cap; ++i)
    {
        ck_assert(srr_insert(&arr, i, &i));
    }
}


static void teardown(void)
{
    srr_destroy(arr);
}


START_TEST (test_srr_create)
{
    ck_assert_ptr_nonnull(arr);
    ck_assert_uint_eq(srr_fullsize(arr), 0);
    ck_assert_uint_eq(srr_realsize(arr), 0);
}
END_TEST


START_TEST (test_srr_insert)
{
    const int value = 100;
    bool retval = srr_insert(&arr, 4, &value);
    ck_assert(retval);

    retval = srr_insert(&arr, 4, &value);
    ck_assert(!retval);
}
END_TEST


Suite *srr_suite(void)
{
    Suite *s;
    TCase *tc_core;

    s = suite_create("Sparce Array");
    
    /* Core test case */
    tc_core = tcase_create("Core");
    tcase_add_checked_fixture(tc_core, setup_empty, teardown);
    tcase_add_test(tc_core, test_srr_create);
    tcase_add_test(tc_core, test_srr_insert);

    suite_add_tcase(s, tc_core);
 
    return s;
}


int main(void)
{
    int number_failed;
    Suite *s;
    SRunner *sr;

    s = srr_suite();
    sr = srunner_create(s);

    /* srunner_arr_fork_status(sr, CK_NOFORK); */
    srunner_run_all(sr, CK_NORMAL);
    number_failed = srunner_ntests_failed(sr);
    srunner_free(sr);

    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}

