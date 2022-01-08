.class public interface abstract Lorg/bitcoinj/store/BlockStore;
.super Ljava/lang/Object;
.source "BlockStore.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract getParams()Lorg/bitcoinj/core/NetworkParameters;
.end method

.method public abstract put(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public abstract setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method
