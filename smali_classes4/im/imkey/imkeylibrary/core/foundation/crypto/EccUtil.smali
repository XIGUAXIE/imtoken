.class public Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;
.super Ljava/lang/Object;
.source "EccUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deriveChildKeyFromPublic(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 4

    const/16 v0, 0x2f

    const/16 v1, 0x20

    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 52
    new-instance v2, Lorg/bitcoinj/crypto/ChildNumber;

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(IZ)V

    invoke-static {p0, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getCompressECKey([B)Lorg/bitcoinj/core/ECKey;
    .locals 6

    const/16 v0, 0x21

    new-array v1, v0, [B

    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 25
    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    aget-byte v0, v1, v2

    const/4 v4, 0x2

    rem-int/2addr v0, v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aput-byte v0, v1, v5

    goto :goto_0

    :cond_0
    aput-byte v4, v1, v5

    .line 29
    :goto_0
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v1}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static getECKeyFromPublicOnly([B)Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 34
    array-length v0, p0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getCompressECKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    return-object p0
.end method

.method public static getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 42
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->HALF_CURVE_ORDER:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->CURVE_N:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    return-object p0
.end method
