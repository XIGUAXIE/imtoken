.class public final Lcoil/memory/RealWeakMemoryCache;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"

# interfaces
.implements Lcoil/memory/WeakMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RealWeakMemoryCache$WeakValue;,
        Lcoil/memory/RealWeakMemoryCache$StrongValue;,
        Lcoil/memory/RealWeakMemoryCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeakMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeakMemoryCache.kt\ncoil/memory/RealWeakMemoryCache\n+ 2 Collections.kt\ncoil/util/-Collections\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Extensions.kt\ncoil/util/-Extensions\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Logs.kt\ncoil/util/-Logs\n*L\n1#1,203:1\n63#2,2:204\n66#2:208\n74#2,12:228\n1#3:206\n1#3:207\n355#4,7:209\n150#5:216\n150#5:217\n1819#6,2:218\n22#7,4:220\n22#7,4:224\n*E\n*S KotlinDebug\n*F\n+ 1 WeakMemoryCache.kt\ncoil/memory/RealWeakMemoryCache\n*L\n73#1,2:204\n73#1:208\n175#1,12:228\n73#1:207\n83#1,7:209\n87#1:216\n113#1:217\n117#1,2:218\n135#1,4:220\n143#1,4:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 (2\u00020\u0001:\u0003()*B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u0017\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u0019J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002J\u0008\u0010\u001b\u001a\u00020\u0018H\u0016J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0007H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u0007H\u0016J(\u0010#\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\"2\u0006\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020\u0011H\u0016J\u0010\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u0011H\u0016RX\u0010\u0005\u001a>\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n0\u0006j\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n`\u000b8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006+"
    }
    d2 = {
        "Lcoil/memory/RealWeakMemoryCache;",
        "Lcoil/memory/WeakMemoryCache;",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/util/Logger;)V",
        "cache",
        "Ljava/util/HashMap;",
        "Lcoil/memory/MemoryCache$Key;",
        "Ljava/util/ArrayList;",
        "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/collections/HashMap;",
        "getCache$coil_base_release$annotations",
        "()V",
        "getCache$coil_base_release",
        "()Ljava/util/HashMap;",
        "operationsSinceCleanUp",
        "",
        "getOperationsSinceCleanUp$coil_base_release$annotations",
        "getOperationsSinceCleanUp$coil_base_release",
        "()I",
        "setOperationsSinceCleanUp$coil_base_release",
        "(I)V",
        "cleanUp",
        "",
        "cleanUp$coil_base_release",
        "cleanUpIfNecessary",
        "clearMemory",
        "get",
        "Lcoil/memory/RealMemoryCache$Value;",
        "key",
        "remove",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "set",
        "isSampled",
        "size",
        "trimMemory",
        "level",
        "Companion",
        "StrongValue",
        "WeakValue",
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
.field private static final CLEAN_UP_INTERVAL:I = 0xa

.field public static final Companion:Lcoil/memory/RealWeakMemoryCache$Companion;

.field private static final TAG:Ljava/lang/String; = "RealWeakMemoryCache"


# instance fields
.field private final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/util/ArrayList<",
            "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final logger:Lcoil/util/Logger;

.field private operationsSinceCleanUp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/RealWeakMemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RealWeakMemoryCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RealWeakMemoryCache;->Companion:Lcoil/memory/RealWeakMemoryCache$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/util/Logger;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/RealWeakMemoryCache;->logger:Lcoil/util/Logger;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    return-void
.end method

.method private final cleanUpIfNecessary()V
    .locals 2

    .line 150
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V

    :cond_0
    return-void
.end method

.method public static synthetic getCache$coil_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOperationsSinceCleanUp$coil_base_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cleanUp$coil_base_release()V
    .locals 10

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 161
    iget-object v1, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "iterator.next()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    .line 165
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 167
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_3

    .line 173
    sget-object v3, Lcoil/memory/RealWeakMemoryCache$cleanUp$1;->INSTANCE:Lcoil/memory/RealWeakMemoryCache$cleanUp$1;

    check-cast v3, Ljava/util/function/Predicate;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_4

    .line 175
    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 230
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    sub-int v8, v6, v7

    .line 232
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 234
    check-cast v9, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 175
    invoke-virtual {v9}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    .line 235
    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 178
    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public declared-synchronized clearMemory()V
    .locals 5

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const-string v1, "RealWeakMemoryCache"

    const/4 v2, 0x2

    .line 220
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v2, :cond_0

    const-string v3, "clearMemory"

    const/4 v4, 0x0

    .line 135
    invoke-interface {v0, v1, v2, v3, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    .line 137
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "cache[key] ?: return null"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    .line 204
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 205
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 74
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    new-instance v5, Lcoil/memory/RealWeakMemoryCache$StrongValue;

    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->isSampled()Z

    move-result v3

    invoke-direct {v5, v4, v3}, Lcoil/memory/RealWeakMemoryCache$StrongValue;-><init>(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_0
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_1

    move-object v0, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V

    .line 78
    check-cast v0, Lcoil/memory/RealMemoryCache$Value;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 70
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCache$coil_base_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcoil/memory/MemoryCache$Key;",
            "Ljava/util/ArrayList<",
            "Lcoil/memory/RealWeakMemoryCache$WeakValue;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getOperationsSinceCleanUp$coil_base_release()I
    .locals 1

    .line 66
    iget v0, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    return v0
.end method

.method public declared-synchronized remove(Landroid/graphics/Bitmap;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 116
    move-object v0, p0

    check-cast v0, Lcoil/memory/RealWeakMemoryCache;

    .line 117
    iget-object v0, v0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "cache.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 218
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string/jumbo v3, "values"

    .line 118
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    invoke-virtual {v4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getIdentityHashCode()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcoil/memory/MemoryCache$Key;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public declared-synchronized set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->cache:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 209
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 86
    move-object p1, p0

    check-cast p1, Lcoil/memory/RealWeakMemoryCache;

    .line 216
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 88
    new-instance v0, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v2, p3, p4}, Lcoil/memory/RealWeakMemoryCache$WeakValue;-><init>(ILjava/lang/ref/WeakReference;ZI)V

    const/4 p3, 0x0

    .line 89
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge p3, v2, :cond_3

    .line 90
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "values[index]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcoil/memory/RealWeakMemoryCache$WeakValue;

    .line 91
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getSize()I

    move-result v4

    if-lt p4, v4, :cond_2

    .line 92
    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getIdentityHashCode()I

    move-result p4

    if-ne p4, p1, :cond_1

    invoke-virtual {v3}, Lcoil/memory/RealWeakMemoryCache$WeakValue;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-ne p1, p2, :cond_1

    .line 93
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 100
    :cond_3
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_1
    invoke-direct {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setOperationsSinceCleanUp$coil_base_release(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcoil/memory/RealWeakMemoryCache;->operationsSinceCleanUp:I

    return-void
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 5

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcoil/memory/RealWeakMemoryCache;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const-string v1, "RealWeakMemoryCache"

    const/4 v2, 0x2

    .line 224
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trimMemory, level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcoil/memory/RealWeakMemoryCache;->cleanUp$coil_base_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
