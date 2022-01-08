.class public Lorg/consenlabs/tokencore/wallet/model/BIP44Util;
.super Ljava/lang/Object;
.source "BIP44Util.java"


# static fields
.field public static final BITCOIN_MAINNET_PATH:Ljava/lang/String; = "m/44\'/0\'/0\'"

.field public static final BITCOIN_SEGWIT_MAIN_PATH:Ljava/lang/String; = "m/49\'/0\'/0\'"

.field public static final BITCOIN_SEGWIT_TESTNET_PATH:Ljava/lang/String; = "m/49\'/1\'/0\'"

.field public static final BITCOIN_TESTNET_PATH:Ljava/lang/String; = "m/44\'/1\'/0\'"

.field public static final COSMOS_PATH:Ljava/lang/String; = "m/44\'/118\'/0\'/0/0"

.field public static final EOS_LEDGER:Ljava/lang/String; = "m/44\'/194\'/0\'/0/0"

.field public static final EOS_PATH:Ljava/lang/String; = "m/44\'/194\'"

.field public static final EOS_SLIP48:Ljava/lang/String; = "m/48\'/4\'/0\'/0\'/0\',m/48\'/4\'/1\'/0\'/0\'"

.field public static final ETHEREUM_PATH:Ljava/lang/String; = "m/44\'/60\'/0\'/0/0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    const-string v5, "m"

    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x27

    if-ne v5, v7, :cond_1

    .line 27
    new-instance v5, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4, v6}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_1
    new-instance v5, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4, v2}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getBTCMnemonicPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "P2WPKH"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "m/49\'/0\'/0\'"

    goto :goto_0

    :cond_0
    const-string p0, "m/49\'/1\'/0\'"

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "m/44\'/0\'/0\'"

    goto :goto_1

    :cond_2
    const-string p0, "m/44\'/1\'/0\'"

    :goto_1
    return-object p0
.end method
