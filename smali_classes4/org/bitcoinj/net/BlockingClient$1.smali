.class Lorg/bitcoinj/net/BlockingClient$1;
.super Ljava/lang/Thread;
.source "BlockingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/net/BlockingClient;-><init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;ILjavax/net/SocketFactory;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/BlockingClient;

.field final synthetic val$clientSet:Ljava/util/Set;

.field final synthetic val$connectTimeoutMillis:I

.field final synthetic val$connection:Lorg/bitcoinj/net/StreamConnection;

.field final synthetic val$context:Lorg/bitcoinj/core/Context;

.field final synthetic val$serverAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/BlockingClient;Lorg/bitcoinj/core/Context;Ljava/util/Set;Ljava/net/SocketAddress;ILorg/bitcoinj/net/StreamConnection;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    iput-object p2, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$context:Lorg/bitcoinj/core/Context;

    iput-object p3, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iput-object p4, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    iput p5, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connectTimeoutMillis:I

    iput-object p6, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$context:Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/bitcoinj/core/Context;->propagate(Lorg/bitcoinj/core/Context;)V

    .line 74
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/bitcoinj/net/BlockingClient;->access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    iget v2, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connectTimeoutMillis:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 78
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->connectionOpened()V

    .line 79
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/bitcoinj/net/BlockingClient;->access$100(Lorg/bitcoinj/net/BlockingClient;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/bitcoinj/net/BlockingClient;->access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-static {v0, v1}, Lorg/bitcoinj/net/BlockingClient;->runReadLoop(Ljava/io/InputStream;Lorg/bitcoinj/net/StreamConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/bitcoinj/net/BlockingClient;->access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 93
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 83
    :try_start_2
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v1}, Lorg/bitcoinj/net/BlockingClient;->access$200(Lorg/bitcoinj/net/BlockingClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-static {}, Lorg/bitcoinj/net/BlockingClient;->access$300()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Error trying to open/read from connection: {}: {}"

    iget-object v3, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v1}, Lorg/bitcoinj/net/BlockingClient;->access$100(Lorg/bitcoinj/net/BlockingClient;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/bitcoinj/net/BlockingClient;->access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 93
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 94
    :goto_2
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->connectionClosed()V

    return-void

    .line 89
    :goto_3
    :try_start_4
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v1}, Lorg/bitcoinj/net/BlockingClient;->access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    nop

    .line 93
    :goto_4
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 94
    iget-object v2, p0, Lorg/bitcoinj/net/BlockingClient$1;->this$0:Lorg/bitcoinj/net/BlockingClient;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClient$1;->val$connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v1}, Lorg/bitcoinj/net/StreamConnection;->connectionClosed()V

    throw v0
.end method
