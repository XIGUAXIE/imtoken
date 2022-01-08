.class public Lim/imkey/imkeylibrary/device/key/KeyConverter;
.super Ljava/lang/Object;
.source "KeyConverter.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertECPoint(Lorg/spongycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 2

    .line 23
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static getPrivKey([B)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v0, "secp256k1"

    .line 28
    invoke-static {v0}, Lorg/spongycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v0

    .line 29
    new-instance v1, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    const-string p0, "EC"

    const-string v0, "SC"

    .line 31
    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 32
    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    return-object p0
.end method

.method public static getPubKey([B)Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/16 v0, 0x20

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-static {p0, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    .line 42
    invoke-static {p0, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 45
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v1, "secp256k1"

    .line 47
    invoke-static {v1}, Lorg/spongycastle/jce/ECNamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v1

    const-string v2, "EC"

    const-string v3, "SC"

    .line 48
    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 49
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;

    invoke-direct {v3}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

    invoke-virtual {v3, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 50
    new-instance v0, Lorg/spongycastle/jce/spec/ECPublicKeySpec;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    return-object p0
.end method
