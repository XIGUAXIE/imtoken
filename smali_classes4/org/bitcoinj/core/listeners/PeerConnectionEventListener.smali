.class public interface abstract Lorg/bitcoinj/core/listeners/PeerConnectionEventListener;
.super Ljava/lang/Object;
.source "PeerConnectionEventListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;
.implements Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;
.implements Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V
.end method
