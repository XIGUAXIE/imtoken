.class public Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;
.super Ljava/lang/Object;
.source "MyHMacDSAKCalculator.java"

# interfaces
.implements Lorg/spongycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private final K:[B

.field private final V:[B

.field private final hMac:Lorg/spongycastle/crypto/macs/HMac;

.field private n:Ljava/math/BigInteger;

.field private needTry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    .line 31
    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    .line 32
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    return-void
.end method

.method private bitsToInt([B)Ljava/math/BigInteger;
    .locals 3

    .line 133
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 135
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 136
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    .line 44
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->n:Ljava/math/BigInteger;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->needTry:Z

    .line 47
    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 48
    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 50
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v3, v1, [B

    .line 51
    invoke-static {p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 53
    array-length v4, p2

    sub-int v4, v1, v4

    array-length v5, p2

    invoke-static {p2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    new-array v4, p2, [B

    .line 57
    invoke-direct {p0, p3}, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object p3

    .line 59
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_0

    .line 60
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 63
    :cond_0
    invoke-static {p3}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    .line 65
    array-length p3, p1

    sub-int p3, p2, p3

    array-length v5, p1

    invoke-static {p1, v0, v4, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p3, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {p3, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 69
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, p3

    invoke-virtual {p1, p3, v0, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 70
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 71
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v3, v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 72
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v4, v0, p2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 74
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-virtual {p1, p3, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 76
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p3, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {p3, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p3}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 78
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, p3

    invoke-virtual {p1, p3, v0, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 80
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    invoke-virtual {p1, p3, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 82
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, p3

    invoke-virtual {p1, p3, v0, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 83
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v2}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 84
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v3, v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 85
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {p1, v4, v0, p2}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 87
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 89
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance p2, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {p2, p3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 91
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v0, p3}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 93
    iget-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    return-void
.end method

.method public init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    .line 40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextK()Ljava/math/BigInteger;
    .locals 7

    .line 97
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    .line 99
    iget-boolean v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->needTry:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v2, v4}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 101
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 102
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/macs/HMac;->update(B)V

    .line 104
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-virtual {v2, v4, v3}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 106
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v2, v4}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 108
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, v4

    invoke-virtual {v2, v4, v3, v5}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 110
    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    invoke-virtual {v2, v4, v3}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->K:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 117
    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v6, v5

    invoke-virtual {v4, v5, v3, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 119
    iget-object v4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->hMac:Lorg/spongycastle/crypto/macs/HMac;

    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    invoke-virtual {v4, v5, v3}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    sub-int v4, v0, v2

    .line 121
    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 122
    iget-object v5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->V:[B

    invoke-static {v5, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, v1}, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->bitsToInt([B)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/MyHMacDSAKCalculator;->needTry:Z

    return-object v0
.end method
