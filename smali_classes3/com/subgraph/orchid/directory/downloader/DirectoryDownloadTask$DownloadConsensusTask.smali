.class Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;
.super Ljava/lang/Object;
.source "DirectoryDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadConsensusTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$200(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-virtual {v2, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->setCurrentConsensus(Lcom/subgraph/orchid/ConsensusDocument;)V

    .line 180
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/subgraph/orchid/Directory;->addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$602(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 183
    :try_start_1
    invoke-static {}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download current consensus document: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 185
    :goto_2
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadConsensusTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$602(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    throw v1
.end method
