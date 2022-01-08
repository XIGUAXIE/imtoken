.class Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;
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
    name = "DownloadCertificatesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/Directory;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/KeyCertificate;

    .line 218
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/subgraph/orchid/Directory;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v1

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->storeCertificates()V
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 222
    :try_start_1
    invoke-static {}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download key certificates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    return-void

    :goto_2
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    throw v1
.end method
