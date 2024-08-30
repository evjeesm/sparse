<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.11.0" doxygen_gitid="9b424b03c9833626cd435af22a444888fbbb192d">
  <compound kind="file">
    <name>dynarr.c</name>
    <path>dynarr/src/</path>
    <filename>dynarr_8c.html</filename>
    <includes id="dynarr_8h" name="dynarr.h" local="yes" import="no" module="no" objc="no">dynarr.h</includes>
    <class kind="struct">dynarr_header_t</class>
    <member kind="function" static="yes">
      <type>static dynarr_opts_t</type>
      <name>get_opts</name>
      <anchorfile>dynarr_8c.html</anchorfile>
      <anchor>a498b4e9fc56a6e87a6c5ca525026a9ed</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static dynarr_header_t *</type>
      <name>get_dynarr_header</name>
      <anchorfile>dynarr_8c.html</anchorfile>
      <anchor>a73f42f3f25cd0920d8039d63ea31be07</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static dynarr_status_t</type>
      <name>grow</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga036b69c5b674d3ac22027b04ba235b42</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t amount_to_add)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static dynarr_status_t</type>
      <name>shrink</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga8eb6c0a577084ccd7a64bec67b8bdbbe</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t amount_to_remove)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>free_space_at</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga9ff20c2ac9693f6d8f0ea97f9b46539c</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, const size_t amount)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_space_at</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>gadb26f84b95f0ca45c7ccbd72e337485a</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, size_t amount)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static size_t</type>
      <name>binary_find_insert_place</name>
      <anchorfile>dynarr_8c.html</anchorfile>
      <anchor>a187b18732062f4f69486553f37697739</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *value, const size_t start, const size_t end, const compare_t cmp, void *param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_create_</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga99f1163f1932f71f0229a7340df68efb</anchor>
      <arglist>(const dynarr_opts_t *const opts)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get_ext_header</name>
      <anchorfile>group__Extension.html</anchorfile>
      <anchor>ga3acd4a1beb0e42a412b0482ddb6b9820</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_clone</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga42427bb2220a4e0bf86a08717719a6a3</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_destroy</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>gaebbaac3879771d77aa20068a26952197</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_clear</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gafde94d3d24d33d8e81c3943db38a6327</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_size</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>gaf5c43e2644d185b9b01065af34ed6e29</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_initial_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga745bff084f68eec950fa9ea0b42fb4e7</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga3ff11107726213a640d814b63cb123b2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga93c32dd116523090126d427cce08e114</anchor>
      <arglist>(const dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga30d508a9f387e2227dd0d72a8bfd2a39</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set_zero</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga853ebc7310e119a0ebc946a404e0339a</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_first</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga559fc5ecc4687c6936ea890eeb1c79e2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_last</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga7ca5c94e8e78fae1860791386fa56ea6</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_binary_find</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>gaaf8dc0009bdab23da52ef7bcc5e754fd</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>dynarr_binary_find_index</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>ga8592e4d2a568f36dbcb1bce45a4b1460</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_append</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1e7f043863514d809cd6446053f6dc47</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_prepend</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4f3cc13065faeaa1b71f9b6c62ac7adf</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_back</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga3a36563e7efd7ad826fac165dd2a0d0c</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_front</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4ba384c69893f0961f0e71d6cd6be8fe</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gab449a79e6b33f55af35329df4363336e</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_spread_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga00ddd61f7109ab9bb88da4fa5a88fb51</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_binary_find_insert_place</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga5f6a46fc8cc0cfe14d98926cadbaa35d</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gad2dd0b992152881697da2073a0c840d7</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert_uniq</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4bf1acad0769f98bef64dd4653082cf6</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_reserve</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga20112ff4b2f14ef520353b23c10761de</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gae2e52e602d3867ce3e5fee688ea20263</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_range</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1187f49d8bde19551b2c95ad430e596c</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_if</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gaa975bac298720adfd05a978509081ada</anchor>
      <arglist>(dynarr_t **const dynarr, const predicate_t predicate, const size_t limit, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_binary_merge</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga0bfdd0d8fbe0ca29ef26df50dc94f310</anchor>
      <arglist>(const dynarr_t *const first, const dynarr_t *const second, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_foreach</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga2575dd307a95358e074e07c2b9999a9d</anchor>
      <arglist>(const dynarr_t *const dynarr, const foreach_t func, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_aggregate</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gac18ed54e516f63ace336c4581f0e60c5</anchor>
      <arglist>(const dynarr_t *const dynarr, const aggregate_t func, void *const acc, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_transform</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga8246d131a58a23f4d434775bd02bccb3</anchor>
      <arglist>(dynarr_t *const dynarr, const transform_t func, void *const param)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>dynarr.h</name>
    <path>dynarr/src/</path>
    <filename>dynarr_8h.html</filename>
    <class kind="struct">dynarr_opts_t</class>
    <member kind="define">
      <type>#define</type>
      <name>DYNARR_DEFAULT_ARGS</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>a7506aa30c586258bba10244e55492795</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>dynarr_create</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga1d05157f1911b8d089e57ca0696be01f</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="typedef">
      <type>struct vector_t</type>
      <name>dynarr_t</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>a5c6295b8f25a95bf17f26bff03bb9553</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <type></type>
      <name>dynarr_status_t</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DYNARR_SUCCESS</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695dae2ffc88372b836ecbc0e1eb5743511a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DYNARR_ALLOC_ERROR</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695dac1521b11c91058fcbe8d859d57379dd4</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DYNARR_GROW_ERROR</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695da13a9dea28620a0a6c5d0ee8b45d38305</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DYNARR_SHRINK_ERROR</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695daadc22aa02062a17c7d08987652bdd799</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DYNARR_STATUS_LAST</name>
      <anchorfile>dynarr_8h.html</anchorfile>
      <anchor>ac2b2261a1330ac45a85883633d6a695daf8a07ecd59ab08058a8a49a974a6737d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_create_</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga99f1163f1932f71f0229a7340df68efb</anchor>
      <arglist>(const dynarr_opts_t *const opts)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_destroy</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>gaebbaac3879771d77aa20068a26952197</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_clone</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga42427bb2220a4e0bf86a08717719a6a3</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get_ext_header</name>
      <anchorfile>group__Extension.html</anchorfile>
      <anchor>ga3acd4a1beb0e42a412b0482ddb6b9820</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_size</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>gaf5c43e2644d185b9b01065af34ed6e29</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_initial_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga745bff084f68eec950fa9ea0b42fb4e7</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga3ff11107726213a640d814b63cb123b2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_binary_find</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>gaaf8dc0009bdab23da52ef7bcc5e754fd</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>dynarr_binary_find_index</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>ga8592e4d2a568f36dbcb1bce45a4b1460</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_clear</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gafde94d3d24d33d8e81c3943db38a6327</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga93c32dd116523090126d427cce08e114</anchor>
      <arglist>(const dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga30d508a9f387e2227dd0d72a8bfd2a39</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set_zero</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga853ebc7310e119a0ebc946a404e0339a</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_first</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga559fc5ecc4687c6936ea890eeb1c79e2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_last</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga7ca5c94e8e78fae1860791386fa56ea6</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_append</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1e7f043863514d809cd6446053f6dc47</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_prepend</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4f3cc13065faeaa1b71f9b6c62ac7adf</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_back</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga3a36563e7efd7ad826fac165dd2a0d0c</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_front</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4ba384c69893f0961f0e71d6cd6be8fe</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gab449a79e6b33f55af35329df4363336e</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gae2e52e602d3867ce3e5fee688ea20263</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_range</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1187f49d8bde19551b2c95ad430e596c</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_if</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gaa975bac298720adfd05a978509081ada</anchor>
      <arglist>(dynarr_t **const dynarr, const predicate_t predicate, const size_t limit, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_binary_merge</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga0bfdd0d8fbe0ca29ef26df50dc94f310</anchor>
      <arglist>(const dynarr_t *const first, const dynarr_t *const second, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_spread_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga00ddd61f7109ab9bb88da4fa5a88fb51</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_binary_find_insert_place</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga5f6a46fc8cc0cfe14d98926cadbaa35d</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gad2dd0b992152881697da2073a0c840d7</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert_uniq</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4bf1acad0769f98bef64dd4653082cf6</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_reserve</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga20112ff4b2f14ef520353b23c10761de</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_foreach</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga2575dd307a95358e074e07c2b9999a9d</anchor>
      <arglist>(const dynarr_t *const dynarr, const foreach_t func, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_aggregate</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gac18ed54e516f63ace336c4581f0e60c5</anchor>
      <arglist>(const dynarr_t *const dynarr, const aggregate_t func, void *const acc, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_transform</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga8246d131a58a23f4d434775bd02bccb3</anchor>
      <arglist>(dynarr_t *const dynarr, const transform_t func, void *const param)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynarr_header_t</name>
    <filename>structdynarr__header__t.html</filename>
    <member kind="variable">
      <type>size_t</type>
      <name>ext_header_size</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>aa55d1acaf573a4d52eb2b3eff7b54351</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>size</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>a9032f10d549397f65978b97d1b6de673</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>initial_cap</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>a8c6ec2f4eea67a515b9803453dfe9d8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>grow_factor</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>a7dd4212117236dd67d893e6254cb52fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>grow_threshold</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>a3acec781fe6f00ae1c2e7ffca03836cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>shrink_threshold</name>
      <anchorfile>structdynarr__header__t.html</anchorfile>
      <anchor>a9ac26b188c46aab2c31a7f10680f0a57</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>dynarr_opts_t</name>
    <filename>structdynarr__opts__t.html</filename>
    <member kind="variable">
      <type>alloc_opts_t</type>
      <name>alloc_opts</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>a903024469b0c0ae20eabecd622dfee92</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>ext_header_size</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>accd8a3e669a744e366b212579e0566ec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>element_size</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>a61aa2f610ed5a0202bd558522d04c7d9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>size_t</type>
      <name>initial_cap</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>ac6f8e73f613df4b4adb4f5162a301f47</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>grow_factor</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>ae9243a6cf230d13c19c3e1eed2f78e61</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>grow_threshold</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>a387926f265aff246f24154f0bdbf731d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>shrink_threshold</name>
      <anchorfile>structdynarr__opts__t.html</anchorfile>
      <anchor>ab6ce4f5254ac3e20dc17c1648cb0605e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Auto-resize</name>
    <title>Auto-resize</title>
    <filename>group__Auto-resize.html</filename>
    <member kind="function" static="yes">
      <type>static dynarr_status_t</type>
      <name>grow</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga036b69c5b674d3ac22027b04ba235b42</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t amount_to_add)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static dynarr_status_t</type>
      <name>shrink</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga8eb6c0a577084ccd7a64bec67b8bdbbe</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t amount_to_remove)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>free_space_at</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>ga9ff20c2ac9693f6d8f0ea97f9b46539c</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, const size_t amount)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>make_space_at</name>
      <anchorfile>group__Auto-resize.html</anchorfile>
      <anchor>gadb26f84b95f0ca45c7ccbd72e337485a</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, size_t amount)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Dynarr_API</name>
    <title>Dynarr API</title>
    <filename>group__Dynarr__API.html</filename>
    <subgroup>Lifetime</subgroup>
    <subgroup>Extension</subgroup>
    <subgroup>Properties</subgroup>
    <subgroup>Searches</subgroup>
    <subgroup>Elements</subgroup>
  </compound>
  <compound kind="group">
    <name>Lifetime</name>
    <title>Lifetime</title>
    <filename>group__Lifetime.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>dynarr_create</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga1d05157f1911b8d089e57ca0696be01f</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_create_</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga99f1163f1932f71f0229a7340df68efb</anchor>
      <arglist>(const dynarr_opts_t *const opts)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_destroy</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>gaebbaac3879771d77aa20068a26952197</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_clone</name>
      <anchorfile>group__Lifetime.html</anchorfile>
      <anchor>ga42427bb2220a4e0bf86a08717719a6a3</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Extension</name>
    <title>Extension</title>
    <filename>group__Extension.html</filename>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get_ext_header</name>
      <anchorfile>group__Extension.html</anchorfile>
      <anchor>ga3acd4a1beb0e42a412b0482ddb6b9820</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Properties</name>
    <title>Properties</title>
    <filename>group__Properties.html</filename>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_size</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>gaf5c43e2644d185b9b01065af34ed6e29</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_initial_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga745bff084f68eec950fa9ea0b42fb4e7</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_capacity</name>
      <anchorfile>group__Properties.html</anchorfile>
      <anchor>ga3ff11107726213a640d814b63cb123b2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Searches</name>
    <title>Searches</title>
    <filename>group__Searches.html</filename>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_binary_find</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>gaaf8dc0009bdab23da52ef7bcc5e754fd</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>ssize_t</type>
      <name>dynarr_binary_find_index</name>
      <anchorfile>group__Searches.html</anchorfile>
      <anchor>ga8592e4d2a568f36dbcb1bce45a4b1460</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *const param)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Elements</name>
    <title>Elements</title>
    <filename>group__Elements.html</filename>
    <member kind="function">
      <type>void</type>
      <name>dynarr_clear</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gafde94d3d24d33d8e81c3943db38a6327</anchor>
      <arglist>(dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_get</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga93c32dd116523090126d427cce08e114</anchor>
      <arglist>(const dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga30d508a9f387e2227dd0d72a8bfd2a39</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>dynarr_set_zero</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga853ebc7310e119a0ebc946a404e0339a</anchor>
      <arglist>(dynarr_t *const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_first</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga559fc5ecc4687c6936ea890eeb1c79e2</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>void *</type>
      <name>dynarr_last</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga7ca5c94e8e78fae1860791386fa56ea6</anchor>
      <arglist>(const dynarr_t *const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_append</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1e7f043863514d809cd6446053f6dc47</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_prepend</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4f3cc13065faeaa1b71f9b6c62ac7adf</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_back</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga3a36563e7efd7ad826fac165dd2a0d0c</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_pop_front</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4ba384c69893f0961f0e71d6cd6be8fe</anchor>
      <arglist>(dynarr_t **const dynarr)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gab449a79e6b33f55af35329df4363336e</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const void *value)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gae2e52e602d3867ce3e5fee688ea20263</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_range</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga1187f49d8bde19551b2c95ad430e596c</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_remove_if</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gaa975bac298720adfd05a978509081ada</anchor>
      <arglist>(dynarr_t **const dynarr, const predicate_t predicate, const size_t limit, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_t *</type>
      <name>dynarr_binary_merge</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga0bfdd0d8fbe0ca29ef26df50dc94f310</anchor>
      <arglist>(const dynarr_t *const first, const dynarr_t *const second, const compare_t cmp, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_spread_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga00ddd61f7109ab9bb88da4fa5a88fb51</anchor>
      <arglist>(dynarr_t **const dynarr, const size_t index, const size_t amount, const void *const value)</arglist>
    </member>
    <member kind="function">
      <type>size_t</type>
      <name>dynarr_binary_find_insert_place</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga5f6a46fc8cc0cfe14d98926cadbaa35d</anchor>
      <arglist>(const dynarr_t *const dynarr, const void *const value, const compare_t cmp, void *param)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gad2dd0b992152881697da2073a0c840d7</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_insert_uniq</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga4bf1acad0769f98bef64dd4653082cf6</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>dynarr_status_t</type>
      <name>dynarr_binary_reserve</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga20112ff4b2f14ef520353b23c10761de</anchor>
      <arglist>(dynarr_t **const dynarr, const void *const value, const compare_t cmp, void *const param, size_t *const index)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_foreach</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga2575dd307a95358e074e07c2b9999a9d</anchor>
      <arglist>(const dynarr_t *const dynarr, const foreach_t func, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_aggregate</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>gac18ed54e516f63ace336c4581f0e60c5</anchor>
      <arglist>(const dynarr_t *const dynarr, const aggregate_t func, void *const acc, void *const param)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>dynarr_transform</name>
      <anchorfile>group__Elements.html</anchorfile>
      <anchor>ga8246d131a58a23f4d434775bd02bccb3</anchor>
      <arglist>(dynarr_t *const dynarr, const transform_t func, void *const param)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>Guide</name>
    <title>📘 Guide</title>
    <filename>Guide.html</filename>
    <docanchor file="Guide.html" title="⬆️ Extending a dynarr">dynarr_extend</docanchor>
    <docanchor file="Guide.html" title="🔨 Creating Sparse Array">create</docanchor>
    <docanchor file="Guide.html" title="⚙️ With default options">def_create</docanchor>
    <docanchor file="Guide.html" title="⚙️ With custom options">custom_opts</docanchor>
    <docanchor file="Guide.html" title="⚙️ Without macro wrapper">wthout_macro_wrapper</docanchor>
    <docanchor file="Guide.html" title="⚙️ Allocate extended header">extended_header</docanchor>
    <docanchor file="Guide.html" title="⿻ Clone an existing array">cloning</docanchor>
    <docanchor file="Guide.html" title="❌ Error handling">handle_alloc_error</docanchor>
    <docanchor file="Guide.html" title="🧨 Deallocating Sparse Array">deallocate</docanchor>
    <docanchor file="Guide.html" title="⬆️ Extending Sparse Array">sparse_extend</docanchor>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>Dynarr</title>
    <filename>index.html</filename>
    <docanchor file="index.html" title="Dynarr">md_dynarr_2README</docanchor>
  </compound>
</tagfile>
