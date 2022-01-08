.class public interface abstract Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;
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
    name = "ExchangeRateOrBuilder"
.end annotation


# virtual methods
.method public abstract getCoinValue()J
.end method

.method public abstract getFiatCurrencyCode()Ljava/lang/String;
.end method

.method public abstract getFiatCurrencyCodeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFiatValue()J
.end method

.method public abstract hasCoinValue()Z
.end method

.method public abstract hasFiatCurrencyCode()Z
.end method

.method public abstract hasFiatValue()Z
.end method
