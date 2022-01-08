.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
.super Ljava/lang/Object;


# instance fields
.field private fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method private getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;
    .locals 9

    invoke-static {p1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    :cond_0
    new-instance v8, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/security/interfaces/DSAPrivateKey;

    new-instance v0, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-interface {p2}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    new-instance v0, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    new-instance p2, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    instance-of v0, p3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    new-instance p2, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p3, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p2, v0

    goto/16 :goto_1

    :cond_1
    instance-of v0, p3, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v0, :cond_2

    check-cast p3, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    invoke-interface {p3}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance p3, Lorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-direct {p3, v1, v2}, Lorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    check-cast p2, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    if-nez p2, :cond_3

    new-instance p2, Lorg/bouncycastle/openpgp/PGPKdfParameters;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;-><init>(II)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v2

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {v1, v0, p3, v2, p2}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;II)V

    move-object p2, v1

    goto :goto_1

    :cond_4
    new-instance p2, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V

    :goto_1
    new-instance p3, Lorg/bouncycastle/openpgp/PGPPublicKey;

    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1, p4, p2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p3

    :cond_5
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKey(Lorg/bouncycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDH"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "DSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    new-instance v1, Lorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ElGamal"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    check-cast p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "RSA"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "ECDSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;

    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getX9Parameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "ECDH"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;

    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "DSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;

    new-instance v0, Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "ElGamal"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "RSA"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception constructing public key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
