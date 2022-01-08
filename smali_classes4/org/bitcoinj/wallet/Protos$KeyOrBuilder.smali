.class public interface abstract Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyOrBuilder"
.end annotation


# virtual methods
.method public abstract getCreationTimestamp()J
.end method

.method public abstract getDeterministicKey()Lorg/bitcoinj/wallet/Protos$DeterministicKey;
.end method

.method public abstract getDeterministicKeyOrBuilder()Lorg/bitcoinj/wallet/Protos$DeterministicKeyOrBuilder;
.end method

.method public abstract getDeterministicSeed()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;
.end method

.method public abstract getEncryptedDataOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
.end method

.method public abstract getEncryptedDeterministicSeed()Lorg/bitcoinj/wallet/Protos$EncryptedData;
.end method

.method public abstract getEncryptedDeterministicSeedOrBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
.end method

.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getLabelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSecretBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getType()Lorg/bitcoinj/wallet/Protos$Key$Type;
.end method

.method public abstract hasCreationTimestamp()Z
.end method

.method public abstract hasDeterministicKey()Z
.end method

.method public abstract hasDeterministicSeed()Z
.end method

.method public abstract hasEncryptedData()Z
.end method

.method public abstract hasEncryptedDeterministicSeed()Z
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasPublicKey()Z
.end method

.method public abstract hasSecretBytes()Z
.end method

.method public abstract hasType()Z
.end method
