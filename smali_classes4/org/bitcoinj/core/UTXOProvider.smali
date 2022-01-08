.class public interface abstract Lorg/bitcoinj/core/UTXOProvider;
.super Ljava/lang/Object;
.source "UTXOProvider.java"


# virtual methods
.method public abstract getChainHeadHeight()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation
.end method

.method public abstract getOpenTransactionOutputs(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation
.end method

.method public abstract getParams()Lorg/bitcoinj/core/NetworkParameters;
.end method
