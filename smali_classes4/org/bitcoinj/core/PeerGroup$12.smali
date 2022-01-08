.class Lorg/bitcoinj/core/PeerGroup$12;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->setupPinging()V
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

    .line 1667
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1671
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1672
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$2400(Lorg/bitcoinj/core/PeerGroup;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1674
    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableScheduledFuture;->cancel(Z)Z

    .line 1675
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->access$2402(Lorg/bitcoinj/core/PeerGroup;Lcom/google/common/util/concurrent/ListenableScheduledFuture;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    :cond_0
    return-void

    .line 1679
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 1680
    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v2

    iget v2, v2, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup$12;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v3, v3, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v4, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v3

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 1682
    :cond_2
    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer;->ping()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1685
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Exception in ping loop"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
