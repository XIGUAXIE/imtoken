.class public Lcom/subgraph/orchid/sockets/OrchidSocketImpl;
.super Ljava/net/SocketImpl;
.source "OrchidSocketImpl.java"


# instance fields
.field private stream:Lcom/subgraph/orchid/Stream;

.field private streamLock:Ljava/util/concurrent/locks/Lock;

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    const-string v0, "stream"

    .line 19
    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    .line 23
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 24
    new-instance p1, Ljava/io/FileDescriptor;

    invoke-direct {p1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private addressToName(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doConnect(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    .line 88
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-virtual {v0, p1, p2}, Lcom/subgraph/orchid/TorClient;->openExitStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/OpenFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    iget-object p2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    iget-object p2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    invoke-interface {p1}, Lcom/subgraph/orchid/Stream;->close()V

    goto :goto_0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    .line 111
    iget-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Ljava/net/ConnectException;

    invoke-virtual {p1}, Lcom/subgraph/orchid/OpenFailedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 99
    :catch_1
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    .line 96
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 97
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "connect() interrupted"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStream()Lcom/subgraph/orchid/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 134
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->getStream()Lcom/subgraph/orchid/Stream;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->stream:Lcom/subgraph/orchid/Stream;

    .line 162
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->streamLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    :cond_0
    return-void
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    instance-of p2, p1, Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_0

    .line 68
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 70
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->addressToName(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->doConnect(Ljava/lang/String;I)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported address type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected create(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->getStream()Lcom/subgraph/orchid/Stream;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 35
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2

    :cond_2
    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->getStream()Lcom/subgraph/orchid/Stream;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected listen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected sendUrgentData(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method protected shutdownInput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected shutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
