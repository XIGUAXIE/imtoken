.class Lorg/bitcoinj/store/StoredTransactionOutPoint;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# instance fields
.field hash:Lorg/bitcoinj/core/Sha256Hash;

.field index:J


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Sha256Hash;J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 40
    iput-wide p2, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->index:J

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/UTXO;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 45
    invoke-virtual {p1}, Lorg/bitcoinj/core/UTXO;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->index:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    check-cast p1, Lorg/bitcoinj/store/StoredTransactionOutPoint;

    .line 77
    invoke-virtual {p0}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getIndex()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getIndex()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method getIndex()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->index:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/bitcoinj/store/StoredTransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored transaction out point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/bitcoinj/store/StoredTransactionOutPoint;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
