.class Lorg/bitcoinj/core/Peer$8$1;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer$8;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bitcoinj/core/Peer$8;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer$8;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$8$1;->this$1:Lorg/bitcoinj/core/Peer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 955
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$8$1;->this$1:Lorg/bitcoinj/core/Peer$8;

    iget-object v0, v0, Lorg/bitcoinj/core/Peer$8;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 947
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer$8$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 950
    iget-object p1, p0, Lorg/bitcoinj/core/Peer$8$1;->this$1:Lorg/bitcoinj/core/Peer$8;

    iget-object p1, p1, Lorg/bitcoinj/core/Peer$8;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/bitcoinj/core/Peer$8$1;->this$1:Lorg/bitcoinj/core/Peer$8;

    iget-object v0, v0, Lorg/bitcoinj/core/Peer$8;->val$marker:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
