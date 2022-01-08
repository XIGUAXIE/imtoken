.class public abstract Lorg/bitcoinj/core/listeners/AbstractPeerConnectionEventListener;
.super Ljava/lang/Object;
.source "AbstractPeerConnectionEventListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectionEventListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    return-void
.end method

.method public onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    return-void
.end method

.method public onPeersDiscovered(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
