.class public abstract Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.super Ljava/lang/Object;
.source "ConsensusDocumentSectionParser.java"


# instance fields
.field protected final document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

.field protected final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 14
    iput-object p2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    return-void
.end method


# virtual methods
.method abstract getNextStateKeyword()Ljava/lang/String;
.end method

.method abstract getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
.end method

.method abstract nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
.end method

.method parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getNextStateKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getNextStateKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->findKeyword(Ljava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v0

    return-object v0
.end method

.method abstract parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
.end method
