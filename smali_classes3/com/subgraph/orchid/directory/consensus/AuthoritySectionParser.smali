.class public Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "AuthoritySectionParser.java"


# instance fields
.field private currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->startEntry()V

    return-void
.end method

.method private addCurrentEntry()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addVoteAuthorityEntry(Lcom/subgraph/orchid/VoteAuthorityEntry;)V

    .line 39
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->startEntry()V

    return-void
.end method

.method private parseDirSource()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setNickname(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setHostname(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setDirectoryPort(I)V

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setRouterPort(I)V

    return-void
.end method

.method private startEntry()V
    .locals 1

    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    return-void
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    const-string v0, "r"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 58
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .line 62
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setVoteDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 26
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->addCurrentEntry()V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setContact(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->parseDirSource()V

    :goto_0
    return-void
.end method
