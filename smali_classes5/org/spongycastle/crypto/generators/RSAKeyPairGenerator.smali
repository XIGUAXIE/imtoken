.class public Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 19
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    .line 133
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 135
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v1, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 15

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    sub-int v2, v0, v1

    .line 38
    div-int/lit8 v3, v0, 0x3

    ushr-int/lit8 v4, v0, 0x2

    .line 41
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v8

    .line 46
    invoke-virtual {p0, v2, v8}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 53
    :goto_0
    invoke-virtual {p0, v1, v8}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 56
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v7

    .line 57
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-ge v7, v3, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 67
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-eq v9, v0, :cond_1

    .line 73
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v7}, Lorg/spongycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v9

    if-ge v9, v4, :cond_2

    .line 85
    invoke-virtual {p0, v2, v8}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    move-object v11, v5

    move-object v10, v6

    goto :goto_1

    :cond_3
    move-object v10, v5

    move-object v11, v6

    .line 99
    :goto_1
    sget-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 100
    sget-object v1, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 106
    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 113
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 114
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 115
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 117
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v7, v8}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 25
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    return-void
.end method
