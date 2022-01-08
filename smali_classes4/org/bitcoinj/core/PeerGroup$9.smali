.class Lorg/bitcoinj/core/PeerGroup$9;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->stopAsync()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1179
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Stopping ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1600(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/bitcoinj/net/ClientConnectionManager;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 1182
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1600(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/bitcoinj/net/ClientConnectionManager;->awaitTerminated()V

    .line 1183
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1900(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/net/discovery/PeerDiscovery;

    .line 1184
    invoke-interface {v1}, Lorg/bitcoinj/net/discovery/PeerDiscovery;->shutdown()V

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->stop()V

    .line 1189
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$9;->this$0:Lorg/bitcoinj/core/PeerGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->access$602(Lorg/bitcoinj/core/PeerGroup;Z)Z

    .line 1190
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Stopped."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1192
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception when shutting down"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
