.class public Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;


# instance fields
.field private keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    new-instance p1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const-string v0, "exception encrypting session info: "

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    :cond_0
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, p1, v5}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p1, p2

    invoke-interface {v1, p2, v3, p1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    new-instance v5, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v5, v6, v7, v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v6, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v7, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v6, v5, v7}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    new-instance v5, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v6, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;

    invoke-direct {v6, p0}, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator$1;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;)V

    invoke-direct {v5, v2, v6}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;

    new-instance v7, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v7}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object p1

    invoke-virtual {v6, v8, v5, p1}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->createKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    invoke-direct {v7, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v7, v5}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {p1, v4, v1}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object p2

    array-length v1, p2

    invoke-interface {p1, p2, v3, v1}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p2, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p2

    array-length v1, p2

    add-int/2addr v1, v4

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    array-length p2, p2

    add-int/2addr p2, v4

    array-length v2, p1

    invoke-static {p1, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
