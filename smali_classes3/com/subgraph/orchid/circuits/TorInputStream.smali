.class public Lcom/subgraph/orchid/circuits/TorInputStream;
.super Ljava/io/InputStream;
.source "TorInputStream.java"


# annotations
.annotation runtime Lcom/subgraph/orchid/misc/ThreadSafe;
.end annotation


# static fields
.field private static final CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private availableBytes:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private bytesReceived:J
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private currentBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final incomingCells:Ljava/util/Queue;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/subgraph/orchid/RelayCell;",
            ">;"
        }
    .end annotation
.end field

.field private isClosed:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private isEOF:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final stream:Lcom/subgraph/orchid/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;III)V

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/Stream;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    .line 45
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    .line 46
    sget-object p1, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private checkReadArguments([BII)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 119
    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int/2addr p2, p3

    array-length p1, p1

    if-gt p2, p1, :cond_0

    if-ltz p2, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 117
    throw p1
.end method

.method private fillBuffer()V
    .locals 1
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->getNextCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/TorInputStream;->processIncomingCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 181
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private getNextCell()Lcom/subgraph/orchid/RelayCell;
    .locals 2
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/RelayCell;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read interrupted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processIncomingCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 3
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    if-eq p1, v0, :cond_2

    .line 193
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 198
    sget-object p1, Lcom/subgraph/orchid/circuits/TorInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected RelayCell command type in TorInputStream queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getPayloadBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    .line 190
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input stream closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFromCurrentBuffer([BII)I
    .locals 1
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 111
    iget p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    return p3
.end method

.method private refillBufferIfNeeded()V
    .locals 1
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->fillBuffer()V

    :cond_1
    return-void
.end method


# virtual methods
.method addEndCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addInputCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    .line 157
    monitor-exit v0

    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 160
    iget-wide v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    .line 161
    iget v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    .line 162
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public available()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    .line 134
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    .line 138
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    sget-object v2, Lcom/subgraph/orchid/circuits/TorInputStream;->CLOSE_SENTINEL:Lcom/subgraph/orchid/RelayCell;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getBytesReceived()J
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-wide v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->bytesReceived:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-nez v1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    .line 62
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 63
    monitor-exit v0

    return v1

    .line 65
    :cond_0
    iget v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    .line 66
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->currentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    monitor-exit v0

    return v1

    .line 59
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/subgraph/orchid/circuits/TorInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-boolean v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isClosed:Z

    if-nez v1, :cond_4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/circuits/TorInputStream;->checkReadArguments([BII)V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 84
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 87
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    .line 88
    iget-boolean v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-eqz v2, :cond_1

    const/4 p1, -0x1

    .line 89
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    move v2, p3

    :cond_2
    if-lez v2, :cond_3

    .line 95
    :try_start_3
    iget-boolean v2, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->isEOF:Z

    if-nez v2, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TorInputStream;->refillBufferIfNeeded()V

    add-int v2, p2, v1

    sub-int v3, p3, v1

    .line 97
    invoke-direct {p0, p1, v2, v3}, Lcom/subgraph/orchid/circuits/TorInputStream;->readFromCurrentBuffer([BII)I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, p3, v1

    .line 99
    iget v3, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->availableBytes:I

    if-nez v3, :cond_2

    .line 100
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 103
    :cond_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    .line 78
    :cond_4
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorInputStream stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->getStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v1}, Lcom/subgraph/orchid/Stream;->getTargetNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unflushedCellCount()I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TorInputStream;->incomingCells:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
