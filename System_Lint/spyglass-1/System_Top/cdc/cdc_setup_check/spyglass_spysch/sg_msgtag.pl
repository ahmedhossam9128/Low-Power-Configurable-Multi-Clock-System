################################################################################
#This is an internally genertaed by spyglass for Message Tagging Support
################################################################################


        use spyglass;
    use SpyGlass;
    use SpyGlass::Objects;
    spyRebootMsgTagSupport();

    spySetMsgTagCount(61,39);
spyCacheTagValuesFromBatch(["ADV_CLK_CDC_ANALYSIS_SS"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_SCH"]);
spyCacheTagValuesFromBatch(["DomainMatrix_SS"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_RTL"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_RTL2NETLISTSTAT"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyParseTextMessageTagFile("./spyglass-1/System_Top/cdc/cdc_setup_check/spyglass_spysch/sg_msgtag.txt");

spyMessageTagTestBenchmark(53,"./spyglass-1/System_Top/cdc/cdc_setup_check/spyglass.vdb");

1;