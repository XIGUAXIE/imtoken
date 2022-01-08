.class public Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;
.super Ljava/lang/Object;
.source "GuardProbeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final entry:Lcom/subgraph/orchid/GuardEntry;

.field private final entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/guards/EntryGuards;Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 19
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    .line 20
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-interface {v0}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V

    return-void

    .line 30
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/subgraph/orchid/ConnectionCache;->getConnectionTo(Lcom/subgraph/orchid/Router;Z)Lcom/subgraph/orchid/Connection;

    .line 31
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    sget-object v1, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception probing entry guard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 36
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 34
    sget-object v2, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception probing entry guard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entryGuards:Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;->entry:Lcom/subgraph/orchid/GuardEntry;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V

    return-void
.end method
