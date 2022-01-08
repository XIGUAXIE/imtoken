.class public Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;
.super Ljava/lang/Object;
.source "EOSECDSASigner.java"


# instance fields
.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 3

    .line 168
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    .line 169
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    .line 171
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    .line 173
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .line 179
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 12

    .line 74
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v1, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v3, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 83
    :goto_0
    iget-object v6, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v6, v1, v3, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 84
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v6

    .line 89
    :cond_0
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 92
    :cond_1
    iget-object v7, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v7}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_2

    .line 94
    iget-object v7, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v7}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-interface {v6, v9, v7}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 100
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 102
    sget-object v10, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 105
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 107
    sget-object v10, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 109
    new-instance v6, Lorg/bitcoinj/core/ECKey$ECDSASignature;

    invoke-direct {v6, v9, v7}, Lorg/bitcoinj/core/ECKey$ECDSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->toCanonicalised()Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->encodeToDER()[B

    move-result-object v6

    const/4 v10, 0x3

    .line 111
    aget-byte v10, v6, v10

    add-int/lit8 v11, v10, 0x5

    .line 112
    aget-byte v6, v6, v11

    const/16 v11, 0x20

    if-ne v10, v11, :cond_3

    if-ne v6, v11, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/math/BigInteger;

    aput-object v9, p1, v8

    aput-object v7, p1, v4

    return-object p1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 48
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 49
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 51
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 52
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_1

    .line 54
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 57
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 60
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    :goto_0
    return-object p2
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    .line 138
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 149
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 150
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 152
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 155
    invoke-static {v0, p1, v2, p3}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p3

    if-eqz p3, :cond_2

    return v3

    .line 162
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v3
.end method
