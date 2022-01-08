.class public interface abstract Lorg/bitcoinj/wallet/KeyBag;
.super Ljava/lang/Object;
.source "KeyBag.java"


# virtual methods
.method public abstract findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
