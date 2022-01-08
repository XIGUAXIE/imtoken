.class public Lorg/bitcoinj/jni/NativeBlockChainListener;
.super Ljava/lang/Object;
.source "NativeBlockChainListener.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/NewBestBlockListener;
.implements Lorg/bitcoinj/core/listeners/ReorganizeListener;
.implements Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;


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
.method public native notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method public native notifyTransactionIsInBlock(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method public native receiveFromBlock(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method public native reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
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
.end method
