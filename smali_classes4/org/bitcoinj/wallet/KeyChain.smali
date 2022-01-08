.class public interface abstract Lorg/bitcoinj/wallet/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
.end method

.method public abstract addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract getEarliestKeyCreationTime()J
.end method

.method public abstract getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
.end method

.method public abstract getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/ECKey;
.end method

.method public abstract getKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "I)",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasKey(Lorg/bitcoinj/core/ECKey;)Z
.end method

.method public abstract numBloomFilterEntries()I
.end method

.method public abstract numKeys()I
.end method

.method public abstract removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z
.end method

.method public abstract serializeToProtobuf()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end method
