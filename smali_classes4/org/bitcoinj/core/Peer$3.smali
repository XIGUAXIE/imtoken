.class Lorg/bitcoinj/core/Peer$3;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->connectionClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$3;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$3;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 423
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$3;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$3;->this$0:Lorg/bitcoinj/core/Peer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;->onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V

    return-void
.end method
