.class Lorg/bitcoinj/core/PeerGroup$16;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;I)Lorg/bitcoinj/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$broadcast:Lorg/bitcoinj/core/TransactionBroadcast;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/TransactionBroadcast;)V
    .locals 0

    .line 2170
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$16;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup$16;->val$broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 2194
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$16;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {p1}, Lorg/bitcoinj/core/PeerGroup;->access$2800(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$16;->val$broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2170
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup$16;->onSuccess(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/Transaction;)V
    .locals 3

    .line 2173
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$16;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$2800(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$16;->val$broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2178
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$16;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$2900(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/Wallet;

    const/4 v2, 0x0

    .line 2184
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2186
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method
