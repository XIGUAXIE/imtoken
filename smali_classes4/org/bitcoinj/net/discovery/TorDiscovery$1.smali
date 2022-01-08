.class Lorg/bitcoinj/net/discovery/TorDiscovery$1;
.super Ljava/lang/Object;
.source "TorDiscovery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/subgraph/orchid/Circuit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/discovery/TorDiscovery;

.field final synthetic val$router:Lcom/subgraph/orchid/Router;


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/discovery/TorDiscovery;Lcom/subgraph/orchid/Router;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$1;->this$0:Lorg/bitcoinj/net/discovery/TorDiscovery;

    iput-object p2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$1;->val$router:Lcom/subgraph/orchid/Router;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/subgraph/orchid/Circuit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$1;->this$0:Lorg/bitcoinj/net/discovery/TorDiscovery;

    invoke-static {v0}, Lorg/bitcoinj/net/discovery/TorDiscovery;->access$000(Lorg/bitcoinj/net/discovery/TorDiscovery;)Lcom/subgraph/orchid/TorClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->getCircuitManager()Lcom/subgraph/orchid/CircuitManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/subgraph/orchid/Router;

    iget-object v2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$1;->val$router:Lcom/subgraph/orchid/Router;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/CircuitManager;->openInternalCircuitTo(Ljava/util/List;)Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/bitcoinj/net/discovery/TorDiscovery$1;->call()Lcom/subgraph/orchid/Circuit;

    move-result-object v0

    return-object v0
.end method
