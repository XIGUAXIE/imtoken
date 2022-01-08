.class Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Lorg/bitcoinj/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfidenceChange"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TransactionBroadcast;


# direct methods
.method private constructor <init>(Lorg/bitcoinj/core/TransactionBroadcast;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/core/TransactionBroadcast;Lorg/bitcoinj/core/TransactionBroadcast$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;)V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 6

    .line 184
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$200(Lorg/bitcoinj/core/TransactionBroadcast;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v3

    iget-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p2}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    const/4 p2, 0x2

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, p2

    const/4 p2, 0x3

    if-eqz v1, :cond_1

    const-string v2, " and mined"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v5, p2

    const-string p2, "broadcastTransaction: {}:  TX {} seen by {} peers{}"

    .line 186
    invoke-interface {v4, p2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p2, v0, v1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$1000(Lorg/bitcoinj/core/TransactionBroadcast;IZ)V

    .line 192
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p2}, Lorg/bitcoinj/core/TransactionBroadcast;->access$300(Lorg/bitcoinj/core/TransactionBroadcast;)I

    move-result p2

    if-ge v0, p2, :cond_2

    if-eqz v1, :cond_3

    .line 206
    :cond_2
    invoke-static {}, Lorg/bitcoinj/core/TransactionBroadcast;->access$400()Lorg/slf4j/Logger;

    move-result-object p2

    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    const-string v1, "broadcastTransaction: {} complete"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p2}, Lorg/bitcoinj/core/TransactionBroadcast;->access$600(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object p2

    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->access$900(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bitcoinj/core/PeerGroup;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    .line 208
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/TransactionConfidence;->removeEventListener(Lorg/bitcoinj/core/TransactionConfidence$Listener;)Z

    .line 209
    iget-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p1}, Lorg/bitcoinj/core/TransactionBroadcast;->access$500(Lorg/bitcoinj/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iget-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {p2}, Lorg/bitcoinj/core/TransactionBroadcast;->access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
