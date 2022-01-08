.class public Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;
.super Ljava/lang/Object;
.source "SegWitBitcoinAddressCreator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/address/AddressCreator;


# instance fields
.field private networkParameters:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method private calcSegWitAddress([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0x0014%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bitcoinj/core/Address;->fromP2SHHash(Lorg/bitcoinj/core/NetworkParameters;[B)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v0, p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lorg/bitcoinj/core/DumpedPrivateKey;->getKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->calcSegWitAddress([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "segwit_needs_compress_public_key"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromPrivateKey([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-static {p1, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->calcSegWitAddress([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPrivateKey(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/Address;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "0x0014%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->networkParameters:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bitcoinj/core/Address;->fromP2SHHash(Lorg/bitcoinj/core/NetworkParameters;[B)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1
.end method
