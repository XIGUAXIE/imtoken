.class Lorg/bitcoinj/core/Peer$2;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$2;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$2;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-static {v0}, Lorg/bitcoinj/core/Peer;->access$000(Lorg/bitcoinj/core/Peer;)V

    return-void
.end method
