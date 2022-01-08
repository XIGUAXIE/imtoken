.class public Lcom/subgraph/orchid/directory/DirectoryImpl;
.super Ljava/lang/Object;
.source "DirectoryImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Directory;


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;


# instance fields
.field private final basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCache<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

.field private consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

.field private currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

.field private final directoryCaches:Lcom/subgraph/orchid/data/RandomSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/data/RandomSet<",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private haveMinimumRouterInfo:Z

.field private isLoaded:Z

.field private last:J

.field private final loadLock:Ljava/lang/Object;

.field private final microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCache<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private needRecalculateMinimumRouterInfo:Z

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private final requiredCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private final routersByIdentity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final routersByNickname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final stateFile:Lcom/subgraph/orchid/directory/StateFile;

.field private final store:Lcom/subgraph/orchid/DirectoryStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/subgraph/orchid/directory/DirectoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    .line 61
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    :cond_0
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 69
    new-instance p1, Lcom/subgraph/orchid/directory/StateFile;

    iget-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-direct {p1, p2, p0}, Lcom/subgraph/orchid/directory/StateFile;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/Directory;)V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    .line 70
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-static {p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->createMicrodescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    .line 71
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-static {p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->createBasicDescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    .line 74
    new-instance p1, Lcom/subgraph/orchid/data/RandomSet;

    invoke-direct {p1}, Lcom/subgraph/orchid/data/RandomSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    .line 76
    new-instance p1, Lcom/subgraph/orchid/events/EventManager;

    invoke-direct {p1}, Lcom/subgraph/orchid/events/EventManager;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    .line 77
    new-instance p1, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {p1}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method static synthetic access$000()Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;
    .locals 1

    .line 41
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    return-object v0
.end method

.method private addRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addRouterByNickname(Lcom/subgraph/orchid/directory/RouterImpl;)V

    return-void
.end method

.method private addRouterByNickname(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 3

    .line 391
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Unnamed"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized checkMinimumRouterInfo()V
    .locals 6

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/Router;

    add-int/lit8 v4, v4, 0x1

    .line 116
    invoke-interface {v5}, Lcom/subgraph/orchid/Router;->isDescriptorDownloadable()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iput-boolean v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    mul-int/lit8 v3, v3, 0x4

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 120
    :goto_1
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 107
    :cond_4
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 108
    iput-boolean v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private classifyRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 1

    .line 370
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->isValidDirectoryCache(Lcom/subgraph/orchid/directory/RouterImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/RandomSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/RandomSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private clearAll()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 365
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 366
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/RandomSet;->clear()V

    return-void
.end method

.method private static createBasicDescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore;",
            ")",
            "Lcom/subgraph/orchid/directory/DescriptorCache<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl$2;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    sget-object v2, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-direct {v0, p0, v1, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl$2;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-object v0
.end method

.method private static createMicrodescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore;",
            ")",
            "Lcom/subgraph/orchid/directory/DescriptorCache<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl$1;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    sget-object v2, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-direct {v0, p0, v1, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl$1;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-object v0
.end method

.method private getDescriptorForRouterStatus(Lcom/subgraph/orchid/RouterStatus;Z)Lcom/subgraph/orchid/Descriptor;
    .locals 0

    if-eqz p2, :cond_0

    .line 349
    iget-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object p1

    return-object p1

    .line 351
    :cond_0
    iget-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object p1

    return-object p1
.end method

.method private isValidDirectoryCache(Lcom/subgraph/orchid/directory/RouterImpl;)Z
    .locals 2

    .line 378
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getDirectoryPort()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "BadDirectory"

    .line 380
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "V2Dir"

    .line 382
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private loadCertificates(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createKeyCertificateParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object p1

    const-string v0, "certificates"

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/KeyCertificate;

    .line 177
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadConsensus(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 183
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createConsensusDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object p1

    const-string v0, "consensus"

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getDocument()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/ConsensusDocument;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V

    :cond_0
    return-void
.end method

.method private logElapsed()V
    .locals 5

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    iget-wide v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    sub-long v2, v0, v2

    .line 168
    iput-wide v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    .line 169
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method private removeRequiredCertificate(Lcom/subgraph/orchid/KeyCertificate;)Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;

    .line 263
    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;->getSigningKey()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private storeCurrentConsensus()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isError()Z

    move-result v0

    const-string v1, " : "

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing error loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown problem loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateOrCreateRouter(Lcom/subgraph/orchid/RouterStatus;Ljava/util/Map;)Lcom/subgraph/orchid/directory/RouterImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/RouterStatus;",
            "Ljava/util/Map<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;)",
            "Lcom/subgraph/orchid/directory/RouterImpl;"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/subgraph/orchid/directory/RouterImpl;

    if-nez p2, :cond_0

    .line 358
    invoke-static {p0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->createFromRouterStatus(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)Lcom/subgraph/orchid/directory/RouterImpl;

    move-result-object p1

    return-object p1

    .line 359
    :cond_0
    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->updateStatus(Lcom/subgraph/orchid/RouterStatus;)V

    return-object p2
.end method


# virtual methods
.method public addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
    .locals 4

    .line 230
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->removeRequiredCertificate(Lcom/subgraph/orchid/KeyCertificate;)Z

    move-result v1

    .line 232
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v2

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServerByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 234
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate read for unknown directory authority with identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 235
    monitor-exit v0

    return-void

    .line 237
    :cond_0
    invoke-interface {v2, p1}, Lcom/subgraph/orchid/DirectoryServer;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V

    .line 239
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 241
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument;->verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    monitor-exit v0

    return-void

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V

    .line 248
    iput-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 249
    monitor-exit v0

    return-void

    .line 243
    :cond_3
    iput-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 244
    monitor-exit v0

    return-void

    .line 256
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V
    .locals 6

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 288
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/Timestamp;->isBefore(Lcom/subgraph/orchid/data/Timestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string p2, "New consensus document is older than current consensus document"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    :try_start_3
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    .line 309
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 311
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 314
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->clearAll()V

    .line 316
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRouterStatusEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/RouterStatus;

    const-string v4, "Running"

    .line 317
    invoke-interface {v3, v4}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Valid"

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-direct {p0, v3, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->updateOrCreateRouter(Lcom/subgraph/orchid/RouterStatus;Ljava/util/Map;)Lcom/subgraph/orchid/directory/RouterImpl;

    move-result-object v4

    .line 319
    invoke-direct {p0, v4}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V

    .line 320
    invoke-direct {p0, v4}, Lcom/subgraph/orchid/directory/DirectoryImpl;->classifyRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V

    .line 322
    :cond_3
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v4

    sget-object v5, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getDescriptorForRouterStatus(Lcom/subgraph/orchid/RouterStatus;Z)Lcom/subgraph/orchid/Descriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 324
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/subgraph/orchid/data/Timestamp;->getTime()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/subgraph/orchid/Descriptor;->setLastListed(J)V

    goto :goto_0

    .line 328
    :cond_5
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " routers from consensus document"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-nez p2, :cond_6

    .line 332
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->storeCurrentConsensus()V

    .line 334
    :cond_6
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    new-instance p2, Lcom/subgraph/orchid/directory/DirectoryImpl$3;

    invoke-direct {p2, p0}, Lcom/subgraph/orchid/directory/DirectoryImpl$3;-><init>(Lcom/subgraph/orchid/directory/DirectoryImpl;)V

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/events/EventManager;->fireEvent(Lcom/subgraph/orchid/events/Event;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    monitor-exit p0

    return-void

    .line 302
    :cond_7
    :try_start_5
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 303
    iget-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 298
    :cond_8
    :try_start_6
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string p2, "Unable to verify signatures on consensus document, discarding..."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 299
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 311
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 502
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    return-void
.end method

.method public addRouterDescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    return-void
.end method

.method public declared-synchronized addRouterMicrodescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shutdown()V

    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shutdown()V

    return-void
.end method

.method public createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 487
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;

    move-result-object p1

    return-object p1
.end method

.method public getAllRouters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 480
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    monitor-enter v0

    .line 481
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBasicDescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/RouterDescriptor;

    return-object p1
.end method

.method public getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    return-object v0
.end method

.method public getDirectoryAuthorities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/subgraph/orchid/DirectoryServer;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGuardEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 492
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/StateFile;->getGuardEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMicrodescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterMicrodescriptor;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/RouterMicrodescriptor;

    return-object p1
.end method

.method public getRandomDirectoryAuthority()Lcom/subgraph/orchid/DirectoryServer;
    .locals 3

    .line 220
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/DirectoryServer;

    return-object v0
.end method

.method public getRequiredCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 461
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;
    .locals 3

    const-string v0, "Unnamed"

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 447
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x24

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 449
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 456
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    return-object p1
.end method

.method public getRouterListByNames(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find router named: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getRoutersWithDownloadableDescriptors()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/directory/RouterImpl;

    .line 410
    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/RouterImpl;->isDescriptorDownloadable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 414
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    .line 416
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v3

    .line 417
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/Router;

    .line 418
    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasPendingConsensus()Z
    .locals 2

    .line 430
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized haveMinimumRouterInfo()Z
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->checkMinimumRouterInfo()V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadFromStore()V
    .locals 6

    .line 124
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Loading cached network information from disk"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    if-eqz v1, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getUseMicrodescriptors()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    .line 132
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v4, "Loading certificates"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v4, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v2, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadCertificates(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 136
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v4, "Loading consensus"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    if-eqz v1, :cond_2

    sget-object v4, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    :goto_1
    invoke-interface {v2, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadConsensus(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    if-nez v1, :cond_3

    .line 141
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "Loading descriptors"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->initialLoad()V

    goto :goto_2

    .line 144
    :cond_3
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "Loading microdescriptor cache"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->initialLoad()V

    .line 147
    :goto_2
    iput-boolean v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 148
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 150
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "loading state file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v4, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v2, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/StateFile;->parseBuffer(Ljava/nio/ByteBuffer;)V

    .line 152
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 154
    iput-boolean v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    .line 155
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/events/EventManager;->addListener(Lcom/subgraph/orchid/events/EventHandler;)V

    return-void
.end method

.method public removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 497
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    return-void
.end method

.method public storeCertificates()V
    .locals 4

    .line 272
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    monitor-enter v0

    .line 273
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/DirectoryServer;

    .line 275
    invoke-interface {v3}, Lcom/subgraph/orchid/DirectoryServer;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v3, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v2, v3, v1}, Lcom/subgraph/orchid/DirectoryStore;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    .line 278
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/events/EventManager;->removeListener(Lcom/subgraph/orchid/events/EventHandler;)V

    return-void
.end method

.method public waitUntilLoaded()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 207
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catch_0
    :try_start_2
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "Thread interrupted while waiting for directory to load from disk"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
