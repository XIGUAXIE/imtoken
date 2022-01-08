.class public abstract Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;
.super Ljava/lang/Object;
.source "DocumentFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeRequest(Lcom/subgraph/orchid/directory/downloader/HttpConnection;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->getRequestPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->sendGetRequest(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readResponse()V

    .line 33
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getMessageBody()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->getRequestPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processResponse(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->createParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    .line 45
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 46
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse response from directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method abstract createParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract getRequestPath()Ljava/lang/String;
.end method

.method public requestDocuments(Lcom/subgraph/orchid/directory/downloader/HttpConnection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/downloader/HttpConnection;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->makeRequest(Lcom/subgraph/orchid/directory/downloader/HttpConnection;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->processResponse(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
