.class public Lim/imkey/imkeylibrary/core/wallet/transaction/EthereumSign;
.super Ljava/lang/Object;
.source "EthereumSign.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dataToBytes(Ljava/lang/String;)[B
    .locals 1

    .line 72
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->isValidHex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    .line 75
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static ecRecover(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EthereumSign;->dataToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 51
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x80

    .line 53
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 55
    new-instance v2, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    int-to-byte p1, p1

    invoke-direct {v2, p1, v1, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    .line 57
    invoke-static {p0, v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/EthereumSign;->signedMessageToKey([BLim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static signAsRecoverable([BLorg/bitcoinj/core/ECKey;)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;
    .locals 6

    .line 191
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 196
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-static {v2, v0, v3, v1}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1b

    int-to-byte p0, v2

    .line 211
    iget-object p1, v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 212
    iget-object v0, v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 214
    new-instance v1, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-direct {v1, p0, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object v1

    .line 203
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static signMessage([B[B[B[B[B[B)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 81
    array-length v5, p0

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    array-length v5, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 82
    invoke-static {v4, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 81
    invoke-static {v1, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v1

    .line 83
    invoke-static {p3, p4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p3

    invoke-static {p2, p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p2

    invoke-static {v1, p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p2

    .line 84
    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p3

    .line 85
    invoke-static {p3}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p3

    invoke-static {p3}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object p3

    new-array p4, v0, [B

    aput-byte v2, p4, v2

    new-array v0, v0, [B

    .line 86
    array-length v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-static {v0, p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p3

    invoke-static {p4, p3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p3

    .line 87
    invoke-static {p3, p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p2

    .line 89
    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->ethPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 91
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object p4

    const/16 v0, 0x78

    invoke-virtual {p4, p3, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 92
    invoke-static {p3}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 98
    new-instance p1, Lim/imkey/imkeylibrary/core/wallet/Eth;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/core/wallet/Eth;-><init>()V

    invoke-virtual {p1, p2, v2}, Lim/imkey/imkeylibrary/core/wallet/Eth;->getEthXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x82

    .line 99
    invoke-virtual {p1, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-static {p4}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->publicKeyToAddress([B)Ljava/lang/String;

    move-result-object p4

    .line 100
    invoke-static {p4}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->checkedEthAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    .line 102
    invoke-static {p5, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 104
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->ethSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object p4

    invoke-virtual {p4, p2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-static {p2}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 p4, 0x42

    .line 108
    invoke-virtual {p2, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 109
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 114
    new-instance p3, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    new-instance p4, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-direct {p4, p5, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance p5, Ljava/math/BigInteger;

    invoke-direct {p5, p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {p3, p4, p5}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p3}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p2

    .line 115
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    const/4 p3, 0x0

    :goto_1
    const/4 p4, 0x4

    const/4 p5, -0x1

    if-ge p3, p4, :cond_2

    .line 119
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p4

    invoke-static {p3, p2, p4, v2}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 120
    invoke-virtual {p4}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p4

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, -0x1

    :goto_2
    if-eq p3, p5, :cond_3

    add-int/lit8 p3, p3, 0x1b

    int-to-byte p0, p3

    .line 133
    iget-object p1, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 p3, 0x20

    invoke-static {p1, p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 134
    iget-object p2, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    .line 136
    new-instance p3, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-direct {p3, p0, p1, p2}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object p3

    .line 126
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_4
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_address_mismatch_with_path"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static signedMessageToKey([BLim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;)Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 165
    array-length v0, v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v5, "r must be 32 bytes"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 166
    array-length v0, v1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "s must be 32 bytes"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 168
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_3

    const/16 v2, 0x22

    if-gt v0, v2, :cond_3

    .line 175
    new-instance v2, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    new-instance v5, Ljava/math/BigInteger;

    .line 176
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    .line 177
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object p1

    invoke-direct {v6, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v5, v6}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 179
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    sub-int/2addr v0, v1

    .line 181
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    invoke-static {v0, v2, p0, v3}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 185
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p0

    .line 186
    array-length p1, p0

    invoke-static {p0, v4, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToBigInteger([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 183
    :cond_2
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Could not recover public key from signature"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header byte out of range: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
