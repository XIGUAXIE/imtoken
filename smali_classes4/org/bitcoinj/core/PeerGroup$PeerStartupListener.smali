.class Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;
.implements Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerStartupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method private constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    return-void
.end method


# virtual methods
.method public onPeerConnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 0

    .line 256
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/PeerGroup;->handleNewPeer(Lorg/bitcoinj/core/Peer;)V

    return-void
.end method

.method public onPeerDisconnected(Lorg/bitcoinj/core/Peer;I)V
    .locals 1

    .line 262
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/bitcoinj/core/PeerGroup;->handlePeerDeath(Lorg/bitcoinj/core/Peer;Ljava/lang/Throwable;)V

    return-void
.end method
