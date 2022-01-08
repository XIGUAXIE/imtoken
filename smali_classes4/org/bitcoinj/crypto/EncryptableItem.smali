.class public interface abstract Lorg/bitcoinj/crypto/EncryptableItem;
.super Ljava/lang/Object;
.source "EncryptableItem.java"


# virtual methods
.method public abstract getCreationTimeSeconds()J
.end method

.method public abstract getEncryptedData()Lorg/bitcoinj/crypto/EncryptedData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
.end method

.method public abstract getSecretBytes()[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract isEncrypted()Z
.end method
