.class Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;
.super Ljava/lang/Object;
.source "SocksPortListenerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/socks/SocksPortListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptTask"
.end annotation


# instance fields
.field private final port:I

.field private final socket:Ljava/net/ServerSocket;

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->socket:Ljava/net/ServerSocket;

    .line 84
    iput p2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    return-void
.end method

.method private runAcceptLoop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->stopped:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$400(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v2, v0}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$300(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;Ljava/net/Socket;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->runAcceptLoop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v0}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$200(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 98
    :try_start_2
    iget-boolean v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->stopped:Z

    if-nez v1, :cond_0

    .line 99
    invoke-static {}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System error accepting SOCKS socket connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v0}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$200(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_4
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v2}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$100(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Set;

    move-result-object v2

    iget v3, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->this$0:Lcom/subgraph/orchid/socks/SocksPortListenerImpl;

    invoke-static {v2}, Lcom/subgraph/orchid/socks/SocksPortListenerImpl;->access$200(Lcom/subgraph/orchid/socks/SocksPortListenerImpl;)Ljava/util/Map;

    move-result-object v2

    iget v3, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->stopped:Z

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/socks/SocksPortListenerImpl$AcceptTask;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
