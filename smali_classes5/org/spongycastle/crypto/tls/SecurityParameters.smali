.class public Lorg/spongycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "SecurityParameters.java"


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field encryptThenMAC:Z

.field entity:I

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field serverRandom:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 8
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 9
    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 10
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 11
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 13
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 14
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 17
    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 19
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    :cond_0
    return-void
.end method

.method copySessionParametersFrom(Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 1

    .line 23
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 24
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 25
    iget-short v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 26
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 27
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 28
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .line 61
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
