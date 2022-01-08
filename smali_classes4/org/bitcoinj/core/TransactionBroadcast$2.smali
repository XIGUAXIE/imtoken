.class Lorg/bitcoinj/core/TransactionBroadcast$2;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TransactionBroadcast;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/TransactionBroadcast;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreMessageReceived(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Message;)Lorg/bitcoinj/core/Message;
    .locals 6

    .line 94
    instance-of v0, p2, Lorg/bitcoinj/core/RejectMessage;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p2

    check-cast v0, Lorg/bitcoinj/core/RejectMessage;

    .line 96
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bitcoinj/core/RejectMessage;->getRejectedObjectHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$200(Lorg/bitcoinj/core/TransactionBroadcast;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$200(Lorg/bitcoinj/core/TransactionBroadcast;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 99
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$300(Lorg/bitcoinj/core/TransactionBroadcast;)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    int-to-long v3, p1

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 101
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Threshold for considering broadcast rejected has been reached ({}/{})"

    invoke-interface {v3, v2, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$500(Lorg/bitcoinj/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    new-instance v1, Lorg/bitcoinj/core/RejectedTransactionException;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v2}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/core/RejectedTransactionException;-><init>(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/RejectMessage;)V

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 103
    iget-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$2;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$600(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/PeerGroup;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    :cond_0
    return-object p2
.end method
