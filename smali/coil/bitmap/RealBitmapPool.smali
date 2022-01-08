.class public final Lcoil/bitmap/RealBitmapPool;
.super Ljava/lang/Object;
.source "RealBitmapPool.kt"

# interfaces
.implements Lcoil/bitmap/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/RealBitmapPool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBitmapPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBitmapPool.kt\ncoil/bitmap/RealBitmapPool\n+ 2 Logs.kt\ncoil/util/-Logs\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n22#2,4:179\n22#2,4:183\n22#2,4:187\n22#2,4:191\n22#2,4:198\n22#2,4:202\n22#2,4:206\n22#2,4:210\n22#2,4:214\n22#2,4:218\n90#3:195\n90#3:197\n1#4:196\n*E\n*S KotlinDebug\n*F\n+ 1 RealBitmapPool.kt\ncoil/bitmap/RealBitmapPool\n*L\n46#1,4:179\n55#1,4:183\n66#1,4:187\n78#1,4:191\n101#1,4:198\n110#1,4:202\n118#1,4:206\n124#1,4:210\n144#1,4:214\n153#1,4:218\n84#1:195\n92#1:197\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0000\u0018\u0000 (2\u00020\u0001:\u0001(B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J$\u0010\u0018\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H\u0016J$\u0010\u001c\u001a\u00020\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0006H\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000eH\u0002J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u0003H\u0016J\u0010\u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u0003H\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcoil/bitmap/RealBitmapPool;",
        "Lcoil/bitmap/BitmapPool;",
        "maxSize",
        "",
        "allowedConfigs",
        "",
        "Landroid/graphics/Bitmap$Config;",
        "strategy",
        "Lcoil/bitmap/BitmapPoolStrategy;",
        "logger",
        "Lcoil/util/Logger;",
        "(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;)V",
        "bitmaps",
        "Ljava/util/HashSet;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/HashSet;",
        "currentSize",
        "evictions",
        "hits",
        "misses",
        "puts",
        "clear",
        "",
        "clearMemory",
        "get",
        "width",
        "height",
        "config",
        "getDirty",
        "getDirtyOrNull",
        "getOrNull",
        "logStats",
        "",
        "normalize",
        "bitmap",
        "put",
        "trimMemory",
        "level",
        "trimToSize",
        "size",
        "Companion",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final ALLOWED_CONFIGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcoil/bitmap/RealBitmapPool$Companion;

.field private static final TAG:Ljava/lang/String; = "RealBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final logger:Lcoil/util/Logger;

.field private final maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lcoil/bitmap/BitmapPoolStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcoil/bitmap/RealBitmapPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/bitmap/RealBitmapPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/bitmap/RealBitmapPool;->Companion:Lcoil/bitmap/RealBitmapPool$Companion;

    .line 169
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 170
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcoil/bitmap/RealBitmapPool;->ALLOWED_CONFIGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "+",
            "Landroid/graphics/Bitmap$Config;",
            ">;",
            "Lcoil/bitmap/BitmapPoolStrategy;",
            "Lcoil/util/Logger;",
            ")V"
        }
    .end annotation

    const-string v0, "allowedConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strategy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    iput-object p2, p0, Lcoil/bitmap/RealBitmapPool;->allowedConfigs:Ljava/util/Set;

    iput-object p3, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    iput-object p4, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    .line 40
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize must be >= 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic constructor <init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 27
    sget-object p2, Lcoil/bitmap/RealBitmapPool;->ALLOWED_CONFIGS:Ljava/util/Set;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 28
    sget-object p3, Lcoil/bitmap/BitmapPoolStrategy;->Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    invoke-virtual {p3}, Lcoil/bitmap/BitmapPoolStrategy$Companion;->invoke()Lcoil/bitmap/BitmapPoolStrategy;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 29
    check-cast p4, Lcoil/util/Logger;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/bitmap/RealBitmapPool;-><init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;)V

    return-void
.end method

.method private final logStats()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->hits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->misses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->puts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->evictions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final normalize(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_0
    return-void
.end method

.method private final declared-synchronized trimToSize(I)V
    .locals 7

    monitor-enter p0

    .line 141
    :goto_0
    :try_start_0
    iget v0, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    if-le v0, p1, :cond_3

    .line 142
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v0}, Lcoil/bitmap/BitmapPoolStrategy;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 144
    iget-object p1, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz p1, :cond_0

    const-string v0, "RealBitmapPool"

    const/4 v2, 0x5

    .line 214
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size mismatch, resetting.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcoil/bitmap/RealBitmapPool;->logStats()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    .line 145
    iput p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 150
    iget v2, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    invoke-static {v0}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 151
    iget v2, p0, Lcoil/bitmap/RealBitmapPool;->evictions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcoil/bitmap/RealBitmapPool;->evictions:I

    .line 153
    iget-object v2, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v2, :cond_2

    const-string v3, "RealBitmapPool"

    const/4 v4, 0x2

    .line 218
    invoke-interface {v2}, Lcoil/util/Logger;->getLevel()I

    move-result v5

    if-gt v5, v4, :cond_2

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Evicting bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v6, v0}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcoil/bitmap/RealBitmapPool;->logStats()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 157
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcoil/bitmap/RealBitmapPool;->clearMemory()V

    return-void
