.class public Lcom/subgraph/orchid/sockets/OrchidSocketFactory;
.super Ljavax/net/SocketFactory;
.source "OrchidSocketFactory.java"


# instance fields
.field private final exceptionOnLocalBind:Z

.field private final torClient:Lcom/subgraph/orchid/TorClient;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/TorClient;)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;-><init>(Lcom/subgraph/orchid/TorClient;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorClient;Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 26
    iput-boolean p2, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    return-void
.end method

.method private connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p2, p3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object p1
.end method

.method private createSocketInstance()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->torClient:Lcom/subgraph/orchid/TorClient;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;-><init>(Lcom/subgraph/orchid/TorClient;)V

    .line 73
    invoke-static {}, Lcom/subgraph/orchid/Tor;->isAndroidRuntime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/subgraph/orchid/sockets/AndroidSocket;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/sockets/AndroidSocket;-><init>(Lcom/subgraph/orchid/sockets/OrchidSocketImpl;)V

    return-object v1

    .line 77
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory$1;-><init>(Lcom/subgraph/orchid/sockets/OrchidSocketFactory;Ljava/net/SocketImpl;)V

    return-object v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 44
    iget-boolean p3, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    if-nez p3, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot bind to local address"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocketInstance()Ljava/net/Socket;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->connectOrchidSocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-boolean p3, p0, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->exceptionOnLocalBind:Z

    if-nez p3, :cond_0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot bind to local address"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
