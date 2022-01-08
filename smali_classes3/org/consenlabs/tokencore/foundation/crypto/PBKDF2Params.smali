.class public Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;
.super Ljava/lang/Object;
.source "PBKDF2Params.java"

# interfaces
.implements Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;


# static fields
.field static final C_LIGHT:I = 0x2800

.field static final PRF:Ljava/lang/String; = "hmac-sha256"


# instance fields
.field private c:I

.field private dklen:I

.field private prf:Ljava/lang/String;

.field private salt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    .line 16
    iput v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->prf:Ljava/lang/String;

    return-void
.end method

.method public static createPBKDF2Params()Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;
    .locals 2

    .line 24
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;-><init>()V

    const/16 v1, 0x20

    .line 25
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    const/16 v1, 0x2800

    .line 26
    iput v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    const-string v1, "hmac-sha256"

    .line 27
    iput-object v1, v0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->prf:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 79
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;

    .line 81
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    if-eq v1, v3, :cond_2

    return v2

    .line 84
    :cond_2
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    iget v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    if-eq v1, v3, :cond_3

    return v2

    .line 87
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 89
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_0
    return v2

    .line 92
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getC()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    return v0
.end method

.method public getDklen()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    return v0
.end method

.method public getPrf()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->prf:Ljava/lang/String;

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->salt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 98
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getPrf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->getSalt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setC(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    return-void
.end method

.method public setDklen(I)V
    .locals 0

    .line 36
    iput p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    return-void
.end method

.method public setPrf(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->prf:Ljava/lang/String;

    return-void
.end method

.method public setSalt(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->salt:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 2

    .line 61
    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->dklen:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->salt:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Params;->prf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "kdf_params_invalid"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
