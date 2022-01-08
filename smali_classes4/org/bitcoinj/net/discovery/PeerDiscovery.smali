.class public interface abstract Lorg/bitcoinj/net/discovery/PeerDiscovery;
.super Ljava/lang/Object;
.source "PeerDiscovery.java"


# virtual methods
.method public abstract getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
