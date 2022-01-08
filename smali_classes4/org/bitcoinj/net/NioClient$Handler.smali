.class Lorg/bitcoinj/net/NioClient$Handler;
.super Lorg/bitcoinj/net/AbstractTimeoutHandler;
.source "NioClient.java"

# interfaces
.implements Lorg/bitcoinj/net/StreamConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/NioClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field private closeCalled:Z

.field private closeOnOpen:Z

.field final synthetic this$0:Lorg/bitcoinj/net/NioClient;

.field private final upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

.field private writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/NioClient;Lorg/bitcoinj/net/StreamConnection;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/bitcoinj/net/NioClient$Handler;->this$0:Lorg/bitcoinj/net/NioClient;

    invoke-direct {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;-><init>()V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeOnOpen:Z

    .line 41
    iput-boolean p1, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeCalled:Z

    .line 43
    iput-object p2, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    .line 44
    invoke-virtual {p0, p3}, Lorg/bitcoinj/net/NioClient$Handler;->setSocketTimeout(I)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/NioClient$Handler;->setTimeoutEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/bitcoinj/net/NioClient$Handler;)Lorg/bitcoinj/net/MessageWriteTarget;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/bitcoinj/net/NioClient$Handler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized connectionClosed()V
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->this$0:Lorg/bitcoinj/net/NioClient;

    invoke-static {v0}, Lorg/bitcoinj/net/NioClient;->access$000(Lorg/bitcoinj/net/NioClient;)Lorg/bitcoinj/net/NioClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/net/NioClientManager;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 57
    iget-boolean v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeCalled:Z

    .line 59
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->connectionClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionOpened()V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeOnOpen:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->connectionOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->getMaxMessageSize()I

    move-result v0

    return v0
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0, p1}, Lorg/bitcoinj/net/StreamConnection;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeOnOpen:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/bitcoinj/net/MessageWriteTarget;->closeConnection()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lorg/bitcoinj/net/NioClient$Handler;->setTimeoutEnabled(Z)V

    .line 80
    iput-object p1, p0, Lorg/bitcoinj/net/NioClient$Handler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    .line 81
    iget-object v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->upstreamConnection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0, p1}, Lorg/bitcoinj/net/StreamConnection;->setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized timeoutOccurred()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 50
    :try_start_0
    iput-boolean v0, p0, Lorg/bitcoinj/net/NioClient$Handler;->closeOnOpen:Z

    .line 51
    invoke-virtual {p0}, Lorg/bitcoinj/net/NioClient$Handler;->connectionClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
