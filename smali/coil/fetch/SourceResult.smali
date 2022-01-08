.class public final Lcoil/fetch/SourceResult;
.super Lcoil/fetch/FetchResult;
.source "FetchResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil/fetch/SourceResult;",
        "Lcoil/fetch/FetchResult;",
        "source",
        "Lokio/BufferedSource;",
        "mimeType",
        "",
        "dataSource",
        "Lcoil/decode/DataSource;",
        "(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V",
        "getDataSource",
        "()Lcoil/decode/DataSource;",
        "getMimeType",
        "()Ljava/lang/String;",
        "getSource",
        "()Lokio/BufferedSource;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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

.field private final mimeType:Ljava/lang/String;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcoil/fetch/FetchResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    return-void
.end method

.method public static synthetic copy$default(Lcoil/fetch/SourceResult;Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/SourceResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcoil/fetch/SourceResult;->copy(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)Lcoil/fetch/SourceResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcoil/decode/DataSource;
    .locals 1

    iget-object v0, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    return-object v0
.end method

.method public final copy(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)Lcoil/fetch/SourceResult;
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcoil/fetch/SourceResult;

    invoke-direct {v0, p1, p2, p3}, Lcoil/fetch/SourceResult;-><init>(Lokio/BufferedSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcoil/fetch/SourceResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcoil/fetch/SourceResult;

    iget-object v0, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    iget-object v1, p1, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    iget-object p1, p1, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    .line 21
    iget-object v0, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Lokio/BufferedSource;
    .locals 1

    .line 19
    iget-object v0, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceResult(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/fetch/SourceResult;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/fetch/SourceResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/fetch/SourceResult;->dataSource:Lcoil/decode/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
