.class Lorg/bitcoinj/core/PeerGroup$11;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->handleNewPeer(Lorg/bitcoinj/core/Peer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$fNewSize:I

.field final synthetic val$peer:Lorg/bitcoinj/core/Peer;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    .line 1651
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$11;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$peer:Lorg/bitcoinj/core/Peer;

    iput p4, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$fNewSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1654
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$peer:Lorg/bitcoinj/core/Peer;

    iget v2, p0, Lorg/bitcoinj/core/PeerGroup$11;->val$fNewSize:I

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;->onPeerConnected(Lorg/bitcoinj/core/Peer;I)V

    return-void
.end method
