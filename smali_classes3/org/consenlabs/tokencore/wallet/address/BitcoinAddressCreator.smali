.class public Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;
.super Ljava/lang/Object;
.source "BitcoinAddressCreator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/address/AddressCreator;


# instance fields
.field private networkParameters:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method


# virtual methods
.method public fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v0, p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->getKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 24
    :goto_1
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPrivateKey([B)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
