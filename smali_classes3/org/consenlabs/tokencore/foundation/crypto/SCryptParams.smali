.class public Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;
.super Ljava/lang/Object;
.source "SCryptParams.java"

# interfaces
.implements Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;


# static fields
.field static final BLOCK_SIZE_FACTOR:I = 0x8

.field static final COST_FACTOR:I = 0x2000

.field static final PARALLELIZATION_FACTOR:I = 0x1


# instance fields
.field private dklen:I

.field private n:I

.field private p:I

.field private r:I

.field private salt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    .line 16
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    .line 17
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    .line 18
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    return-void
.end method

.method public static createSCryptParams()Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;
    .locals 2

    .line 25
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;-><init>()V

    const/16 v1, 0x20

    .line 26
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    const/16 v1, 0x2000

    .line 27
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    const/4 v1, 0x1

    .line 28
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    const/16 v1, 0x8

    .line 29
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;

    .line 91
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    if-eq v1, v3, :cond_2

    return v2

    .line 94
    :cond_2
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    if-eq v1, v3, :cond_3

    return v2

    .line 97
    :cond_3
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    if-eq v1, v3, :cond_4

    return v2

    .line 100
    :cond_4
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    if-eq v1, v3, :cond_5

    return v2

    .line 103
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 104
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDklen()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    return v0
.end method

.method public getP()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    return v0
.end method

.method public getR()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    return v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->salt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->getSalt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setDklen(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    return-void
.end method

.method public setN(I)V
    .locals 0

    .line 46
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    return-void
.end method

.method public setP(I)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    return-void
.end method

.method public setR(I)V
    .locals 0

    .line 62
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    return-void
.end method

.method public setSalt(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->salt:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 2

    .line 71
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->n:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->dklen:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->p:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->r:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/SCryptParams;->salt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "kdf_params_invalid"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
