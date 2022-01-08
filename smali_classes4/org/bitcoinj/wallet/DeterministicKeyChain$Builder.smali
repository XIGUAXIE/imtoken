.class public Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
.super Ljava/lang/Object;
.source "DeterministicKeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/DeterministicKeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected bits:I

.field protected entropy:[B

.field protected passphrase:Ljava/lang/String;

.field protected random:Ljava/security/SecureRandom;

.field protected seed:Lorg/bitcoinj/wallet/DeterministicSeed;

.field protected seedCreationTimeSecs:J

.field protected watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 165
    iput v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->bits:I

    return-void
.end method


# virtual methods
.method public build()Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 8

    .line 241
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->entropy:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Must provide either entropy or random or seed or watchingKey"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->passphrase:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Passphrase must not be specified with seed"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 245
    iget-object v3, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->random:Ljava/security/SecureRandom;

    if-eqz v3, :cond_4

    .line 247
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    iget v4, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->bits:I

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seedCreationTimeSecs:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V

    goto :goto_2

    .line 248
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->entropy:[B

    if-eqz v0, :cond_5

    .line 249
    new-instance v1, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seedCreationTimeSecs:J

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>([BLjava/lang/String;J)V

    move-object v0, v1

    goto :goto_2

    .line 250
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_6

    .line 251
    iget-wide v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seedCreationTimeSecs:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->setCreationTimeSeconds(J)V

    .line 252
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;)V

    goto :goto_2

    .line 254
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    iget-wide v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seedCreationTimeSecs:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 255
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    :goto_2
    return-object v0
.end method

.method public entropy([B)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->entropy:[B

    .line 187
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected getPassphrase()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->passphrase:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public passphrase(Ljava/lang/String;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->passphrase:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method public random(Ljava/security/SecureRandom;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/SecureRandom;",
            ")TT;"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->random:Ljava/security/SecureRandom;

    .line 220
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method public random(Ljava/security/SecureRandom;I)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/SecureRandom;",
            "I)TT;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->random:Ljava/security/SecureRandom;

    .line 208
    iput p2, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->bits:I

    .line 209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method public seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/DeterministicSeed;",
            ")TT;"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 196
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method public seedCreationTimeSecs(J)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 229
    iput-wide p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seedCreationTimeSecs:J

    .line 230
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public watchingKey(Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")TT;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    .line 225
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    return-object p1
.end method
