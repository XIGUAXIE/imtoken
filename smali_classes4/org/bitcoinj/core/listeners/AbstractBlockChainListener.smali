.class public Lorg/bitcoinj/core/listeners/AbstractBlockChainListener;
.super Ljava/lang/Object;
.source "AbstractBlockChainListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/BlockChainListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    return-void
.end method

.method public notifyTransactionIsInBlock(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public receiveFromBlock(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    return-void
.end method

.method public reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    return-void
.end method
