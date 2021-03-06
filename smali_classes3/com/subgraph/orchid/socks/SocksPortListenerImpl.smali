.class public Lcom/subgraph/orchid/socks/SocksPortListenerImpl;
.super Ljava/lang/Object;
.source "SocksPortListenerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/SocksPortListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final acceptThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;",
            ">;"
        }
    .end annotation
.end field

.field private final circuitManager:Lcom/subgraph/orchid/CircuitManager;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private isStopped:Z

.field private final listeningPorts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/CircuitManager;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->acceptThreads:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 30
    iput-object p2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 19
    sget-object v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->acceptThreads:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;Ljava/net/Socket;)Ljava/lang/Runnable;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->newClientSocket(Ljava/net/Socket;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private newClientSocket(Ljava/net/Socket;)Ljava/lang/Runnable;
    .locals 3

    .line 74
    new-instance v0, Lcom/subgraph/orchid/socks/SocksClientTask;

    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->config:Lcom/subgraph/orchid/TorConfig;

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->circuitManager:Lcom/subgraph/orchid/CircuitManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/subgraph/orchid/socks/SocksClientTask;-><init>(Lcom/subgraph/orchid/TorConfig;Ljava/net/Socket;Lcom/subgraph/orchid/CircuitManager;)V

    return-object v0
.end method

.method private startListening(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;-><init>(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;I)V

    .line 69
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->acceptThreads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListeningPort(I)V
    .locals 5

    if-lez p1, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->isStopped:Z

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    monitor-exit v0

    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->startListening(I)V

    .line 48
    sget-object v1, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Listening for SOCKS connections on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 50
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/subgraph/orchid/TorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to listen on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add listening port because Socks proxy has been stopped"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 36
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal listening port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->listeningPorts:Ljava/util/Set;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->acceptThreads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;

    .line 60
    invoke-virtual {v2}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->stop()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->isStopped:Z

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
