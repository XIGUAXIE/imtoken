.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    new-instance p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    new-instance v1, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    new-instance v3, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator$1;

    invoke-direct {v4, p0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;)V

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;->generate()Lorg/bouncycastle/crypto/EphemeralKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;

    iget-object v5, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v6

    invoke-interface {v5, v6}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object p1

    invoke-virtual {v4, v6, v3, p1}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->createKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    const-string v3, "AESWrap"

    invoke-direct {v5, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1, v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x0

    aget-byte p2, p2, v4

    invoke-static {p2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/EphemeralKeyPair;->getEncodedPublicKey()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p2

    array-length v0, p2

    add-int/2addr v0, v2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p2

    invoke-static {p2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p2

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    array-length p2, p2

    add-int/2addr p2, v2

    array-length v1, p1

    invoke-static {p1, v4, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode MPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad padding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal block size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