.end method

.method public final clearMemory()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 206
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    if-gt v2, v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "RealBitmapPool"

    const-string v4, "clearMemory"

    .line 118
    invoke-interface {v0, v3, v1, v4, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    .line 119
    invoke-direct {p0, v0}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string p1, "Bitmap.createBitmap(width, height, config)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string p1, "Bitmap.createBitmap(width, height, config)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p3}, Lcoil/util/-Bitmaps;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v0, p1, p2, p3}, Lcoil/bitmap/BitmapPoolStrategy;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 101
    iget-object v3, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v3, :cond_0

    const-string v4, "RealBitmapPool"

    .line 198
    invoke-interface {v3}, Lcoil/util/Logger;->getLevel()I

    move-result v5

    if-gt v5, v2, :cond_0

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v6, p1, p2, p3}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    iget v3, p0, Lcoil/bitmap/RealBitmapPool;->misses:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcoil/bitmap/RealBitmapPool;->misses:I

    goto :goto_0

    .line 104
    :cond_1
    iget-object v3, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 105
    iget v3, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    invoke-static {v0}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 106
    iget v3, p0, Lcoil/bitmap/RealBitmapPool;->hits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcoil/bitmap/RealBitmapPool;->hits:I

    .line 107
    invoke-direct {p0, v0}, Lcoil/bitmap/RealBitmapPool;->normalize(Landroid/graphics/Bitmap;)V

    .line 110
    :goto_0
    iget-object v3, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v3, :cond_2

    const-string v4, "RealBitmapPool"

    .line 202
    invoke-interface {v3}, Lcoil/util/Logger;->getLevel()I

    move-result v5

    if-gt v5, v2, :cond_2

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get bitmap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v6, p1, p2, p3}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcoil/bitmap/RealBitmapPool;->logStats()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, v2, p1, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    const-string p1, "Cannot create a mutable hardware bitmap."

    .line 97
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcoil/bitmap/RealBitmapPool;->getDirtyOrNull(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const-string v3, "RealBitmapPool"

    .line 179
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting recycled bitmap from pool; bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, v1, p1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_6

    iget v3, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    if-gt v0, v3, :cond_6

    iget-object v3, p0, Lcoil/bitmap/RealBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 65
    :cond_2
    iget-object v3, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_3

    const-string v3, "RealBitmapPool"

    .line 187
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    if-gt v4, v1, :cond_3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting duplicate bitmap from pool; bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v5, p1}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, v1, p1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_3
    monitor-exit p0

    return-void

    .line 72
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v1, p1}, Lcoil/bitmap/BitmapPoolStrategy;->put(Landroid/graphics/Bitmap;)V

    .line 74
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->bitmaps:Ljava/util/HashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    iget v1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    .line 76
    iget v0, p0, Lcoil/bitmap/RealBitmapPool;->puts:I

    add-int/2addr v0, v4

    iput v0, p0, Lcoil/bitmap/RealBitmapPool;->puts:I

    .line 78
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_5

    const-string v1, "RealBitmapPool"

    .line 191
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v5, :cond_5

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Put bitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v4, p1}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcoil/bitmap/RealBitmapPool;->logStats()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v5, p1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_5
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    invoke-direct {p0, p1}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 55
    :cond_6
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    if-eqz v1, :cond_8

    const-string v3, "RealBitmapPool"

    .line 183
    invoke-interface {v1}, Lcoil/util/Logger;->getLevel()I

    move-result v6

    if-gt v6, v5, :cond_8

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting bitmap from pool; bitmap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcoil/bitmap/RealBitmapPool;->strategy:Lcoil/bitmap/BitmapPoolStrategy;

    invoke-interface {v7, p1}, Lcoil/bitmap/BitmapPoolStrategy;->stringify(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "is mutable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "is greater than max size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v7, p0, Lcoil/bitmap/RealBitmapPool;->maxSize:I

    if-le v0, v7, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is allowed config: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v5, v0, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 5

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcoil/bitmap/RealBitmapPool;->logger:Lcoil/util/Logger;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v2, "RealBitmapPool"

    .line 210
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v1, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trimMemory, level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v3, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcoil/bitmap/RealBitmapPool;->clearMemory()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    const/16 v2, 0xa

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_3

    .line 128
    iget p1, p0, Lcoil/bitmap/RealBitmapPool;->currentSize:I

    div-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcoil/bitmap/RealBitmapPool;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
