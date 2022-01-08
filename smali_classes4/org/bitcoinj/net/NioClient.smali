.class public Lorg/bitcoinj/net/NioClient;
.super Ljava/lang/Object;
.source "NioClient.java"

# interfaces
.implements Lorg/bitcoinj/net/MessageWriteTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/NioClient$Handler;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final handler:Lorg/bitcoinj/net/NioClient$Handler;

.field private final manager:Lorg/bitcoinj/net/NioClientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/bitcoinj/net/NioClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/NioClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/bitcoinj/net/NioClientManager;

    invoke-direct {v0}, Lorg/bitcoinj/net/NioClientManager;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/net/NioClient;->manager:Lorg/bitcoinj/net/NioClientManager;

    .line 102
    invoke-virtual {v0}, Lorg/bitcoinj/net/NioClientManager;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 103
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient;->manager:Lorg/bitcoinj/net/NioClientManager;

    invoke-virtual {v0}, Lorg/bitcoinj/net/NioClientManager;->awaitRunning()V

    .line 104
    new-instance v0, Lorg/bitcoinj/net/NioClient$Handler;

    invoke-direct {v0, p0, p2, p3}, Lorg/bitcoinj/net/NioClient$Handler;-><init>(Lorg/bitcoinj/net/NioClient;Lorg/bitcoinj/net/StreamConnection;I)V

    iput-object v0, p0, Lorg/bitcoinj/net/NioClient;->handler:Lorg/bitcoinj/net/NioClient$Handler;

    .line 105
    iget-object p2, p0, Lorg/bitcoinj/net/NioClient;->manager:Lorg/bitcoinj/net/NioClientManager;

    invoke-virtual {p2, p1, v0}, Lorg/bitcoinj/net/NioClientManager;->openConnection(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lorg/bitcoinj/net/NioClient$1;

    invoke-direct {p3, p0, p1}, Lorg/bitcoinj/net/NioClient$1;-><init>(Lorg/bitcoinj/net/NioClient;Ljava/net/SocketAddress;)V

    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/net/NioClient;)Lorg/bitcoinj/net/NioClientManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/bitcoinj/net/NioClient;->manager:Lorg/bitcoinj/net/NioClientManager;

    return-object p0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 31
    sget-object v0, Lorg/bitcoinj/net/NioClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient;->handler:Lorg/bitcoinj/net/NioClient$Handler;

    invoke-static {v0}, Lorg/bitcoinj/net/NioClient$Handler;->access$200(Lorg/bitcoinj/net/NioClient$Handler;)Lorg/bitcoinj/net/MessageWriteTarget;

    move-result-object v0

    invoke-interface {v0}, Lorg/bitcoinj/net/MessageWriteTarget;->closeConnection()V

    return-void
.end method

.method public declared-synchronized writeBytes([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient;->handler:Lorg/bitcoinj/net/NioClient$Handler;

    invoke-static {v0}, Lorg/bitcoinj/net/NioClient$Handler;->access$200(Lorg/bitcoinj/net/NioClient$Handler;)Lorg/bitcoinj/net/MessageWriteTarget;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bitcoinj/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
