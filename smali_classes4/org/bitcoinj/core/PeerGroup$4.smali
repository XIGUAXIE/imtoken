.class Lorg/bitcoinj/core/PeerGroup$4;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bitcoinj/core/PeerAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$4;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 421
    check-cast p1, Lorg/bitcoinj/core/PeerAddress;

    check-cast p2, Lorg/bitcoinj/core/PeerAddress;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/PeerGroup$4;->compare(Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/PeerAddress;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/PeerAddress;)I
    .locals 2

    .line 425
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$4;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object v0, v0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 426
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$4;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$400(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ExponentialBackoff;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$4;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v1}, Lorg/bitcoinj/core/PeerGroup;->access$400(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/utils/ExponentialBackoff;->compareTo(Lorg/bitcoinj/utils/ExponentialBackoff;)I

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p1}, Lorg/bitcoinj/core/PeerAddress;->getPort()I

    move-result p1

    invoke-virtual {p2}, Lorg/bitcoinj/core/PeerAddress;->getPort()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    :cond_0
    return v0
.end method
