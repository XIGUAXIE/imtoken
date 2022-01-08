.class public final Lcom/helpscout/beacon/internal/core/model/PagingApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0003\u0010\t\u001a\u00020\u00022\u0008\u0008\u0003\u0010\n\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0018\u0010\u0004R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0016\u001a\u0004\u0008\u0019\u0010\u0004R\u0019\u0010\u001a\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0016\u001a\u0004\u0008\u001e\u0010\u0004\u00a8\u0006!"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/PagingApi;",
        "",
        "",
        "component1",
        "()I",
        "component2",
        "component3",
        "component4",
        "page",
        "pages",
        "pageSize",
        "count",
        "copy",
        "(IIII)Lcom/helpscout/beacon/internal/core/model/PagingApi;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getPages",
        "getCount",
        "getPage",
        "hasMore",
        "Z",
        "getHasMore",
        "()Z",
        "getPageSize",
        "<init>",
        "(IIII)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final count:I

.field private final hasMore:Z

.field private final page:I

.field private final pageSize:I

.field private final pages:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "pages"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "pageSize"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "count"
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    iput p2, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    iput p3, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    iput p4, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->hasMore:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/core/model/PagingApi;IIIIILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/PagingApi;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/core/model/PagingApi;->copy(IIII)Lcom/helpscout/beacon/internal/core/model/PagingApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    return v0
.end method

.method public final copy(IIII)Lcom/helpscout/beacon/internal/core/model/PagingApi;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "pages"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "pageSize"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "count"
        .end annotation
    .end param

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/PagingApi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/core/model/PagingApi;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    iget v1, p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    iget v1, p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    iget v1, p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    iget p1, p1, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

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

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    return v0
.end method

.method public final getHasMore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->hasMore:Z

    return v0
.end method

.method public final getPage()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    return v0
.end method

.method public final getPageSize()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    return v0
.end method

.method public final getPages()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PagingApi(page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->pageSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/core/model/PagingApi;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
