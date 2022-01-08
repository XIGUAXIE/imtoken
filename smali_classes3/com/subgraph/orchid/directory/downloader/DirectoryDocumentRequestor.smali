.class public Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;
.super Ljava/lang/Object;
.source "DirectoryDocumentRequestor.java"


# static fields
.field private static final OPEN_DIRECTORY_STREAM_TIMEOUT:I = 0x2710


# instance fields
.field private final circuit:Lcom/subgraph/orchid/DirectoryCircuit;

.field private final initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/DirectoryCircuit;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;-><init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/DirectoryCircuit;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->circuit:Lcom/subgraph/orchid/DirectoryCircuit;

    .line 38
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    return-void
.end method

.method private createHttpConnection(I)Lcom/subgraph/orchid/directory/downloader/HttpConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->openDirectoryStream(I)Lcom/subgraph/orchid/Stream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;)V

    return-object v0
.end method

.method private fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->createHttpConnection(I)Lcom/subgraph/orchid/directory/downloader/HttpConnection;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;->requestDocuments(Lcom/subgraph/orchid/directory/downloader/HttpConnection;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->close()V

    throw p1
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    new-instance p1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string p2, "Directory request interrupted"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 86
    new-instance p2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v0, "I/O exception processing directory request"

    invoke-direct {p2, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 84
    new-instance p2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v0, "Failed to open directory stream"

    invoke-direct {p2, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 82
    :catch_3
    new-instance p1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string p2, "Directory request timed out"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 68
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyInitialization(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->initializationTracker:Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;->notifyEvent(I)V

    :cond_0
    return-void
.end method

.method private openDirectoryStream(I)Lcom/subgraph/orchid/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->purposeToEventCode(IZ)I

    move-result v0

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->purposeToEventCode(IZ)I

    move-result p1

    .line 100
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->notifyInitialization(I)V

    .line 102
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->circuit:Lcom/subgraph/orchid/DirectoryCircuit;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3, v1}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;

    move-result-object v0

    .line 103
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->notifyInitialization(I)V

    return-object v0
.end method

.method private purposeToEventCode(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x32

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    :goto_0
    return p1

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x28

    goto :goto_1

    :cond_3
    const/16 p1, 0x23

    :goto_1
    return p1

    :cond_4
    if-eqz p2, :cond_5

    const/16 p1, 0x19

    goto :goto_2

    :cond_5
    const/16 p1, 0x14

    :goto_2
    return p1
.end method


# virtual methods
.method public downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 42
    new-instance p1, Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;

    invoke-direct {p1}, Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;-><init>()V

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/RouterDescriptor;

    return-object p1
.end method

.method public downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/ConsensusFetcher;-><init>(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchSingleDocument(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/ConsensusDocument;

    return-object p1
.end method

.method public downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x2

    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/MicrodescriptorFetcher;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/downloader/MicrodescriptorFetcher;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDocumentRequestor;->fetchDocuments(Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
