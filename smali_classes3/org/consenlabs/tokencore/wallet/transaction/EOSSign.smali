.class public Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;
.super Ljava/lang/Object;
.source "EOSSign.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deserializeEOSSignature(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;
    .locals 3

    const-string v0, "^SIG_([A-Za-z0-9]+)_([A-Za-z0-9]+)$"

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "K1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Base58;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    array-length v2, v0

    add-int/lit8 v2, v2, -0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 94
    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 96
    new-instance p0, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;-><init>([B)V

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "The Checksum of eos signature is invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Excepting K1 Signature result"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static eosSign([BLjava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;
    .locals 3

    .line 68
    new-instance v0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;

    new-instance v1, Lorg/consenlabs/tokencore/wallet/transaction/MyHMacDSAKCalculator;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/transaction/MyHMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    .line 69
    new-instance v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    sget-object v2, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, p1, v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {v0, p1, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 71
    invoke-virtual {v0, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object p0

    .line 72
    new-instance v0, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    aget-object p0, p0, p1

    invoke-direct {v0, v1, p0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p0

    return-object p0
.end method

.method public static recover([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->deserializeEOSSignature(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p1

    const/4 v0, 0x1

    .line 60
    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;->signedMessageToKey([BLorg/consenlabs/tokencore/wallet/transaction/SignatureData;Z)[B

    move-result-object p0

    .line 61
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->encodePublicKey([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-virtual {p0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static serialEOSSignature([B)Ljava/lang/String;
    .locals 4

    const-string v0, "K1"

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 77
    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 78
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 80
    invoke-virtual {v1, v0, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    const/4 v1, 0x4

    .line 81
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 82
    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 83
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
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromWIF(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getECKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->eosSign([BLjava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v0

    const/4 v1, 0x1

    .line 42
    invoke-static {v0, p0, p1, v1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;->signAsRecoverable(Lorg/bitcoinj/core/ECKey$ECDSASignature;[BLorg/bitcoinj/core/ECKey;Z)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 45
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sign([B[B)Ljava/lang/String;
    .locals 2

    .line 49
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromPrivate([B)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getECKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPrivKey()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->eosSign([BLjava/math/BigInteger;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v0

    const/4 v1, 0x1

    .line 51
    invoke-static {v0, p0, p1, v1}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureUtil;->signAsRecoverable(Lorg/bitcoinj/core/ECKey$ECDSASignature;[BLorg/bitcoinj/core/ECKey;Z)Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getV()I

    move-result p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->intToBytes(I)[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getR()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/SignatureData;->getS()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    .line 54
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->serialEOSSignature([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
