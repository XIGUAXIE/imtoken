.class public Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "PreambleSectionParser.java"


# static fields
.field private static final CURRENT_DOCUMENT_VERSION:I = 0x3


# instance fields
.field private isFirstLine:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    return-void
.end method

.method private parseConsensusFlavor()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ns"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->NS:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V

    goto :goto_0

    :cond_0
    const-string v1, "microdesc"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown consensus flavor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private parseFirstLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 3

    .line 95
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    if-ne p1, v0, :cond_2

    .line 98
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result p1

    if-lez p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseConsensusFlavor()V

    :cond_0
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    return-void

    .line 101
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected consensus document version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "network-status-version not found at beginning of consensus document as expected."

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseParams()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addParameter(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseVersions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private processKeyword(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseParams()V

    goto/16 :goto_3

    .line 80
    :goto_0
    :pswitch_1
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result p1

    if-lez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addKnownFlag(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseVersions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addServerVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_3
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseVersions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addClientVersion(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :pswitch_4
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setVoteDelaySeconds(I)V

    .line 68
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setDistDelaySeconds(I)V

    goto :goto_3

    .line 63
    :pswitch_5
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setValidUntil(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_3

    .line 59
    :pswitch_6
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setFreshUntil(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_3

    .line 55
    :pswitch_7
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setValidAfter(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_3

    .line 51
    :pswitch_8
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusMethod(I)V

    goto :goto_3

    .line 46
    :pswitch_9
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consensus"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 48
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected vote-status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_a
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Network status version may only appear on the first line of status document"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    const-string v0, "dir-source"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 25
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 29
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseFirstLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->processKeyword(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    :goto_0
    return-void
.end method
