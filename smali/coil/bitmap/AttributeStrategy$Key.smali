.class final Lcoil/bitmap/AttributeStrategy$Key;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcoil/bitmap/AttributeStrategy$Key;",
        "",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "(IILandroid/graphics/Bitmap$Config;)V",
        "getConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "getHeight",
        "()I",
        "getWidth",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final config:Landroid/graphics/Bitmap$Config;

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    iput p2, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    iput-object p3, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public static synthetic copy$default(Lcoil/bitmap/AttributeStrategy$Key;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Lcoil/bitmap/AttributeStrategy$Key;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/AttributeStrategy$Key;->copy(IILandroid/graphics/Bitmap$Config;)Lcoil/bitmap/AttributeStrategy$Key;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    return v0
.end method

.method public final component3()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final copy(IILandroid/graphics/Bitmap$Config;)Lcoil/bitmap/AttributeStrategy$Key;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcoil/bitmap/AttributeStrategy$Key;

    invoke-direct {v0, p1, p2, p3}, Lcoil/bitmap/AttributeStrategy$Key;-><init>(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcoil/bitmap/AttributeStrategy$Key;

    if-eqz v0, :cond_0

    check-cast p1, Lcoil/bitmap/AttributeStrategy$Key;

    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    iget v1, p1, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    iget v1, p1, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

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

.method public final getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 127
    iget-object v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 126
    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 125
    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/AttributeStrategy$Key;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/AttributeStrategy$Key;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/bitmap/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
