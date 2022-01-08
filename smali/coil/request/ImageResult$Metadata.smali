.class public final Lcoil/request/ImageResult$Metadata;
.super Ljava/lang/Object;
.source "ImageResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000cR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil/request/ImageResult$Metadata;",
        "",
        "memoryCacheKey",
        "Lcoil/memory/MemoryCache$Key;",
        "isSampled",
        "",
        "dataSource",
        "Lcoil/decode/DataSource;",
        "isPlaceholderMemoryCacheKeyPresent",
        "(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V",
        "getDataSource",
        "()Lcoil/decode/DataSource;",
        "()Z",
        "getMemoryCacheKey",
        "()Lcoil/memory/MemoryCache$Key;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final dataSource:Lcoil/decode/DataSource;

.field private final isPlaceholderMemoryCacheKeyPresent:Z

.field private final isSampled:Z

.field private final memoryCacheKey:Lcoil/memory/MemoryCache$Key;


# direct methods
.method public constructor <init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iput-boolean p2, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    iput-object p3, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    iput-boolean p4, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    return-void
.end method

.method public static synthetic copy$default(Lcoil/request/ImageResult$Metadata;Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;ZILjava/lang/Object;)Lcoil/request/ImageResult$Metadata;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcoil/request/ImageResult$Metadata;->copy(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)Lcoil/request/ImageResult$Metadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcoil/memory/MemoryCache$Key;
    .locals 1

    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    return v0
.end method

.method public final component3()Lcoil/decode/DataSource;
    .locals 1

    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    return v0
.end method

.method public final copy(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)Lcoil/request/ImageResult$Metadata;
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcoil/request/ImageResult$Metadata;

    invoke-direct {v0, p1, p2, p3, p4}, Lcoil/request/ImageResult$Metadata;-><init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcoil/request/ImageResult$Metadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcoil/request/ImageResult$Metadata;

    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iget-object v1, p1, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    iget-boolean v1, p1, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    iget-object v1, p1, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    iget-boolean p1, p1, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDataSource()Lcoil/decode/DataSource;
    .locals 1

    .line 31
    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    return-object v0
.end method

.method public final getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;
    .locals 1

    .line 29
    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final isPlaceholderMemoryCacheKeyPresent()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    return v0
.end method

.method public final isSampled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata(memoryCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSampled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaceholderMemoryCacheKeyPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
