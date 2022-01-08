.class Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSMacCalculator"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encKey:Ljavax/crypto/SecretKey;

.field private mac:Ljavax/crypto/Mac;

.field private random:Ljava/security/SecureRandom;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    if-nez p4, :cond_0

    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->random:Ljava/security/SecureRandom;

    if-gez p3, :cond_1

    invoke-virtual {v0, p4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p0, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->generateParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method protected generateParameterSpec(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    return-object v1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameterGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1

    const-class p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, p2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/io/MacOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSMacCalculatorBuilder$CMSMacCalculator;->mac:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
