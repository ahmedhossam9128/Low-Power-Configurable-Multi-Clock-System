################################################################################
#This is an internally genertaed by spyglass for Message Tagging Support
################################################################################


        use spyglass;
    use SpyGlass;
    use SpyGlass::Objects;
    spyRebootMsgTagSupport();

    spySetMsgTagCount(61,39);
spyCacheTagValuesFromBatch(["ADV_CLK_CDC_ANALYSIS_SS"]);
spyCacheTagValuesFromBatch(["DomainMatrix_SS"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_RTL"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["QS_CSV_TAG"]);
spyCacheTagValuesFromBatch(["AC_GLITCH03_SS_SCH"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_RTL2NETLISTSTAT"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CONV_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_COHERENCY06_SS_SCH"]);
spyCacheTagValuesFromBatch(["Clock_conv01_WRN"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["CDC_ABSTRACT_VALIDATION_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyParseTextMessageTagFile("./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass_spysch/sg_msgtag.txt");

spyMessageTagTestBenchmark(95,"./spyglass-1/System_Top/cdc/cdc_verify_struct/spyglass.vdb");

1;