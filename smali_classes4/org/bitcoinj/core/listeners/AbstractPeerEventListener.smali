.class public abstract Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;
.super Lorg/bitcoinj/core/listeners/AbstractPeerDataEventListener;
.source "AbstractPeerEventListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectionEventListener;
.implements Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/bitcoinj/core/listeners/AbstractPeerDataEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Peer;",
            "Lorg/bitcoinj/core/GetDataMessage;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Message;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .locals 0
    .param p3    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onChainDownloadStarted(Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    return-void
.end method

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

.method public onPreMessageReceived(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Message;)Lorg/bitcoinj/core/Message;
    .locals 0

    return-object p2
.end method

.method public onTransaction(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    return-void
.end method
