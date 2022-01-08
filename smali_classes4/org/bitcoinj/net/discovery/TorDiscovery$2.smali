.class Lorg/bitcoinj/net/discovery/TorDiscovery$2;
.super Ljava/lang/Object;
.source "TorDiscovery.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/net/discovery/TorDiscovery;->getCircuits(JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/subgraph/orchid/Circuit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/discovery/TorDiscovery;

.field final synthetic val$doneSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/discovery/TorDiscovery;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$2;->this$0:Lorg/bitcoinj/net/discovery/TorDiscovery;

    iput-object p2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$2;->val$doneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$2;->val$doneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Lcom/subgraph/orchid/Circuit;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$2;->val$doneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lcom/subgraph/orchid/Circuit;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/discovery/TorDiscovery$2;->onSuccess(Lcom/subgraph/orchid/Circuit;)V

    return-void
.end method
