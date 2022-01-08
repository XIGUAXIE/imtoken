.class public interface abstract Lorg/bitcoinj/wallet/KeyChainFactory;
.super Ljava/lang/Object;
.source "KeyChainFactory.java"


# virtual methods
.method public abstract makeKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/crypto/KeyCrypter;Z)Lorg/bitcoinj/wallet/DeterministicKeyChain;
.end method

.method public abstract makeWatchingKeyChain(Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/wallet/Protos$Key;Lorg/bitcoinj/crypto/DeterministicKey;ZZ)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation
.end method
