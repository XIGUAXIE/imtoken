.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;
.super Ljava/lang/Object;
.source "HSDescriptorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            "Lcom/subgraph/orchid/circuits/CircuitManagerImpl;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 31
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 32
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->directories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 22
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private downloadDescriptorFrom(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 7

    const-string v0, " : "

    .line 48
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading descriptor from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->openHSDirectoryStream(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Stream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    new-instance v3, Lcom/subgraph/orchid/directory/downloader/HttpConnection;

    invoke-direct {v3, v2}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;)V

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/tor/rendezvous2/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/HexDigest;->toBase32()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->sendGetRequest(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readResponse()V

    .line 56
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 57
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getMessageBody()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->readDocument(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_0
    return-object p1

    .line 59
    :cond_1
    :try_start_2
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HS descriptor download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v6}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed with status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getStatusCode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_4
    move-exception v0

    move-object v2, v1

    .line 75
    :goto_0
    :try_start_3
    sget-object v3, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory request to HS directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_3
    return-object v1

    :catch_5
    move-exception v3

    move-object v2, v1

    .line 72
    :goto_1
    :try_start_4
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open stream to HS directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/subgraph/orchid/OpenFailedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_4
    return-object v1

    :catch_6
    move-exception v3

    move-object v2, v1

    .line 69
    :goto_2
    :try_start_5
    sget-object v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException downloading HS descriptor from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_5

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_5
    return-object v1

    :catch_7
    move-exception v0

    move-object v2, v1

    .line 65
    :goto_3
    :try_start_6
    sget-object v3, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout downloading HS descriptor from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_6

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_6
    return-object v1

    :catch_8
    move-object v2, v1

    .line 62
    :catch_9
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_7

    .line 79
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v2}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p1

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_7
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_8

    .line 79
    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->close()V

    .line 80
    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    :cond_8
    throw p1
.end method

.method private openHSDirectoryStream(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    .line 93
    :try_start_0
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/InternalCircuit;->cannibalizeToDirectory(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/DirectoryCircuit;

    move-result-object p1

    const-wide/16 v1, 0x2710

    const/4 v3, 0x1

    .line 94
    invoke-interface {p1, v1, v2, v3}, Lcom/subgraph/orchid/DirectoryCircuit;->openDirectoryStream(JZ)Lcom/subgraph/orchid/Stream;

    move-result-object p1
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 100
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to extend circuit to HS directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catch_1
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 97
    new-instance p1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v0, "Failed to open directory stream"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDocument(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 3

    .line 105
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v0, p2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    .line 106
    new-instance p2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v2

    invoke-direct {p2, v1, v0, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V

    .line 107
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)V

    .line 108
    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    .line 109
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public downloadDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->directories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    .line 38
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->downloadDescriptorFrom(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
