.class public Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;
.super Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;
.source "ConsensusFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<",
        "Lcom/subgraph/orchid/ConsensusDocument;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONSENSUS_BASE_PATH:Ljava/lang/String; = "/tor/status-vote/current/"


# instance fields
.field private final useMicrodescriptors:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;->useMicrodescriptors:Z

    return-void
.end method


# virtual methods
.method createParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;->PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createConsensusDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    return-object p1
.end method

.method getRequestPath()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/tor/status-vote/current/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;->useMicrodescriptors:Z

    if-eqz v1, :cond_0

    const-string v1, "consensus-microdesc"

    goto :goto_0

    :cond_0
    const-string v1, "consensus"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
