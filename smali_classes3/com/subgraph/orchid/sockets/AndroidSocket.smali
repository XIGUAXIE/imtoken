.class public Lcom/subgraph/orchid/sockets/AndroidSocket;
.super Ljava/net/Socket;
.source "AndroidSocket.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

.field private final isConnectedField:Ljava/lang/reflect/Field;

.field private isSocketConnected:Z

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/subgraph/orchid/sockets/AndroidSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/sockets/OrchidSocketImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->lock:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    const-string p1, "isConnected"

    .line 21
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/sockets/AndroidSocket;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    const/4 v0, 0x0

    .line 58
    :try_start_0
    const-class v1, Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 65
    sget-object v2, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reflection access to field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in Socket class not permitted."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 62
    :catch_1
    sget-object v1, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not locate field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in Socket class, disabling Android reflection"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/subgraph/orchid/sockets/AndroidSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isSocketConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    invoke-virtual {v1, p1, p2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 35
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/AndroidSocket;->setIsConnected()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->impl:Lcom/subgraph/orchid/sockets/OrchidSocketImpl;

    invoke-virtual {p2}, Lcom/subgraph/orchid/sockets/OrchidSocketImpl;->close()V

    .line 38
    throw p1

    .line 31
    :cond_0
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected setIsConnected()V
    .locals 4

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isSocketConnected:Z

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/AndroidSocket;->isConnectedField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    sget-object v1, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access trying to reflect value into isConnected field of Socket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 50
    sget-object v1, Lcom/subgraph/orchid/sockets/AndroidSocket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument trying to reflect value into isConnected field of Socket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
