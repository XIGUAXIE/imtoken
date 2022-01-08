.class public Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;
.super Ljava/lang/Object;
.source "CipherParams.java"


# instance fields
.field private iv:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 43
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    .line 45
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIv()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIv(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->iv:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->iv:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "cipher_unsupported"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
