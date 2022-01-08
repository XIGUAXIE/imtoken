.class public final Lio/sentry/android/core/AnrIntegration;
.super Ljava/lang/Object;
.source "AnrIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# static fields
.field private static anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

.field private static final watchDogLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private register(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15

    move-object v1, p0

    .line 50
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 51
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "AnrIntegration enabled: %s"

    invoke-interface {v0, v2, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v2, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    :try_start_0
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "ANR timeout in milliseconds: %d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v6

    .line 58
    invoke-interface {v0, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lio/sentry/android/core/ANRWatchDog;

    .line 65
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v9

    .line 66
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v11

    new-instance v12, Lio/sentry/android/core/-$$Lambda$AnrIntegration$hRvUVYRYnOZD36jN40KfQaw4dLY;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v12, p0, v3, v4}, Lio/sentry/android/core/-$$Lambda$AnrIntegration$hRvUVYRYnOZD36jN40KfQaw4dLY;-><init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v13

    iget-object v14, v1, Lio/sentry/android/core/AnrIntegration;->context:Landroid/content/Context;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lio/sentry/android/core/ANRWatchDog;-><init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V

    sput-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    .line 70
    invoke-virtual {v0}, Lio/sentry/android/core/ANRWatchDog;->start()V

    .line 72
    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "AnrIntegration installed."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->watchDogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    invoke-virtual {v1}, Lio/sentry/android/core/ANRWatchDog;->interrupt()V

    const/4 v1, 0x0

    .line 104
    sput-object v1, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    .line 105
    iget-object v1, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "AnrIntegration removed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
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

.method getANRWatchDog()Lio/sentry/android/core/ANRWatchDog;
    .locals 1

    .line 96
    sget-object v0, Lio/sentry/android/core/AnrIntegration;->anrWatchDog:Lio/sentry/android/core/ANRWatchDog;

    return-object v0
.end method

.method public synthetic lambda$register$0$AnrIntegration(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 0

    .line 67
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/core/AnrIntegration;->reportANR(Lio/sentry/IHub;Lio/sentry/ILogger;Lio/sentry/android/core/ApplicationNotResponding;)V

    return-void
.end method

.method public final register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 1

    const-string v0, "SentryOptions is required"

    .line 44
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/AnrIntegration;->options:Lio/sentry/SentryOptions;

    .line 45
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrIntegration;->register(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method reportANR(Lio/sentry/IHub;Lio/sentry/ILogger;Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 5

    .line 83
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ANR triggered with message: %s"

    invoke-interface {p2, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance p2, Lio/sentry/protocol/Mechanism;

    invoke-direct {p2}, Lio/sentry/protocol/Mechanism;-><init>()V

    const-string v0, "ANR"

    .line 86
    invoke-virtual {p2, v0}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lio/sentry/exception/ExceptionMechanismException;

    .line 88
    invoke-virtual {p3}, Lio/sentry/android/core/ApplicationNotResponding;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, p2, p3, v2, v1}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 90
    invoke-interface {p1, v0}, Lio/sentry/IHub;->captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;

    return-void
.end method
