.class public Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "FooterSectionParser.java"


# instance fields
.field private seenFirstSignature:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    return-void
.end method

.method private doFirstSignature()V
    .locals 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->endSignedEntity()V

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;

    move-result-object v0

    const-string v1, "directory-signature "

    .line 52
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setSigningHash(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getSignatureMessageDigest256()Lcom/subgraph/orchid/crypto/TorMessageDigest;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setSigningHash256(Lcom/subgraph/orchid/data/HexDigest;)V

    return-void
.end method

.method private processBandwidthWeights()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addBandwidthWeight(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processSignature()V
    .locals 6

    .line 61
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->doFirstSignature()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    const-string v1, "sha256"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    new-instance v5, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/crypto/TorSignature;Z)V

    invoke-virtual {v4, v5}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V

    return-void
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 25
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 29
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->processSignature()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->processBandwidthWeights()V

    :goto_0
    return-void
.end method
