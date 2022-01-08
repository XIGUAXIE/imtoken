.class Lorg/bitcoinj/core/PeerGroup$2;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$2;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeysAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$2;->this$0:Lorg/bitcoinj/core/PeerGroup;

    sget-object v0, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
