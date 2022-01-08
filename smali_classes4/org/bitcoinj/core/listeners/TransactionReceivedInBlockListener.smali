.class public interface abstract Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;
.super Ljava/lang/Object;
.source "TransactionReceivedInBlockListener.java"


# virtual methods
.method public abstract notifyTransactionIsInBlock(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method

.method public abstract receiveFromBlock(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method
