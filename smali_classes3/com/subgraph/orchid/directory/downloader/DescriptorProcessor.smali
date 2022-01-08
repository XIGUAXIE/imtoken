.class public Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;
.super Ljava/lang/Object;
.source "DescriptorProcessor.java"


# static fields
.field private static final MAX_CLIENT_INTERVAL_WITHOUT_REQUEST:I = 0x927c0

.field private static final MAX_DL_PER_REQUEST:I = 0x60

.field private static final MAX_DL_TO_DELAY:I = 0x10

.field private static final MIN_DL_REQUESTS:I = 0x3


# instance fields
.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private lastDescriptorDownload:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->config:Lcom/subgraph/orchid/TorConfig;

    .line 29
    iput-object p2, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    return-void
.end method

.method private canDownloadDescriptors(I)Z
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    if-nez p1, :cond_2

    return v0

    .line 39
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createPartitionList(Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->getDescriptorDigestForRouter(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getDescriptorDigestForRouter(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->useMicrodescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    return-object p1
.end method

.method private partitionDescriptors(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;>;"
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-gt v0, v3, :cond_0

    .line 51
    invoke-direct {p0, p1, v2, v0}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const/16 v3, 0x120

    if-gt v0, v3, :cond_3

    .line 54
    div-int/lit8 v3, v0, 0x3

    const/4 v4, 0x3

    .line 55
    rem-int/2addr v0, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v6, v3

    .line 63
    :goto_1
    invoke-direct {p0, p1, v5, v6}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 70
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    const/16 v0, 0x60

    .line 71
    invoke-direct {p0, p1, v2, v0}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->createPartitionList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x60

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private useMicrodescriptors()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getUseMicrodescriptors()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getDescriptorDigestsToDownload()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->isLive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getRoutersWithDownloadableDescriptors()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->canDownloadDescriptors(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->lastDescriptorDownload:Ljava/util/Date;

    .line 110
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/DescriptorProcessor;->partitionDescriptors(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
