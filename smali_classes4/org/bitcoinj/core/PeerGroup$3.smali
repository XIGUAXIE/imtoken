.class Lorg/bitcoinj/core/PeerGroup$3;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
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

    .line 182
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$3;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoinsReceived(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 1

    .line 207
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/core/TransactionOutput;

    .line 208
    invoke-virtual {p4}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 209
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object p1

    sget-object p2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne p1, p2, :cond_1

    .line 210
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$3;->this$0:Lorg/bitcoinj/core/PeerGroup;

    sget-object p2, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$3;->this$0:Lorg/bitcoinj/core/PeerGroup;

    sget-object p2, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->DONT_SEND:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_0
    return-void
.end method
