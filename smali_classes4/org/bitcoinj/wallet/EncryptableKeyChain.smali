.class public interface abstract Lorg/bitcoinj/wallet/EncryptableKeyChain;
.super Ljava/lang/Object;
.source "EncryptableKeyChain.java"

# interfaces
.implements Lorg/bitcoinj/wallet/KeyChain;


# virtual methods
.method public abstract checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
.end method

.method public abstract checkPassword(Ljava/lang/CharSequence;)Z
.end method

.method public abstract getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
.end method

.method public abstract toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
.end method

.method public abstract toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
.end method

.method public abstract toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
.end method
