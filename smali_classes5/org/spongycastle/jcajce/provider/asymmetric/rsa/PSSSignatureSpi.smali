.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "PSSSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA512withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA384withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA256withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA224withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA1withRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$PSSwithRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$nonePSS;
    }
.end annotation


# instance fields
.field private contentDigest:Lorg/spongycastle/crypto/Digest;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private isRaw:Z

.field private mgfDigest:Lorg/spongycastle/crypto/Digest;

.field private originalSpec:Ljava/security/spec/PSSParameterSpec;

.field private paramSpec:Ljava/security/spec/PSSParameterSpec;

.field private pss:Lorg/spongycastle/crypto/signers/PSSSigner;

.field private saltLength:I

.field private signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private trailer:B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 80
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-nez p2, :cond_0

    .line 84
    sget-object p1, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_0

    .line 88
    :cond_0
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 91
    :goto_0
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 92
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    .line 93
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->getTrailer(I)B

    move-result p1

    iput-byte p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    .line 94
    iput-boolean p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->isRaw:Z

    .line 96
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->setupContentDigest()V

    return-void
.end method

.method private getTrailer(I)B
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, -0x44

    return p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown trailer field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupContentDigest()V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->isRaw:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$NullPssDigest;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    :goto_0
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineGetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    .line 231
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "PSS"

    const-string v1, "SC"

    .line 237
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 238
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 131
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    .line 137
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 118
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    .line 124
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 103
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lorg/spongycastle/crypto/signers/PSSSigner;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->signer:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    iget v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    iget-byte v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x0

    .line 109
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Supplied key is not a RSAPublicKey instance"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 180
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_7

    .line 182
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .line 184
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter must be using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MGF1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "unknown mask generation function specified"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    instance-of v0, v0, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v0, :cond_6

    .line 201
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 203
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 216
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 217
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 218
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->saltLength:I

    .line 219
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->getTrailer(I)B

    move-result p1

    iput-byte p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->trailer:B

    .line 221
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->setupContentDigest()V

    return-void

    .line 212
    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no match on MGF digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_5
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "digest algorithm for MGF should be the same as for PSS parameters."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_6
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "unkown MGF parameters"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_7
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Only PSSParameterSpec supported"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/signers/PSSSigner;->update([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;->pss:Lorg/spongycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result p1

    return p1
.end method
