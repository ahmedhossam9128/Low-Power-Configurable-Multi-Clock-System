################################################################################
#This is an internally genertaed by spyglass for Message Tagging Support
################################################################################


        use spyglass;
    use SpyGlass;
    use SpyGlass::Objects;
    spyRebootMsgTagSupport();

    spySetMsgTagCount(62,39);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyCacheTagValuesFromBatch(["DomainMatrix_SS"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyParseTextMessageTagFile("./spyglass-1/System_Top/cdc/clock_reset_integrity/spyglass_spysch/sg_msgtag.txt");

spyMessageTagTestBenchmark(42,"./spyglass-1/System_Top/cdc/clock_reset_integrity/spyglass.vdb");

1;