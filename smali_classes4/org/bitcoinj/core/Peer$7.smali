.class Lorg/bitcoinj/core/Peer$7;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->downloadDependencies(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$results:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/LinkedList;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$7;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$7;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lorg/bitcoinj/core/Peer$7;->val$results:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$7;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 886
    iget-object p1, p0, Lorg/bitcoinj/core/Peer$7;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/bitcoinj/core/Peer$7;->val$results:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
