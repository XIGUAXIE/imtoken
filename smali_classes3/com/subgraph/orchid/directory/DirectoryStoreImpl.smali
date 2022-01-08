.class public Lcom/subgraph/orchid/directory/DirectoryStoreImpl;
.super Ljava/lang/Object;
.source "DirectoryStoreImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryStore;


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Lcom/subgraph/orchid/directory/DirectoryStoreFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    return-void
.end method

.method private getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    new-instance v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {p1}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized appendDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List<",
            "+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->appendDocuments(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;
    .locals 0

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->loadContents()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAllCacheFiles()V
    .locals 4

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->values()[Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 48
    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 0

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeData(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/nio/ByteBuffer;)V
    .locals 0

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeData(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Lcom/subgraph/orchid/Document;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List<",
            "+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;->getStoreFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocuments(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
