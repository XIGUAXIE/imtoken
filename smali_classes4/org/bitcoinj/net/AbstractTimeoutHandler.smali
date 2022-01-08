.class public abstract Lorg/bitcoinj/net/AbstractTimeoutHandler;
.super Ljava/lang/Object;
.source "AbstractTimeoutHandler.java"


# static fields
.field private static final timeoutTimer:Ljava/util/Timer;


# instance fields
.field private timeoutEnabled:Z

.field private timeoutMillis:J

.field private timeoutTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Timer;

    const-string v1, "AbstractTimeoutHandler timeouts"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutMillis:J

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutEnabled:Z

    return-void
.end method


# virtual methods
.method protected declared-synchronized resetTimeout()V
    .locals 5

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    :cond_0
    iget-wide v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-boolean v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutEnabled:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lorg/bitcoinj/net/AbstractTimeoutHandler$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler$1;-><init>(Lorg/bitcoinj/net/AbstractTimeoutHandler;)V

    iput-object v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    .line 78
    sget-object v1, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutMillis:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 71
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setSocketTimeout(I)V
    .locals 2

    monitor-enter p0

    int-to-long v0, p1

    .line 60
    :try_start_0
    iput-wide v0, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutMillis:J

    .line 61
    invoke-virtual {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;->resetTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setTimeoutEnabled(Z)V
    .locals 0

    monitor-enter p0

    .line 45
    :try_start_0
    iput-boolean p1, p0, Lorg/bitcoinj/net/AbstractTimeoutHandler;->timeoutEnabled:Z

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;->resetTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract timeoutOccurred()V
.end method
