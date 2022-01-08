.class Lorg/bitcoinj/core/PeerGroup$7;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->discoverPeers()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$peersDiscoveredSet:Lcom/google/common/collect/ImmutableSet;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lcom/google/common/collect/ImmutableSet;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$7;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup$7;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/PeerGroup$7;->val$peersDiscoveredSet:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1062
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$7;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$7;->val$peersDiscoveredSet:Lcom/google/common/collect/ImmutableSet;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;->onPeersDiscovered(Ljava/util/Set;)V

    return-void
.end method
