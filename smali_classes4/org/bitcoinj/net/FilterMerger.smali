.class public Lorg/bitcoinj/net/FilterMerger;
.super Ljava/lang/Object;
.source "FilterMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/FilterMerger$Result;
    }
.end annotation


# instance fields
.field private final bloomFilterTweak:J

.field private lastBloomFilterElementCount:I

.field private lastFilter:Lorg/bitcoinj/core/BloomFilter;

.field private volatile vBloomFilterFPRate:D


# direct methods
.method public constructor <init>(D)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v0, v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/bitcoinj/net/FilterMerger;->bloomFilterTweak:J

    .line 47
    iput-wide p1, p0, Lorg/bitcoinj/net/FilterMerger;->vBloomFilterFPRate:D

    return-void
.end method


# virtual methods
.method public calculate(Lcom/google/common/collect/ImmutableList;)Lorg/bitcoinj/net/FilterMerger$Result;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lorg/bitcoinj/core/PeerFilterProvider;",
            ">;)",
            "Lorg/bitcoinj/net/FilterMerger$Result;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 57
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 63
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/PeerFilterProvider;

    .line 64
    invoke-interface {v3}, Lorg/bitcoinj/core/PeerFilterProvider;->beginBloomFilterCalculation()V

    .line 65
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lorg/bitcoinj/net/FilterMerger$Result;

    invoke-direct {v0}, Lorg/bitcoinj/net/FilterMerger$Result;-><init>()V

    const-wide v3, 0x7fffffffffffffffL

    .line 68
    iput-wide v3, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bitcoinj/core/PeerFilterProvider;

    .line 72
    iget-wide v9, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J

    invoke-interface {v7}, Lorg/bitcoinj/core/PeerFilterProvider;->getEarliestKeyCreationTime()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J

    .line 73
    invoke-interface {v7}, Lorg/bitcoinj/core/PeerFilterProvider;->getBloomFilterElementCount()I

    move-result v9

    add-int/2addr v5, v9

    if-nez v6, :cond_2

    .line 74
    invoke-interface {v7}, Lorg/bitcoinj/core/PeerFilterProvider;->isRequiringUpdateAllBloomFilter()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    if-lez v5, :cond_8

    .line 82
    iget v3, v1, Lorg/bitcoinj/net/FilterMerger;->lastBloomFilterElementCount:I

    if-le v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x64

    goto :goto_2

    :cond_4
    iget v5, v1, Lorg/bitcoinj/net/FilterMerger;->lastBloomFilterElementCount:I

    :goto_2
    iput v5, v1, Lorg/bitcoinj/net/FilterMerger;->lastBloomFilterElementCount:I

    if-eqz v6, :cond_5

    .line 83
    sget-object v3, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    goto :goto_3

    :cond_5
    sget-object v3, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    :goto_3
    move-object v15, v3

    .line 85
    iget-wide v5, v1, Lorg/bitcoinj/net/FilterMerger;->vBloomFilterFPRate:D

    .line 86
    new-instance v3, Lorg/bitcoinj/core/BloomFilter;

    iget v10, v1, Lorg/bitcoinj/net/FilterMerger;->lastBloomFilterElementCount:I

    iget-wide v13, v1, Lorg/bitcoinj/net/FilterMerger;->bloomFilterTweak:J

    move-object v9, v3

    move-wide v11, v5

    invoke-direct/range {v9 .. v15}, Lorg/bitcoinj/core/BloomFilter;-><init>(IDJLorg/bitcoinj/core/BloomFilter$BloomUpdate;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bitcoinj/core/PeerFilterProvider;

    .line 88
    iget v10, v1, Lorg/bitcoinj/net/FilterMerger;->lastBloomFilterElementCount:I

    iget-wide v13, v1, Lorg/bitcoinj/net/FilterMerger;->bloomFilterTweak:J

    move-wide v11, v5

    invoke-interface/range {v9 .. v14}, Lorg/bitcoinj/core/PeerFilterProvider;->getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/bitcoinj/core/BloomFilter;->merge(Lorg/bitcoinj/core/BloomFilter;)V

    goto :goto_4

    .line 90
    :cond_6
    iget-object v5, v1, Lorg/bitcoinj/net/FilterMerger;->lastFilter:Lorg/bitcoinj/core/BloomFilter;

    invoke-virtual {v3, v5}, Lorg/bitcoinj/core/BloomFilter;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v4, 0x1

    :cond_7
    iput-boolean v4, v0, Lorg/bitcoinj/net/FilterMerger$Result;->changed:Z

    .line 91
    iput-object v3, v1, Lorg/bitcoinj/net/FilterMerger;->lastFilter:Lorg/bitcoinj/core/BloomFilter;

    iput-object v3, v0, Lorg/bitcoinj/net/FilterMerger$Result;->filter:Lorg/bitcoinj/core/BloomFilter;

    .line 96
    :cond_8
    iget-wide v3, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J

    const-wide/32 v5, 0x93a80

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bitcoinj/net/FilterMerger$Result;->earliestKeyTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/PeerFilterProvider;

    .line 100
    invoke-interface {v3}, Lorg/bitcoinj/core/PeerFilterProvider;->endBloomFilterCalculation()V

    goto :goto_5

    :cond_9
    return-object v0

    :catchall_0
    move-exception v0

    .line 99
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/PeerFilterProvider;

    .line 100
    invoke-interface {v3}, Lorg/bitcoinj/core/PeerFilterProvider;->endBloomFilterCalculation()V

    goto :goto_6

    .line 101
    :cond_a
    throw v0
.end method

.method public getBloomFilterFPRate()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lorg/bitcoinj/net/FilterMerger;->vBloomFilterFPRate:D

    return-wide v0
.end method

.method public getLastFilter()Lorg/bitcoinj/core/BloomFilter;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bitcoinj/net/FilterMerger;->lastFilter:Lorg/bitcoinj/core/BloomFilter;

    return-object v0
.end method

.method public setBloomFilterFPRate(D)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/bitcoinj/net/FilterMerger;->vBloomFilterFPRate:D

    return-void
.end method
