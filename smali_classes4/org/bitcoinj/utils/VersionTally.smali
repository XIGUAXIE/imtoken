.class public Lorg/bitcoinj/utils/VersionTally;
.super Ljava/lang/Object;
.source "VersionTally.java"


# instance fields
.field private final versionWindow:[J

.field private versionWriteHead:I

.field private versionsStored:I


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lorg/bitcoinj/utils/VersionTally;->versionWriteHead:I

    .line 50
    iput v0, p0, Lorg/bitcoinj/utils/VersionTally;->versionsStored:I

    .line 53
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getMajorityWindow()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    iget v1, p0, Lorg/bitcoinj/utils/VersionTally;->versionWriteHead:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bitcoinj/utils/VersionTally;->versionWriteHead:I

    aput-wide p1, v0, v1

    .line 64
    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lorg/bitcoinj/utils/VersionTally;->versionWriteHead:I

    .line 67
    :cond_0
    iget p1, p0, Lorg/bitcoinj/utils/VersionTally;->versionsStored:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bitcoinj/utils/VersionTally;->versionsStored:I

    return-void
.end method

.method public getCountAtOrAbove(J)Ljava/lang/Integer;
    .locals 5

    .line 78
    iget v0, p0, Lorg/bitcoinj/utils/VersionTally;->versionsStored:I

    iget-object v1, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 83
    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-ltz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public initialize(Lorg/bitcoinj/store/BlockStore;Lorg/bitcoinj/core/StoredBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 105
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 106
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/utils/VersionTally;->add(J)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bitcoinj/utils/VersionTally;->versionWindow:[J

    array-length v0, v0

    return v0
.end method
