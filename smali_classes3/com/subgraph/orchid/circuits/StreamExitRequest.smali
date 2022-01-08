.class public Lcom/subgraph/orchid/circuits/StreamExitRequest;
.super Ljava/lang/Object;
.source "StreamExitRequest.java"

# interfaces
.implements Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;
    }
.end annotation


# instance fields
.field private final address:Lcom/subgraph/orchid/data/IPv4Address;

.field private completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "requestCompletionLock"
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final isAddress:Z

.field private isReserved:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final port:I

.field private final requestCompletionLock:Ljava/lang/Object;

.field private retryCount:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private specificTimeout:J
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private stream:Lcom/subgraph/orchid/Stream;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "requestCompletionLock"
    .end annotation
.end field

.field private streamOpenFailReason:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "requestCompletionLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 6

    const/4 v2, 0x1

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;ZLjava/lang/String;Lcom/subgraph/orchid/data/IPv4Address;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/StreamExitRequest;-><init>(Ljava/lang/Object;ZLjava/lang/String;Lcom/subgraph/orchid/data/IPv4Address;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ZLjava/lang/String;Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    .line 40
    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isAddress:Z

    .line 41
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->hostname:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 43
    iput p5, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->port:I

    .line 44
    sget-object p1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    return-void
.end method

.method private newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    if-ne v0, v1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    .line 114
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set completion state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while status is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->port:I

    return v0
.end method

.method getStream()Lcom/subgraph/orchid/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/subgraph/orchid/StreamConnectFailedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$1;->$SwitchMap$com$subgraph$orchid$circuits$StreamExitRequest$CompletionStatus:[I

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->stream:Lcom/subgraph/orchid/Stream;

    monitor-exit v0

    return-object v1

    .line 130
    :pswitch_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 128
    :pswitch_2
    new-instance v1, Lcom/subgraph/orchid/StreamConnectFailedException;

    iget v2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->streamOpenFailReason:I

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/StreamConnectFailedException;-><init>(I)V

    throw v1

    .line 126
    :pswitch_3
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 124
    :pswitch_4
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    const-string v2, "Failure at exit node"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request not completed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    const-string v2, "Unknown completion status"

    .line 134
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getStreamTimeout()J
    .locals 5

    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->specificTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 69
    iget-wide v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->specificTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 70
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->retryCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0x2710

    .line 71
    monitor-exit p0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3a98

    .line 73
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAddressTarget()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isAddress:Z

    return v0
.end method

.method isCompleted()Z
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    sget-object v2, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized isReserved()Z
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reserveRequest()Z
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 156
    :try_start_1
    iput-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetForRetry()V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 141
    :try_start_1
    iput v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->streamOpenFailReason:I

    .line 142
    sget-object v2, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->NOT_COMPLETED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    iput-object v2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->completionStatus:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    .line 143
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->retryCount:I

    .line 145
    iput-boolean v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isReserved:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 143
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setCompletedSuccessfully(Lcom/subgraph/orchid/Stream;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->stream:Lcom/subgraph/orchid/Stream;

    .line 99
    sget-object p1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->SUCCESS:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setCompletedTimeout()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->TIMEOUT:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setExitFailed()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->EXIT_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V

    .line 86
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setInterrupted()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->INTERRUPTED:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setStreamOpenFailure(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->requestCompletionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iput p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->streamOpenFailReason:I

    .line 92
    sget-object p1, Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;->STREAM_OPEN_FAILURE:Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/StreamExitRequest;->newStatus(Lcom/subgraph/orchid/circuits/StreamExitRequest$CompletionStatus;)V

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setStreamTimeout(J)V
    .locals 0

    monitor-enter p0

    .line 64
    :try_start_0
    iput-wide p1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->specificTimeout:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->isAddress:Z

    const-string v1, ":"

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/circuits/StreamExitRequest;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
