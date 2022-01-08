.class public Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;


# instance fields
.field private helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

.field private recipientKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->recipientKey:Ljava/security/PrivateKey;

    return-void
.end method

.method private extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x4

    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->recipientKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, p3, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x2

    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->recipientKey:Ljava/security/PrivateKey;

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v0

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    const-string p3, "bad padding in message."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    const-string p3, "illegal blocksize in message."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    const-string p3, "key invalid in message."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator$1;

    invoke-direct {p3, p0, p2, p1}, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator$1;-><init>(Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    return-object p3
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/JceAsymmetricValueDecryptorGenerator;->helper:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    return-object p0
.end method
