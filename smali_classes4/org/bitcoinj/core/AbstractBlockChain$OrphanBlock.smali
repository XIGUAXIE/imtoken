.class Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/AbstractBlockChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrphanBlock"
.end annotation


# instance fields
.field final block:Lorg/bitcoinj/core/Block;

.field final filteredTxHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field final filteredTxn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/bitcoinj/core/AbstractBlockChain;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/Block;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .param p2    # Lorg/bitcoinj/core/Block;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v2, p2, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v2, :cond_1

    if-nez v1, :cond_3

    :cond_1
    iget-object v2, p2, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 117
    iput-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->block:Lorg/bitcoinj/core/Block;

    .line 118
    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->filteredTxHashes:Ljava/util/List;

    .line 119
    iput-object p4, p0, Lorg/bitcoinj/core/AbstractBlockChain$OrphanBlock;->filteredTxn:Ljava/util/Map;

    return-void
.end method
