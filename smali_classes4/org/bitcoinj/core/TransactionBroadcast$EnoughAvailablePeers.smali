.class Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnoughAvailablePeers"
.end annotation


# instance fields
.field private context:Lorg/bitcoinj/core/Context;

.field final synthetic this$0:Lorg/bitcoinj/core/TransactionBroadcast;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcast;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->context:Lorg/bitcoinj/core/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 127
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->context:Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/bitcoinj/core/Context;->propagate(Lorg/bitcoinj/core/Context;)V

    .line 137
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$600(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$700(Lorg/bitcoinj/core/TransactionBroadcast;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    new-instance v3, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;

    iget-object v4, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;Lorg/bitcoinj/core/TransactionBroadcast$1;)V

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/TransactionConfidence;->addEventListener(Lorg/bitcoinj/core/TransactionConfidence$Listener;)V

    .line 150
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v3, 0x1

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 152
    iget-object v3, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v3, v5}, Lorg/bitcoinj/core/TransactionBroadcast;->access$302(Lorg/bitcoinj/core/TransactionBroadcast;I)I

    .line 153
    sget-object v3, Lorg/bitcoinj/core/TransactionBroadcast;->random:Ljava/util/Random;

    invoke-static {v0, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    const/4 v3, 0x0

    .line 154
    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v6}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "broadcastTransaction: We have {} peers, adding {} to the memory pool"

    invoke-interface {v5, v7, v1, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v3}, Lorg/bitcoinj/core/TransactionBroadcast;->access$300(Lorg/bitcoinj/core/TransactionBroadcast;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x2

    const-string v4, ","

    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v3, "Sending to {} peers, will wait for {}, sending to: {}"

    invoke-interface {v1, v3, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 159
    :try_start_0
    iget-object v3, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v3}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 163
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "Caught exception sending to {}"

    invoke-interface {v4, v5, v1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$700(Lorg/bitcoinj/core/TransactionBroadcast;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 171
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$600(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$900(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    .line 172
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$500(Lorg/bitcoinj/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
