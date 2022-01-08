.class public interface abstract Lorg/bitcoinj/net/ClientConnectionManager;
.super Ljava/lang/Object;
.source "ClientConnectionManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# virtual methods
.method public abstract closeConnections(I)V
.end method

.method public abstract getConnectedClientCount()I
.end method

.method public abstract openConnection(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/bitcoinj/net/StreamConnection;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end method
