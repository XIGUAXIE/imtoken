.class public Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
.super Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;
.source "MarriedKeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/MarriedKeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/bitcoinj/wallet/MarriedKeyChain$Builder<",
        "TT;>;>",
        "Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private followingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->build()Lorg/bitcoinj/wallet/MarriedKeyChain;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/MarriedKeyChain;
    .locals 8

    .line 95
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->entropy:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Must provide either entropy or random or seed or watchingKey"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->followingKeys:Ljava/util/List;

    const-string v2, "followingKeys must be provided"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->threshold:I

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->followingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->threshold:I

    .line 100
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_3

    .line 101
    new-instance v0, Lorg/bitcoinj/wallet/MarriedKeyChain;

    iget-object v2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->random:Ljava/security/SecureRandom;

    iget v3, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->bits:I

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seedCreationTimeSecs:J

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Ljava/security/SecureRandom;ILjava/lang/String;JLorg/bitcoinj/wallet/MarriedKeyChain$1;)V

    goto :goto_2

    .line 102
    :cond_3
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->entropy:[B

    if-eqz v0, :cond_4

    .line 103
    new-instance v0, Lorg/bitcoinj/wallet/MarriedKeyChain;

    iget-object v2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->entropy:[B

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seedCreationTimeSecs:J

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>([BLjava/lang/String;JLorg/bitcoinj/wallet/MarriedKeyChain$1;)V

    goto :goto_2

    .line 104
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    iget-wide v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seedCreationTimeSecs:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->setCreationTimeSeconds(J)V

    .line 106
    new-instance v0, Lorg/bitcoinj/wallet/MarriedKeyChain;

    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seed:Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Lorg/bitcoinj/wallet/DeterministicSeed;Lorg/bitcoinj/wallet/MarriedKeyChain$1;)V

    goto :goto_2

    .line 108
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    iget-wide v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->seedCreationTimeSecs:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 109
    new-instance v0, Lorg/bitcoinj/wallet/MarriedKeyChain;

    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->watchingKey:Lorg/bitcoinj/crypto/DeterministicKey;

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/MarriedKeyChain;-><init>(Lorg/bitcoinj/crypto/DeterministicKey;)V

    .line 111
    :goto_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->followingKeys:Ljava/util/List;

    iget v2, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->threshold:I

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/MarriedKeyChain;->access$300(Lorg/bitcoinj/wallet/MarriedKeyChain;Ljava/util/List;I)V

    return-object v0
.end method

.method public followingKeys(Ljava/util/List;)Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;)TT;"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->followingKeys:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;

    return-object p1
.end method

.method public varargs followingKeys(Lorg/bitcoinj/crypto/DeterministicKey;[Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            "[",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ")TT;"
        }
    .end annotation

    .line 78
    invoke-static {p1, p2}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->followingKeys:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;

    return-object p1
.end method

.method public threshold(I)Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 89
    iput p1, p0, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->threshold:I

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;->self()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/MarriedKeyChain$Builder;

    return-object p1
.end method
