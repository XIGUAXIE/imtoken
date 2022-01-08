.class public Lcom/subgraph/orchid/dashboard/Dashboard;
.super Ljava/lang/Object;
.source "Dashboard.java"

# interfaces
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderable;
.implements Lcom/subgraph/orchid/dashboard/DashboardRenderer;


# static fields
.field private static final DASHBOARD_PORT_PROPERTY:Ljava/lang/String; = "com.subgraph.orchid.dashboard.port"

.field private static final DEFAULT_FLAGS:I = 0x18

.field private static final DEFAULT_LISTENING_PORT:I = 0x3039

.field private static final LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private flags:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private isListening:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private listeningPort:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private listeningSocket:Ljava/net/ServerSocket;
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final renderables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/dashboard/DashboardRenderable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/subgraph/orchid/dashboard/Dashboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    const-string v0, "127.0.0.1"

    .line 27
    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 30
    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    .line 39
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Dashboard worker"

    .line 40
    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->newPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    .line 41
    invoke-static {}, Lcom/subgraph/orchid/dashboard/Dashboard;->chooseListeningPort()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    return-void
.end method

.method private acceptConnections(Ljava/net/ServerSocket;)V
    .locals 3

    .line 145
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/subgraph/orchid/dashboard/DashboardConnection;

    invoke-direct {v2, p0, v0}, Lcom/subgraph/orchid/dashboard/DashboardConnection;-><init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {p1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 149
    sget-object p1, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException on dashboard server socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard;->acceptConnections(Ljava/net/ServerSocket;)V

    return-void
.end method

.method private static chooseListeningPort()I
    .locals 4

    const-string v0, "com.subgraph.orchid.dashboard.port"

    .line 45
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->parsePortProperty(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 50
    sget-object v1, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.subgraph.orchid.dashboard.port was not a valid port value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x3039

    return v0
.end method

.method private closeQuietly(Ljava/net/ServerSocket;)V
    .locals 0

    .line 170
    :try_start_0
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createAcceptLoopRunnable(Ljava/net/ServerSocket;)Ljava/lang/Runnable;
    .locals 1

    .line 135
    new-instance v0, Lcom/subgraph/orchid/dashboard/Dashboard$1;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/dashboard/Dashboard$1;-><init>(Lcom/subgraph/orchid/dashboard/Dashboard;Ljava/net/ServerSocket;)V

    return-object v0
.end method

.method private static parsePortProperty(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public addRenderable(Lcom/subgraph/orchid/dashboard/DashboardRenderable;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addRenderables([Ljava/lang/Object;)V
    .locals 4

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 68
    instance-of v3, v2, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    check-cast v2, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V
    .locals 0

    const-string p1, "[Dashboard]"

    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public declared-synchronized disableFlag(I)V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableFlag(I)V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEnabled(I)Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isEnabledByProperty()Z
    .locals 1

    const-string v0, "com.subgraph.orchid.dashboard.port"

    .line 102
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isListening()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method renderAll(Ljava/io/PrintWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->flags:I

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->renderables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .line 164
    invoke-interface {v2, p0, p1, v0}, Lcom/subgraph/orchid/dashboard/DashboardRenderable;->dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public renderComponent(Ljava/io/PrintWriter;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    instance-of v0, p3, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    check-cast p3, Lcom/subgraph/orchid/dashboard/DashboardRenderable;

    .line 184
    invoke-interface {p3, p0, p1, p2}, Lcom/subgraph/orchid/dashboard/DashboardRenderable;->dashboardRender(Lcom/subgraph/orchid/dashboard/DashboardRenderer;Ljava/io/PrintWriter;I)V

    return-void
.end method

.method public declared-synchronized setListeningPort(I)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    if-eq p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    .line 94
    iget-boolean p1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->stopListening()V

    .line 96
    invoke-virtual {p0}, Lcom/subgraph/orchid/dashboard/Dashboard;->startListening()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startListening()V
    .locals 4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 107
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    const/16 v2, 0x32

    sget-object v3, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/IPv4Address;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z

    .line 112
    sget-object v0, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dashboard listening on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/subgraph/orchid/dashboard/Dashboard;->LOCALHOST:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/dashboard/Dashboard;->createAcceptLoopRunnable(Ljava/net/ServerSocket;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    sget-object v1, Lcom/subgraph/orchid/dashboard/Dashboard;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create listening Dashboard socket on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/dashboard/Dashboard;->closeQuietly(Ljava/net/ServerSocket;)V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->listeningSocket:Ljava/net/ServerSocket;

    :cond_1
    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/subgraph/orchid/dashboard/Dashboard;->isListening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
