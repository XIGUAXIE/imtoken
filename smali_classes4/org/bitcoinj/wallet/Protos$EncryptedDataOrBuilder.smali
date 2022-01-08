.class public interface abstract Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;
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
    name = "EncryptedDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getInitialisationVector()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasEncryptedPrivateKey()Z
.end method

.method public abstract hasInitialisationVector()Z
.end method
