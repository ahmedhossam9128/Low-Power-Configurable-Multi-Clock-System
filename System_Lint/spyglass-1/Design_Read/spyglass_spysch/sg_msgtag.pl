################################################################################
#This is an internally genertaed by spyglass for Message Tagging Support
################################################################################


        use spyglass;
    use SpyGlass;
    use SpyGlass::Objects;
    spyRebootMsgTagSupport();

    spySetMsgTagCount(6,34);
spyCacheTagValuesFromBatch(["DomainMatrix_SS"]);
spyParseTextMessageTagFile("./spyglass-1/Design_Read/spyglass_spysch/sg_msgtag.txt");

spyMessageTagTestBenchmark(31,"./spyglass-1/Design_Read/spyglass.vdb");

1;