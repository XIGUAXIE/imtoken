.class Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;
.super Ljava/lang/Object;
.source "Bridges.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/guards/Bridges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptorDownloader"
.end annotation


# instance fields
.field private final target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

.field final synthetic this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/guards/Bridges;Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    return-void
.end method

.method private decrementOutstandingTasks()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$400(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Initial descriptor fetch complete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$502(Lcom/subgraph/orchid/circuits/guards/Bridges;Z)Z

    .line 61
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private downloadDescriptor()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading descriptor for bridge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$100(Lcom/subgraph/orchid/circuits/guards/Bridges;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Descriptor received for bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Adding to list of usable bridges"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->setDescriptor(Lcom/subgraph/orchid/RouterDescriptor;)V

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$300(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 49
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 52
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download descriptor for bridge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->downloadDescriptor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->decrementOutstandingTasks()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->decrementOutstandingTasks()V

    throw v0
.end method
