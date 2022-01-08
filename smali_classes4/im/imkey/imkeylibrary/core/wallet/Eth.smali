.class public Lim/imkey/imkeylibrary/core/wallet/Eth;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "Eth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    return-void
.end method

.method private static dataToBytes(Ljava/lang/String;)[B
    .locals 1

    .line 199
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->isValidHex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 202
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public displayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Eth;->getAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->checkedEthAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->ethCoinReg([B)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/Eth;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-object p1
.end method

.method public ecSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 123
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Eth;->selectApplet()V

    .line 126
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Eth;->dataToBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 129
    array-length v5, p2

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    array-length v5, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 130
    invoke-static {v4, p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 129
    invoke-static {v1, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v1

    .line 133
    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v4

    .line 134
    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v4

    new-array v5, v0, [B

    aput-byte v2, v5, v2

    new-array v0, v0, [B

    .line 135
    array-length v6, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    invoke-static {v0, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v5, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 136
    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 139
    invoke-static {p1, v2}, Lim/imkey/imkeylibrary/core/Apdu;->ethXpub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0, v1}, Lim/imkey/imkeylibrary/core/wallet/Eth;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x82

    .line 144
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->checkedEthAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 147
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v6, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 148
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/core/Apdu;->ethMsgPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    .line 149
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 150
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x78

    invoke-virtual {v6, v7, v8}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->ethMsgSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Eth;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 p3, 0x42

    .line 158
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, p3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p3}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p3

    .line 164
    new-instance v1, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    .line 165
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-ge v0, v5, :cond_2

    .line 169
    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-static {v0, p1, v3, v2}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1b

    int-to-byte p2, v0

    .line 183
    iget-object p3, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v0, 0x20

    invoke-static {p3, v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p3

    .line 184
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 186
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-direct {v0, p2, p3, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_address_mismatch_with_path"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Eth;->selectApplet()V

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/Eth;->getEthXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/16 v1, 0x82

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Eth;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F657468"

    return-object v0
.end method

.method public signPersonalMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 48
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/Eth;->selectApplet()V

    .line 51
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/wallet/Eth;->dataToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 52
    array-length v0, p2

    .line 53
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "\u0019Ethereum Signed Message:\n%d"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 54
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 55
    invoke-static {v0, p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p2

    new-array v0, v2, [B

    aput-byte v2, v0, v4

    const/4 v1, 0x2

    new-array v3, v1, [B

    .line 58
    array-length v5, p2

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    array-length v5, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 59
    invoke-static {v3, p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    .line 58
    invoke-static {v0, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v3

    .line 63
    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v3

    new-array v5, v2, [B

    aput-byte v4, v5, v4

    new-array v2, v2, [B

    .line 64
    array-length v6, v3

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    invoke-static {v2, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v2

    invoke-static {v5, v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v2

    .line 65
    invoke-static {v2, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 68
    invoke-static {p1, v4}, Lim/imkey/imkeylibrary/core/Apdu;->ethXpub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v2}, Lim/imkey/imkeylibrary/core/wallet/Eth;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v2}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    sub-int/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x82

    .line 73
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->checkedEthAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 76
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v6, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 77
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/core/Apdu;->ethMsgPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 79
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v8, 0x78

    invoke-virtual {v6, v7, v8}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {v6}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->ethMsgSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/Eth;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 p3, 0x42

    .line 87
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p3}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p3

    .line 93
    new-instance v1, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    .line 94
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1
    const/4 v1, -0x1

    if-ge v0, v5, :cond_2

    .line 98
    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-static {v0, p1, v2, v4}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1b

    int-to-byte p2, v0

    .line 112
    iget-object p3, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v0, 0x20

    invoke-static {p3, v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p3

    .line 113
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 115
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-direct {v0, p2, p3, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_address_mismatch_with_path"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
