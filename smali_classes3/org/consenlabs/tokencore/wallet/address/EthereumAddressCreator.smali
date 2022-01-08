.class public Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;
.super Ljava/lang/Object;
.source "EthereumAddressCreator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/address/AddressCreator;


# static fields
.field private static final ADDRESS_LENGTH:I = 0x14

.field private static final ADDRESS_LENGTH_IN_HEX:I = 0x28

.field private static final PUBLIC_KEY_LENGTH_IN_HEX:I = 0x80

.field private static final PUBLIC_KEY_SIZE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fromECKey(Lorg/bitcoinj/core/ECKey;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    .line 49
    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private publicKeyToAddress([B)Ljava/lang/String;
    .locals 2

    .line 30
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p1

    .line 31
    array-length v0, p1

    add-int/lit8 v0, v0, -0x14

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 32
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromECKey(Lorg/bitcoinj/core/ECKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPrivateKey([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p1, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromECKey(Lorg/bitcoinj/core/ECKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromPublicKey(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    .line 25
    invoke-static {p1, v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
