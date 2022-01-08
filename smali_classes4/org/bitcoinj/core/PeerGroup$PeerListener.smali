.class Lorg/bitcoinj/core/PeerGroup$PeerListener;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/GetDataEventListener;
.implements Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 236
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {p1, p2}, Lorg/bitcoinj/core/PeerGroup;->access$000(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .locals 2
    .param p3    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object p1, p1, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    iget-object p1, p1, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {p1}, Lorg/bitcoinj/core/AbstractBlockChain;->getFalsePositiveRate()D

    move-result-wide p1

    .line 243
    iget-object p3, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {p3}, Lorg/bitcoinj/core/PeerGroup;->access$100(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/FilterMerger;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bitcoinj/net/FilterMerger;->getBloomFilterFPRate()D

    move-result-wide p3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double p3, p3, v0

    cmpl-double v0, p1, p3

    if-lez v0, :cond_2

    .line 246
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lorg/bitcoinj/core/PeerGroup;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "Force update Bloom filter due to high false positive rate ({} vs {})"

    invoke-interface {v0, p3, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup$PeerListener;->this$0:Lorg/bitcoinj/core/PeerGroup;

    sget-object p2, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->FORCE_SEND_FOR_REFRESH:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    return-void
.end method
