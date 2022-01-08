.class public Lcom/subgraph/orchid/circuits/hs/HSDirectories;
.super Ljava/lang/Object;
.source "HSDirectories.java"


# static fields
.field private static final DIR_CLUSTER_SZ:I = 0x3


# instance fields
.field private currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private hsDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/Directory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    .line 24
    new-instance p1, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {p1}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method private getDirectoriesForDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->refreshFromDirectory()V

    .line 40
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getIndexForDescriptorId(Ljava/lang/String;)I

    move-result p1

    .line 41
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->selectDirectoriesAtIndex(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getHexIdForIndex(I)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    .line 56
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIndexForDescriptorId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getHexIdForIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private randomShuffle(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshFromDirectory()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-ne v1, v0, :cond_0

    return-void

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    .line 86
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getAllRouters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 88
    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->isHSDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    new-instance v1, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDirectories;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private selectDirectoriesAtIndex(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 68
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    .line 70
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->hsDirectories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne p1, v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->randomShuffle(Ljava/util/List;)V

    return-object v0

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private swap(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;II)V"
        }
    .end annotation

    if-eq p2, p3, :cond_0

    .line 110
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    .line 111
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 112
    invoke-interface {p1, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {p1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getDirectoriesForHiddenService(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAllCurrentDescriptorIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/data/HexDigest;

    .line 30
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getDirectoriesForDescriptorId(Lcom/subgraph/orchid/data/HexDigest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/Router;

    .line 31
    new-instance v4, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-direct {v4, v1, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/Router;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
