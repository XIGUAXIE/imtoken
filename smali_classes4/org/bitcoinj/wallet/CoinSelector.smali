.class public interface abstract Lorg/bitcoinj/wallet/CoinSelector;
.super Ljava/lang/Object;
.source "CoinSelector.java"


# virtual methods
.method public abstract select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;)",
            "Lorg/bitcoinj/wallet/CoinSelection;"
        }
    .end annotation
.end method
