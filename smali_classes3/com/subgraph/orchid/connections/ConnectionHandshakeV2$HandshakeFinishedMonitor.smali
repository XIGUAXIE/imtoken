.class Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;
.super Ljava/lang/Object;
.source "ConnectionHandshakeV2.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandshakeFinishedMonitor"
.end annotation


# instance fields
.field isFinished:Z

.field final lock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->lock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1

    .line 30
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 31
    :try_start_0
    iput-boolean v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->isFinished:Z

    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->isFinished:Z

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
