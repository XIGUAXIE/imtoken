.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
.super Ljava/lang/Object;
.source "BCRainbowPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I

.field private rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    .line 57
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    .line 58
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    .line 59
    iput-object p4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getDocLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V
    .locals 3

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getDocLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffQuadratic()[[S

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffSingular()[[S

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;->getCoeffScalar()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 127
    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-nez v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    .line 133
    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getDocLength()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffQuadratic()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffSingular()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffScalar()[S

    move-result-object p1

    invoke-static {v1, p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getCoeffQuadratic()[[S
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 4

    .line 100
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    array-length v0, v0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 104
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    return v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 165
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(I[[S[[S[S)V

    .line 166
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    invoke-static {v1, v0}, Lorg/spongycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 141
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->docLength:I

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffquadratic:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffsingular:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->coeffscalar:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
