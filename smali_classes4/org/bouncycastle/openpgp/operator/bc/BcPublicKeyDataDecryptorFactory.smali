.class public Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# instance fields
.field private keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/bouncycastle/crypto/BlockCipher;[B)Lorg/bouncycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v5, v0}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array v0, p1, [B

    aget-object v4, p2, v3

    array-length v6, v4

    sub-int/2addr v6, v2

    const/4 v7, 0x3

    if-le v6, p1, :cond_1

    array-length v6, v4

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v7, v6}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_0

    :cond_1
    array-length v6, v4

    sub-int/2addr v6, v2

    sub-int v6, p1, v6

    array-length v8, v4

    sub-int/2addr v8, v2

    invoke-static {v4, v2, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v0, v3, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_0
    aget-object p2, p2, v1

    const/4 v1, 0x0

    :goto_1
    if-eq v1, p1, :cond_2

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    array-length v1, p2

    sub-int/2addr v1, v2

    if-le v1, p1, :cond_3

    array-length p1, p2

    sub-int/2addr p1, v7

    invoke-virtual {v5, p2, v7, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_3
    array-length v1, p2

    sub-int/2addr v1, v2

    sub-int v1, p1, v1

    array-length v4, p2

    sub-int/2addr v4, v2

    invoke-static {p2, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v0, v3, p1}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p1, p2, v3

    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-virtual {v5, p1, v2, p2}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    :goto_3
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    aget-object p2, p2, v3

    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    new-array v5, v4, [B

    invoke-static {p2, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    aget-byte v2, p2, v4

    new-array v6, v2, [B

    add-int/2addr v4, v1

    invoke-static {p2, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p2

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object p2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;

    new-instance v4, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v5

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    new-instance v5, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v5}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v7}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;->calculateFingerprint(Lorg/bouncycastle/bcpg/PublicKeyPacket;)[B

    move-result-object v5

    invoke-virtual {v1, p1, v0, v5}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->createKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p2, v3, v4}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p2, v6, v3, v2}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception encrypting session info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
