.class public Lorg/bitcoinj/jni/NativePeerEventListener;
.super Ljava/lang/Object;
.source "NativePeerEventListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectionEventListener;
.implements Lorg/bitcoinj/core/listeners/PeerDataEventListener;
.implements Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getData(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;
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
.end method

.method public native onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .param p3    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native onChainDownloadStarted(Lorg/bitcoinj/core/Peer;I)V
.end method

.method public native onPeerConnected(Lorg/bitcoinj/core/Peer;I)V
.end method

.method public native onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V
.end method

.method public native onPeersDiscovered(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPreMessageReceived(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Message;)Lorg/bitcoinj/core/Message;
.end method

.method public native onTransaction(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Transaction;)V
.end method
