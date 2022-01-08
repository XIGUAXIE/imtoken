.class public Lorg/spongycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source "IESParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private cipherKeySize:I

.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I

.field private nonce:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 50
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 71
    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    .line 72
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 76
    :cond_0
    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    :goto_0
    if-eqz p2, :cond_1

    .line 81
    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    .line 82
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 86
    :cond_1
    iput-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    .line 89
    :goto_1
    iput p3, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    .line 90
    iput p4, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    .line 91
    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->cipherKeySize:I

    return v0
.end method

.method public getDerivationV()[B
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->derivation:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->encoding:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method

.method public getNonce()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IESParameterSpec;->nonce:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method