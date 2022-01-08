.class public interface abstract Lorg/bitcoinj/store/FullPrunedBlockStore;
.super Ljava/lang/Object;
.source "FullPrunedBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/BlockStore;
.implements Lorg/bitcoinj/core/UTXOProvider;


# virtual methods
.method public abstract abortDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract addUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract beginDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract commitDatabaseBatchWrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getOnceUndoableStoredBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getTransactionOutput(Lorg/bitcoinj/core/Sha256Hash;J)Lorg/bitcoinj/core/UTXO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getUndoBlock(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredUndoableBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getVerifiedChainHead()Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract hasUnspentOutputs(Lorg/bitcoinj/core/Sha256Hash;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract put(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredUndoableBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract removeUnspentTransactionOutput(Lorg/bitcoinj/core/UTXO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract setVerifiedChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method
