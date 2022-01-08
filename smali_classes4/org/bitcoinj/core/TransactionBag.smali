.class public interface abstract Lorg/bitcoinj/core/TransactionBag;
.super Ljava/lang/Object;
.source "TransactionBag.java"


# virtual methods
.method public abstract getTransactionPool(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/WalletTransaction$Pool;",
            ")",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPayToScriptHashMine([B)Z
.end method

.method public abstract isPubKeyHashMine([B)Z
.end method

.method public abstract isPubKeyMine([B)Z
.end method

.method public abstract isWatchedScript(Lorg/bitcoinj/script/Script;)Z
.end method
