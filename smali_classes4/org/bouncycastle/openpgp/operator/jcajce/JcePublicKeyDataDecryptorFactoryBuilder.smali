.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;


# instance fields
.field private contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(ILjava/security/PrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/bcpg/BCPGKey;Lorg/bouncycastle/bcpg/PublicKeyPacket;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(Lorg/bouncycastle/bcpg/BCPGKey;Lorg/bouncycastle/bcpg/PublicKeyPacket;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method private decryptSessionData(ILjava/security/PrivateKey;[[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_2

    :cond_0
    check-cast p2, Lorg/bouncycastle/jce/interfaces/ElGamalKey;

    invoke-interface {p2}, Lorg/bouncycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    new-array p2, p1, [B

    aget-object v4, p3, v2

    array-length v5, v4

    sub-int/2addr v5, v1

    const/4 v6, 0x3

    if-le v5, p1, :cond_1

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v6, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_0

    :cond_1
    array-length v5, v4

    sub-int/2addr v5, v1

    sub-int v5, p1, v5

    array-length v7, v4

    sub-int/2addr v7, v1

    invoke-static {v4, v1, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    :goto_0
    aget-object p3, p3, v3

    const/4 v3, 0x0

    :goto_1
    if-eq v3, p1, :cond_2

    aput-byte v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v2, p3

    sub-int/2addr v2, v1

    if-le v2, p1, :cond_3

    array-length p1, p3

    sub-int/2addr p1, v6

    invoke-virtual {v0, p3, v6, p1}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_3

    :cond_3
    array-length v2, p3

    sub-int/2addr v2, v1

    sub-int/2addr p1, v2

    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    goto :goto_3

    :cond_4
    :goto_2
    aget-object p1, p3, v2

    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/Cipher;->update([BII)[B

    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "exception decrypting session data"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private decryptSessionData(Lorg/bouncycastle/bcpg/BCPGKey;Lorg/bouncycastle/bcpg/PublicKeyPacket;[[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const-string v0, "error setting asymmetric cipher"

    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p3, p3, v3

    aget-byte v4, p3, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v6, p3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    new-array v6, v4, [B

    const/4 v7, 0x2

    invoke-static {p3, v7, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v7

    aget-byte v7, p3, v4

    new-array v8, v7, [B

    add-int/2addr v4, v5

    invoke-static {p3, v4, v8, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v3

    invoke-virtual {p3, v3}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->digestCalculatorProviderBuilder:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-virtual {v4, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;->calculateFingerprint(Lorg/bouncycastle/bcpg/PublicKeyPacket;)[B

    move-result-object p2

    invoke-virtual {v2, v1, p1, p2}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->createKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object p1

    const-string p2, "AESWrap"

    invoke-direct {v3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x4

    :try_start_0
    invoke-virtual {p3, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "Session"

    const/4 p2, 0x3

    invoke-virtual {p3, v8, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Lorg/bouncycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/bouncycastle/openpgp/PGPPrivateKey;)V

    return-object v0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
