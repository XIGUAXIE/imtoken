.class public Lorg/consenlabs/tokencore/wallet/address/AddressCreatorManager;
.super Ljava/lang/Object;
.source "AddressCreatorManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;ZLjava/lang/String;)Lorg/consenlabs/tokencore/wallet/address/AddressCreator;
    .locals 1

    const-string v0, "ETHEREUM"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance p0, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "BITCOIN"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 18
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object p0

    :goto_0
    const-string p1, "P2WPKH"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    new-instance p1, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    invoke-direct {p1, p0}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-object p1

    .line 22
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;

    invoke-direct {p1, p0}, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-object p1

    :cond_3
    const-string p1, "COSMOS"

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 24
    new-instance p0, Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;

    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/address/CosmosAddressCreator;-><init>()V

    return-object p0

    .line 26
    :cond_4
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "unsupported_chain"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
