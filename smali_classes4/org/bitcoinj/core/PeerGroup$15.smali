.class Lorg/bitcoinj/core/PeerGroup$15;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->waitForPeersWithServiceMask(II)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$mask:I

.field final synthetic val$numPeers:I


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;IILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$15;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput p2, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$mask:I

    iput p3, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$numPeers:I

    iput-object p4, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 1

    .line 2069
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$15;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget p2, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$mask:I

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/PeerGroup;->findPeersWithServiceMask(I)Ljava/util/List;

    move-result-object p1

    .line 2070
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$numPeers:I

    if-lt p2, v0, :cond_0

    .line 2071
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup$15;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2072
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$15;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/PeerGroup;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    :cond_0
    return-void
.end method
