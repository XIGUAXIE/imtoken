.class public Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "RouterStatusSectionParser.java"


# instance fields
.field private currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    return-void
.end method

.method private addCurrentEntry()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->assertCurrentEntry()V

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addRouterStatusEntry(Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    return-void
.end method

.method private assertCurrentEntry()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Router status entry must begin with an \'r\' line"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseBandwidth()V
    .locals 4

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 89
    aget-object v1, v0, v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v2, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBandwidthItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v0, v1, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->addCurrentEntry()V

    :cond_2
    return-void
.end method

.method private parseBandwidthItem(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "Bandwidth"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setEstimatedBandwidth(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Measured"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setMeasuredBandwidth(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase64Data()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method private parseFirstLine()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    .line 61
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setNickname(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setPublicationTime(Lcom/subgraph/orchid/data/Timestamp;)V

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 68
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setRouterPort(I)V

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setDirectoryPort(I)V

    return-void

    .line 59
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Unterminated router status entry."

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFlags()V
    .locals 2

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->addFlag(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parseMicrodescriptorHash()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase64Data()[B

    move-result-object v0

    .line 121
    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setMicrodescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'m\' line has incorrect digest size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "\'m\' line is invalid unless consensus flavor is microdesc"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parsePortList()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-eq v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accept"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setAcceptedPorts(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "reject"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setRejectedPorts(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->addCurrentEntry()V

    return-void

    .line 105
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "\'p\' line does not appear in consensus flavor \'microdesc\'"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseVersion()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    const-string v0, "directory-footer"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 134
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 138
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->assertCurrentEntry()V

    .line 22
    :cond_0
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseMicrodescriptorHash()V

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parsePortList()V

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBandwidth()V

    goto :goto_0

    .line 30
    :pswitch_3
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseVersion()V

    goto :goto_0

    .line 27
    :pswitch_4
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseFlags()V

    goto :goto_0

    .line 24
    :pswitch_5
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseFirstLine()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
