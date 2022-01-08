.class Lorg/bitcoinj/core/PeerGroup$14;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->waitForPeersOfVersion(IJ)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$numPeers:I

.field final synthetic val$protocolVersion:J


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;JILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 2022
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$14;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iput-wide p2, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$protocolVersion:J

    iput p4, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$numPeers:I

    iput-object p5, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 2

    .line 2025
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$14;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-wide v0, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$protocolVersion:J

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/PeerGroup;->findPeersOfAtLeastVersion(J)Ljava/util/List;

    move-result-object p1

    .line 2026
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$numPeers:I

    if-lt p2, v0, :cond_0

    .line 2027
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup$14;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2028
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$14;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/PeerGroup;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    :cond_0
    return-void
.end method
