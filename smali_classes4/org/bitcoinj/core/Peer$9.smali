.class Lorg/bitcoinj/core/Peer$9;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->invokeOnBlocksDownloaded(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$block:Lorg/bitcoinj/core/Block;

.field final synthetic val$blocksLeft:I

.field final synthetic val$fb:Lorg/bitcoinj/core/FilteredBlock;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$9;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$9;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/Peer$9;->val$block:Lorg/bitcoinj/core/Block;

    iput-object p4, p0, Lorg/bitcoinj/core/Peer$9;->val$fb:Lorg/bitcoinj/core/FilteredBlock;

    iput p5, p0, Lorg/bitcoinj/core/Peer$9;->val$blocksLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1169
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$9;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$9;->this$0:Lorg/bitcoinj/core/Peer;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer$9;->val$block:Lorg/bitcoinj/core/Block;

    iget-object v3, p0, Lorg/bitcoinj/core/Peer$9;->val$fb:Lorg/bitcoinj/core/FilteredBlock;

    iget v4, p0, Lorg/bitcoinj/core/Peer$9;->val$blocksLeft:I

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;->onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V

    return-void
.end method
