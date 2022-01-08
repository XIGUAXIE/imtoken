.class public Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;
.super Ljava/lang/Object;
.source "EOSSign.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calComprsPub(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x42

    const/4 v1, 0x2

    .line 204
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    .line 205
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 207
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v2, 0x2

    .line 209
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "03"

    goto :goto_0

    :cond_0
    const-string p0, "02"

    .line 212
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static calV([BLorg/bitcoinj/core/ECKey$ECDSASignature;Ljava/lang/String;)B
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x82

    .line 217
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 220
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-static {v1, p1, v4, v0}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v4}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {p2}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1b

    add-int/2addr v1, v2

    int-to-byte p0, v1

    return p0

    .line 227
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static eosSign([BLjava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 3

    .line 180
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSECDSASigner;

    new-instance v1, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSECDSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    .line 181
    new-instance v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    const/4 p1, 0x1

    .line 182
    invoke-virtual {v0, p1, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 183
    invoke-virtual {v0, p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSECDSASigner;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object p0

    .line 184
    new-instance v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    aget-object p0, p0, p1

    invoke-direct {v0, v1, p0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p0

    return-object p0
.end method

.method private static selectApplet()Ljava/lang/String;
    .locals 2

    const-string v0, "695F656F73"

    .line 199
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static serialEOSSignature([B)Ljava/lang/String;
    .locals 4

    const-string v0, "K1"

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 189
    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 190
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 192
    invoke-virtual {v1, v0, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v1, 0x4

    .line 193
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 194
    invoke-static {p0, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIG_K1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->fromWIF(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;

    move-result-object p1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->getECKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-static {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->signAsRecoverable([BLorg/bitcoinj/core/ECKey;)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-static {p1, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 33
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign([BLjava/lang/String;[B)Ljava/lang/String;
    .locals 8

    .line 46
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    .line 47
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    new-array v4, v1, [B

    .line 48
    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    invoke-static {v4, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v2, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 49
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 51
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/core/Apdu;->eosPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v2

    const/16 v4, 0x78

    invoke-virtual {v2, v0, v4}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->getPublicKeyApdu([B)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 66
    :goto_1
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/Apdu;->eosTxSign(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/16 v4, 0x42

    .line 69
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x82

    .line 70
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 72
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 73
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 74
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 76
    new-instance p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    invoke-direct {p1, v4, v5}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v4

    .line 78
    invoke-static {p2, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->calV([BLorg/bitcoinj/core/ECKey$ECDSASignature;Ljava/lang/String;)B

    move-result v5

    const/4 v6, 0x3

    .line 80
    aget-byte v6, v4, v6

    add-int/lit8 v7, v6, 0x5

    .line 81
    aget-byte v4, v4, v7

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    if-ne v4, v7, :cond_1

    new-array p0, v1, [B

    int-to-byte p2, v5

    aput-byte p2, p0, v3

    .line 89
    invoke-static {p0, v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 90
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p1, v7}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 91
    invoke-static {p0, p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 92
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_publickey_mismatch_with_path"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sign([B[B)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->fromPrivate([B)Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;

    move-result-object p1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->getECKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->signAsRecoverable([BLorg/bitcoinj/core/ECKey;)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getV()I

    move-result p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-static {p1, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 41
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static signAsRecoverable([BLorg/bitcoinj/core/ECKey;)Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;
    .locals 7

    .line 157
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->eosSign([BLjava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 159
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-static {v2, v0, v5, v1}, Lorg/bitcoinj/core/ECKey;->recoverFromSignature(ILorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Sha256Hash;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v5}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1b

    add-int/2addr v2, v3

    int-to-byte p0, v2

    .line 172
    iget-object p1, v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 173
    iget-object v0, v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 175
    new-instance v1, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;

    invoke-direct {v1, p0, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/SignatureData;-><init>(I[B[B)V

    return-object v1

    .line 167
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "Could not construct a recoverable key. This should never happen."

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signMessage([BLjava/lang/String;[B)Ljava/lang/String;
    .locals 8

    .line 101
    invoke-static {}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->selectApplet()Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    .line 103
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    .line 104
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    new-array v4, v1, [B

    .line 105
    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    invoke-static {v4, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v2, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 106
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 108
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/core/Apdu;->eosMsgPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v2

    const/16 v4, 0x78

    invoke-virtual {v2, v0, v4}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->calComprsPub(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSKey;->getPublicKeyApdu([B)Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 123
    :goto_1
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/Apdu;->eosMsgSign(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v2

    invoke-virtual {v2, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/16 v4, 0x42

    .line 126
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x82

    .line 127
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 129
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 130
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 131
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 133
    new-instance p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    invoke-direct {p1, v4, v5}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v4

    .line 135
    invoke-static {p2, p1, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->calV([BLorg/bitcoinj/core/ECKey$ECDSASignature;Ljava/lang/String;)B

    move-result v5

    const/4 v6, 0x3

    .line 137
    aget-byte v6, v4, v6

    add-int/lit8 v7, v6, 0x5

    .line 138
    aget-byte v4, v4, v7

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    if-ne v4, v7, :cond_1

    new-array p0, v1, [B

    int-to-byte p2, v5

    aput-byte p2, p0, v3

    .line 146
    invoke-static {p0, v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 147
    iget-object p1, p1, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p1, v7}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 148
    invoke-static {p0, p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 149
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_publickey_mismatch_with_path"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
