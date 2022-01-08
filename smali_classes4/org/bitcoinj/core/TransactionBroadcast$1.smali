.class final Lorg/bitcoinj/core/TransactionBroadcast$1;
.super Lorg/bitcoinj/core/TransactionBroadcast;
.source "TransactionBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/TransactionBroadcast;->createMockBroadcast(Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)Lorg/bitcoinj/core/TransactionBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 70
    iput-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast;-><init>(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionBroadcast$1;)V

    return-void
.end method


# virtual methods
.method public broadcast()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public future()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method
