.class Lorg/bitcoinj/core/PeerGroup$8;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->startAsync()Lcom/google/common/util/concurrent/ListenableFuture;
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

    .line 1135
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1139
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Starting ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Starting Tor/Orchid ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/TorClient;->waitUntilReady(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :try_start_2
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Tor ready"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1150
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1600(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/bitcoinj/net/ClientConnectionManager;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 1151
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1600(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/bitcoinj/net/ClientConnectionManager;->awaitRunning()V

    .line 1152
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1700(Lorg/bitcoinj/core/PeerGroup;)V

    .line 1153
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$8;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$1800(Lorg/bitcoinj/core/PeerGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1155
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception when starting up"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
