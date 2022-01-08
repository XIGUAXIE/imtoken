.class public interface abstract Lorg/bitcoinj/crypto/KeyCrypter;
.super Ljava/lang/Object;
.source "KeyCrypter.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation
.end method

.method public abstract getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
.end method
