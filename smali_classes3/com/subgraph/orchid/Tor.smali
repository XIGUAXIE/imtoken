.class public Lcom/subgraph/orchid/Tor;
.super Ljava/lang/Object;
.source "Tor.java"


# static fields
.field public static final BOOTSTRAP_STATUS_CIRCUIT_CREATE:I = 0x5a

.field public static final BOOTSTRAP_STATUS_CONN_DIR:I = 0x5

.field public static final BOOTSTRAP_STATUS_CONN_OR:I = 0x50

.field public static final BOOTSTRAP_STATUS_DONE:I = 0x64

.field public static final BOOTSTRAP_STATUS_HANDSHAKE_DIR:I = 0xa

.field public static final BOOTSTRAP_STATUS_HANDSHAKE_OR:I = 0x55

.field public static final BOOTSTRAP_STATUS_LOADING_DESCRIPTORS:I = 0x32

.field public static final BOOTSTRAP_STATUS_LOADING_KEYS:I = 0x28

.field public static final BOOTSTRAP_STATUS_LOADING_STATUS:I = 0x19

.field public static final BOOTSTRAP_STATUS_ONEHOP_CREATE:I = 0xf

.field public static final BOOTSTRAP_STATUS_REQUESTING_DESCRIPTORS:I = 0x2d

.field public static final BOOTSTRAP_STATUS_REQUESTING_KEYS:I = 0x23

.field public static final BOOTSTRAP_STATUS_REQUESTING_STATUS:I = 0x14

.field public static final BOOTSTRAP_STATUS_STARTING:I = 0x0

.field private static final defaultCharset:Ljava/nio/charset/Charset;

.field private static final implementation:Ljava/lang/String; = "Orchid"

.field private static final logger:Ljava/util/logging/Logger;

.field private static final version:Ljava/lang/String; = "1.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/subgraph/orchid/Tor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/Tor;->logger:Ljava/util/logging/Logger;

    .line 41
    invoke-static {}, Lcom/subgraph/orchid/Tor;->createDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/Tor;->defaultCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircuitManager(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/CircuitManager;
    .locals 7

    .line 132
    new-instance v6, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v6
.end method

.method public static createConfig()Lcom/subgraph/orchid/TorConfig;
    .locals 4

    .line 96
    const-class v0, Lcom/subgraph/orchid/config/TorConfigProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/subgraph/orchid/TorConfig;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/subgraph/orchid/config/TorConfigProxy;

    invoke-direct {v2}, Lcom/subgraph/orchid/config/TorConfigProxy;-><init>()V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/TorConfig;

    .line 97
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/subgraph/orchid/Tor;->logger:Ljava/util/logging/Logger;

    const-string v2, "Android Runtime detected, disabling V2 Link protocol"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/TorConfig;->setHandshakeV2Enabled(Z)V

    :cond_0
    return-object v0
.end method

.method public static createConnectionCache(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/ConnectionCache;
    .locals 1

    .line 123
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/connections/ConnectionCacheImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v0
.end method

.method private static createDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 44
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static createDirectory(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/Directory;
    .locals 1

    .line 119
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)V

    return-object v0
.end method

.method public static createDirectoryDownloader(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;
    .locals 1

    .line 165
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloaderImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/circuits/TorInitializationTracker;)V

    return-object v0
.end method

.method public static createInitalizationTracker()Lcom/subgraph/orchid/circuits/TorInitializationTracker;
    .locals 1

    .line 105
    new-instance v0, Lcom/subgraph/orchid/circuits/TorInitializationTracker;

    invoke-direct {v0}, Lcom/subgraph/orchid/circuits/TorInitializationTracker;-><init>()V

    return-object v0
.end method

.method public static createSocksPortListener(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)Lcom/subgraph/orchid/SocksPortListener;
    .locals 1

    .line 146
    new-instance v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)V

    return-object v0
.end method

.method public static getBuildRevision()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/subgraph/orchid/Revision;->getBuildRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 48
    sget-object v0, Lcom/subgraph/orchid/Tor;->defaultCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static getFullVersion()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-static {}, Lcom/subgraph/orchid/Tor;->getBuildRevision()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_1
    :goto_0
    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImplementation()Ljava/lang/String;
    .locals 1

    const-string v0, "Orchid"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static isAndroidRuntime()Z
    .locals 2

    const-string v0, "java.runtime.name"

    .line 83
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Android Runtime"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
