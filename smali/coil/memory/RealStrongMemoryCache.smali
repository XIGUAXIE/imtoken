.class final Lcoil/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"

# interfaces
.implements Lcoil/memory/StrongMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealStrongMemoryCache$InternalValue;,
        Lcoil/memory/RealStrongMemoryCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrongMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrongMemoryCache.kt\ncoil/memory/RealStrongMemoryCache\n+ 2 Logs.kt\ncoil/util/-Logs\n*L\n1#1,178:1\n22#2,4:179\n22#2,4:183\n*E\n*S KotlinDebug\n*F\n+ 1 StrongMemoryCache.kt\ncoil/memory/RealStrongMemoryCache\n*L\n154#1,4:179\n160#1,4:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u000c\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0002 !B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0007H\u0016R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcoil/memory/RealStrongMemoryCache;",
        "Lcoil/memory/StrongMemoryCache;",
        "weakMemoryCache",
        "Lcoil/memory/WeakMemoryCache;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "maxSize",
        "",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V",
        "cache",
        "coil/memory/RealStrongMemoryCache$cache$1",
        "Lcoil/memory/RealStrongMemoryCache$cache$1;",
        "getMaxSize",
        "()I",
        "size",
        "getSize",
        "clearMemory",
        "",
        "get",
        "Lcoil/memory/RealStrongMemoryCache$InternalValue;",
        "key",
        "Lcoil/memory/MemoryCache$Key;",
        "remove",
        "",
        "set",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isSampled",
        "trimMemory",
        "level",
        "Companion",
        "InternalValue",
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
.field public static final Companion:Lcoil/memory/RealStrongMemoryCache$Companion;

.field private static final TAG:Ljava/lang/String; = "RealStrongMemoryCache"


# instance fields
.field private final cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

.field private final logger:Lcoil/util/Logger;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/RealStrongMemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RealStrongMemoryCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RealStrongMemoryCache;->Companion:Lcoil/memory/RealStrongMemoryCache$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)V
    .locals 1

    const-string/jumbo v0, "weakMemoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    iput-object p2, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iput-object p4, p0, Lcoil/memory/RealStrongMemoryCache;->logger:Lcoil/util/Logger;

    .line 105
    new-instance p1, Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-direct {p1, p0, p3, p3}, Lcoil/memory/RealStrongMemoryCache$cache$1;-><init>(Lcoil/memory/RealStrongMemoryCache;II)V

    iput-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    return-void
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 98
    iget-object p0, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method public static final synthetic access$getWeakMemoryCache$p(Lcoil/memory/RealStrongMemoryCache;)Lcoil/memory/WeakMemoryCache;
    .locals 0

    .line 98
    iget-object p0, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clearMemory()V
    .locals 5

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const-string v1, "RealStrongMemoryCache"

    const/4 v2, 0x2

    .line 179
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v2, :cond_0

    const-string v3, "clearMemory"

    const/4 v4, 0x0

    .line 154
    invoke-interface {v0, v1, v2, v3, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcoil/memory/RealStrongMemoryCache$cache$1;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcoil/memory/RealStrongMemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealStrongMemoryCache$InternalValue;

    move-result-object p1

    check-cast p1, Lcoil/memory/RealMemoryCache$Value;

    return-object p1
.end method

.method public declared-synchronized get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealStrongMemoryCache$InternalValue;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0, p1}, Lcoil/memory/RealStrongMemoryCache$cache$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/memory/RealStrongMemoryCache$InternalValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMaxSize()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0}, Lcoil/memory/RealStrongMemoryCache$cache$1;->maxSize()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0}, Lcoil/memory/RealStrongMemoryCache$cache$1;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized remove(Lcoil/memory/MemoryCache$Key;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v0, p1}, Lcoil/memory/RealStrongMemoryCache$cache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Lcoil/util/-Bitmaps;->getAllocationByteCountCompat(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->getMaxSize()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {v1, p1}, Lcoil/memory/RealStrongMemoryCache$cache$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v1, p1, p2, p3, v0}, Lcoil/memory/WeakMemoryCache;->set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {v1, p2}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    new-instance v2, Lcoil/memory/RealStrongMemoryCache$InternalValue;

    invoke-direct {v2, p2, p3, v0}, Lcoil/memory/RealStrongMemoryCache$InternalValue;-><init>(Landroid/graphics/Bitmap;ZI)V

    invoke-virtual {v1, p1, v2}, Lcoil/memory/RealStrongMemoryCache$cache$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
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

    .line 160
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealStrongMemoryCache;->logger:Lcoil/util/Logger;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v2, "RealStrongMemoryCache"

    .line 183
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v1, :cond_0

    .line 160
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

    .line 162
    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->clearMemory()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    const/16 v2, 0xa

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_3

    .line 164
    iget-object p1, p0, Lcoil/memory/RealStrongMemoryCache;->cache:Lcoil/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {p0}, Lcoil/memory/RealStrongMemoryCache;->getSize()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcoil/memory/RealStrongMemoryCache$cache$1;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
