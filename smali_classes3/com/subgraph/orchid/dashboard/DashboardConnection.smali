.class public Lcom/subgraph/orchid/dashboard/DashboardConnection;
.super Ljava/lang/Object;
.source "DashboardConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final REFRESH_INTERVAL:I = 0x3e8


# instance fields
.field private final dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

.field private final refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/Socket;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    .line 23
    iput-object p2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    .line 24
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refresh(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private clear(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    const-string v0, "2J"

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createRefreshRunnable(Ljava/io/PrintWriter;)Ljava/lang/Runnable;
    .locals 1

    .line 124
    new-instance v0, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection$1;-><init>(Lcom/subgraph/orchid/dashboard/DashboardConnection;Ljava/io/PrintWriter;)V

    return-object v0
.end method

.method private emitCSI(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1b

    .line 94
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    const/16 v0, 0x5b

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void
.end method

.method private hideCursor(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    const-string v0, "?25l"

    .line 90
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private moveTo(Ljava/io/PrintWriter;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->emitCSI(Ljava/io/Writer;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v0, v2

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%d;%dH"

    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method private refresh(Ljava/io/PrintWriter;)V
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->hideCursor(Ljava/io/Writer;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->clear(Ljava/io/PrintWriter;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v0}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->moveTo(Ljava/io/PrintWriter;II)V

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->renderAll(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    iget-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->closeQuietly(Ljava/net/Socket;)V

    :goto_0
    return-void
.end method

.method private runInputLoop(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x63

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 58
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->toggleFlag(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 55
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->toggleFlagWithVerbose(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private toggleFlag(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->disableFlag(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    :goto_0
    return-void
.end method

.method private toggleFlagWithVerbose(II)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    or-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->disableFlag(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object p1, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->dashboard:Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->enableFlag(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 31
    iget-object v4, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->createRefreshRunnable(Ljava/io/PrintWriter;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->runInputLoop(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 34
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/dashboard/DashboardConnection;->closeQuietly(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    :goto_1
    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/DashboardConnection;->refreshExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    throw v2
.end method
