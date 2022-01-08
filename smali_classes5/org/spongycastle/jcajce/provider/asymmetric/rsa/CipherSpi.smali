.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$ISO9796d1Padding;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$OAEPPadding;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$PKCS1v1_5Padding_PublicOnly;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$PKCS1v1_5Padding_PrivateOnly;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$PKCS1v1_5Padding;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private privateKeyOnly:Z

.field private publicKeyOnly:Z


# direct methods
.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 46
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 60
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 46
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 52
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method public constructor <init>(ZZLorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 46
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 73
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 74
    iput-boolean p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 75
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-void
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 83
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;

    new-instance v2, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 91
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 489
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_2

    .line 491
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_4

    .line 508
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 510
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length p3, p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 521
    :goto_1
    array-length p2, p1

    if-eq v0, p2, :cond_3

    add-int p2, p5, v0

    .line 523
    aget-byte p3, p1, v0

    aput-byte p3, p4, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    :cond_3
    array-length p1, p1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 514
    :try_start_1
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    :goto_2
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw p1

    .line 500
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 447
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_3

    .line 464
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 466
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 468
    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 p3, 0x0

    array-length v0, p1

    invoke-interface {p2, p1, p3, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 472
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 458
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetBlockSize()I
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 102
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA Cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    .line 109
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 113
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    .line 115
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 117
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 119
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an RSA key!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .line 130
    :try_start_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 134
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RSA Cipher not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OAEP"

    const-string v1, "SC"

    .line 146
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 147
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 355
    :try_start_0
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 359
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot recognise parameters: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 v0, 0x0

    .line 363
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 364
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 375
    :try_start_0
    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 380
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Eeeek! "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 247
    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown parameter type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 251
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 253
    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "mode 1 requires RSAPrivateKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_3
    :goto_1
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object p2

    goto :goto_3

    .line 259
    :cond_4
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_12

    .line 261
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    if-eqz v0, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 263
    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "mode 2 requires RSAPublicKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_6
    :goto_2
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object p2

    :goto_3
    if-eqz p3, :cond_c

    .line 276
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 278
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 280
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v2, "MGF1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    .line 282
    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown mask generation function specified"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    instance-of p3, p3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz p3, :cond_b

    .line 290
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 297
    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 298
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 305
    new-instance v2, Lorg/spongycastle/crypto/encodings/OAEPEncoding;

    new-instance v4, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    invoke-direct {v2, v4, p3, v3, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    goto :goto_5

    .line 302
    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no match on MGF digest algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no match on digest algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 287
    :cond_b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unkown MGF parameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_c
    :goto_5
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    instance-of p3, p3, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    if-nez p3, :cond_e

    if-eqz p4, :cond_d

    .line 317
    new-instance p3, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p3, p2, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    goto :goto_6

    .line 321
    :cond_d
    new-instance p3, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p3, p2, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_6
    move-object p2, p3

    .line 325
    :cond_e
    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eq p1, v1, :cond_11

    const/4 p3, 0x2

    if-eq p1, p3, :cond_10

    const/4 p3, 0x3

    if-eq p1, p3, :cond_11

    const/4 p3, 0x4

    if-ne p1, p3, :cond_f

    goto :goto_7

    .line 338
    :cond_f
    new-instance p2, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown opmode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed to RSA"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 335
    :cond_10
    :goto_7
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_8

    .line 331
    :cond_11
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p1, v1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_8
    return-void

    .line 271
    :cond_12
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "unknown key type passed to RSA"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 172
    iput-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 173
    iput-boolean v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    return-void

    :cond_1
    const-string v1, "2"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iput-boolean v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 179
    iput-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    return-void

    .line 183
    :cond_2
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 190
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance p1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {p1}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_5

    :cond_0
    const-string v1, "PKCS1PADDING"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    new-instance p1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_5

    :cond_1
    const-string v1, "ISO9796-1PADDING"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    new-instance p1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v0, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_5

    :cond_2
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_3

    .line 206
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_5

    :cond_3
    const-string v1, "OAEPPADDING"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_5

    :cond_4
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 234
    :cond_9
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable with RSA."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_a
    :goto_0
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-512"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 226
    :cond_b
    :goto_1
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-384"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 222
    :cond_c
    :goto_2
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-256"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 218
    :cond_d
    :goto_3
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 214
    :cond_e
    :goto_4
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    :goto_5
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 0

    .line 416
    iget-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 418
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_1

    .line 420
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_2

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 429
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 391
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    instance-of p1, p1, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    const-string p2, "too much data for RSA block"

    if-eqz p1, :cond_1

    .line 393
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    if-gt p1, p3, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 400
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result p3

    if-gt p1, p3, :cond_2

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 402
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
