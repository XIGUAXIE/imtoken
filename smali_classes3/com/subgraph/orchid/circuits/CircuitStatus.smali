.class public Lcom/subgraph/orchid/circuits/CircuitStatus;
.super Ljava/lang/Object;
.source "CircuitStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    }
.end annotation


# instance fields
.field private currentStreamId:I

.field private volatile state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field private streamIdLock:Ljava/lang/Object;

.field private timestampCreated:J

.field private timestampDirty:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->streamIdLock:Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 25
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->initializeCurrentStreamId()V

    return-void
.end method

.method private getDirtyString()Ljava/lang/String;
    .locals 5

    .line 100
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Clean"

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dirty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getMillisecondsDirty()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeCurrentStreamId()V
    .locals 2

    .line 29
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    const v1, 0xffff

    .line 30
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    return-void
.end method

.method private static millisecondsElapsedSince(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method declared-synchronized getMillisecondsDirty()J
    .locals 2

    monitor-enter p0

    .line 49
    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->millisecondsElapsedSince(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMillisecondsElapsedSinceCreated()J
    .locals 2

    monitor-enter p0

    .line 45
    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampCreated:J

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitStatus;->millisecondsElapsedSince(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitStatus;->getDirtyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBuilding()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized isDirty()Z
    .locals 5

    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isUnconnected()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nextStreamId()I
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->streamIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    const v3, 0xffff

    if-le v1, v3, :cond_0

    .line 110
    iput v2, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    .line 111
    :cond_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->currentStreamId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setStateBuilding()V
    .locals 1

    .line 65
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method setStateDestroyed()V
    .locals 1

    .line 77
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method setStateFailed()V
    .locals 1

    .line 69
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method setStateOpen()V
    .locals 1

    .line 73
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method declared-synchronized updateCreatedTimestamp()V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampCreated:J

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateDirtyTimestamp()V
    .locals 5

    monitor-enter p0

    .line 39
    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->state:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    if-eq v0, v1, :cond_0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus;->timestampDirty:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
