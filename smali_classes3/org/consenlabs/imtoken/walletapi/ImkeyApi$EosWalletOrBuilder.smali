.class public interface abstract Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWalletOrBuilder;
.super Ljava/lang/Object;
.source "ImkeyApi.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EosWalletOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAddressBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getChainType()Ljava/lang/String;
.end method

.method public abstract getChainTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicKeys(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
.end method

.method public abstract getPublicKeysCount()I
.end method

.method public abstract getPublicKeysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublicKeysOrBuilder(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;
.end method

.method public abstract getPublicKeysOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method
