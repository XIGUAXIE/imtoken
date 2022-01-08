.class Lorg/bitcoinj/core/PeerGroup$13;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->handlePeerDeath(Lorg/bitcoinj/core/Peer;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$fNumConnectedPeers:I

.field final synthetic val$peer:Lorg/bitcoinj/core/Peer;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    .line 1825
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$13;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$peer:Lorg/bitcoinj/core/Peer;

    iput p4, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$fNumConnectedPeers:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1828
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$peer:Lorg/bitcoinj/core/Peer;

    iget v2, p0, Lorg/bitcoinj/core/PeerGroup$13;->val$fNumConnectedPeers:I

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;->onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V

    return-void
.end method
