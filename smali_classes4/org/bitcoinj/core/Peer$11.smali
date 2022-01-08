.class Lorg/bitcoinj/core/Peer$11;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->maybeRestartChainDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;)V
    .locals 0

    .line 1757
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1760
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    iget-object v0, v0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1761
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-static {v0}, Lorg/bitcoinj/core/Peer;->access$300(Lorg/bitcoinj/core/Peer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance v0, Lorg/bitcoinj/core/GetDataMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-static {v1}, Lorg/bitcoinj/core/Peer;->access$400(Lorg/bitcoinj/core/Peer;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 1763
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-static {v1}, Lorg/bitcoinj/core/Peer;->access$300(Lorg/bitcoinj/core/Peer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Sha256Hash;

    .line 1764
    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/GetDataMessage;->addFilteredBlock(Lorg/bitcoinj/core/Sha256Hash;)V

    goto :goto_0

    .line 1765
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Peer;->access$302(Lorg/bitcoinj/core/Peer;Ljava/util/List;)Ljava/util/List;

    .line 1766
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    iget-object v1, v1, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1768
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Restarting chain download"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1769
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 1773
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$11;->this$0:Lorg/bitcoinj/core/Peer;

    new-instance v1, Lorg/bitcoinj/core/Ping;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v2, v2, v4

    double-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/Ping;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    return-void
.end method
