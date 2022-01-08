.class Lorg/bitcoinj/core/Peer$8;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->downloadDependenciesInternal(IILorg/bitcoinj/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Lorg/bitcoinj/core/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$depth:I

.field final synthetic val$marker:Ljava/lang/Object;

.field final synthetic val$maxDepth:I

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$rootTxHash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;IILjava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$8;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$8;->val$rootTxHash:Lorg/bitcoinj/core/Sha256Hash;

    iput-object p3, p0, Lorg/bitcoinj/core/Peer$8;->val$results:Ljava/util/List;

    iput p4, p0, Lorg/bitcoinj/core/Peer$8;->val$depth:I

    iput p5, p0, Lorg/bitcoinj/core/Peer$8;->val$maxDepth:I

    iput-object p6, p0, Lorg/bitcoinj/core/Peer$8;->val$marker:Ljava/lang/Object;

    iput-object p7, p0, Lorg/bitcoinj/core/Peer$8;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$8;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 927
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer$8;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 932
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 933
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/bitcoinj/core/Transaction;

    if-nez v5, :cond_1

    goto :goto_0

    .line 935
    :cond_1
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bitcoinj/core/Peer$8;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/bitcoinj/core/Peer$8;->val$rootTxHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "{}: Downloaded dependency of {}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$8;->val$results:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    iget v1, p0, Lorg/bitcoinj/core/Peer$8;->val$depth:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/bitcoinj/core/Peer$8;->val$maxDepth:I

    if-ge v2, v3, :cond_0

    .line 939
    iget-object v2, p0, Lorg/bitcoinj/core/Peer$8;->this$0:Lorg/bitcoinj/core/Peer;

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lorg/bitcoinj/core/Peer$8;->val$marker:Ljava/lang/Object;

    iget-object v7, p0, Lorg/bitcoinj/core/Peer$8;->val$results:Ljava/util/List;

    invoke-virtual/range {v2 .. v7}, Lorg/bitcoinj/core/Peer;->downloadDependenciesInternal(IILorg/bitcoinj/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 941
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 943
    iget-object p1, p0, Lorg/bitcoinj/core/Peer$8;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/bitcoinj/core/Peer$8;->val$marker:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 947
    :cond_3
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lorg/bitcoinj/core/Peer$8$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/Peer$8$1;-><init>(Lorg/bitcoinj/core/Peer$8;)V

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    :goto_1
    return-void
.end method
