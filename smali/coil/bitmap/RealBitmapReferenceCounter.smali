.class public final Lcoil/bitmap/RealBitmapReferenceCounter;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"

# interfaces
.implements Lcoil/bitmap/BitmapReferenceCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/RealBitmapReferenceCounter$Value;,
        Lcoil/bitmap/RealBitmapReferenceCounter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapReferenceCounter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapReferenceCounter.kt\ncoil/bitmap/RealBitmapReferenceCounter\n+ 2 Extensions.kt\ncoil/util/-Extensions\n+ 3 Logs.kt\ncoil/util/-Logs\n+ 4 SparseArray.kt\nandroidx/collection/SparseArrayKt\n+ 5 Collections.kt\ncoil/util/-Collections\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n150#2:160\n150#2:165\n150#2:174\n22#3,4:161\n22#3,4:166\n22#3,4:170\n28#4:175\n22#4:176\n28#4:181\n15#5,4:177\n1#6:182\n*E\n*S KotlinDebug\n*F\n+ 1 BitmapReferenceCounter.kt\ncoil/bitmap/RealBitmapReferenceCounter\n*L\n67#1:160\n76#1:165\n100#1:174\n70#1,4:161\n78#1,4:166\n82#1,4:170\n104#1:175\n122#1:176\n137#1:181\n130#1,4:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0002%&B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\r\u0010\u0017\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008\u0019J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001a\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\"\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u000c\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcoil/bitmap/RealBitmapReferenceCounter;",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "weakMemoryCache",
        "Lcoil/memory/WeakMemoryCache;",
        "bitmapPool",
        "Lcoil/bitmap/BitmapPool;",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapPool;Lcoil/util/Logger;)V",
        "operationsSinceCleanUp",
        "",
        "getOperationsSinceCleanUp$coil_base_release$annotations",
        "()V",
        "getOperationsSinceCleanUp$coil_base_release",
        "()I",
        "setOperationsSinceCleanUp$coil_base_release",
        "(I)V",
        "values",
        "Landroidx/collection/SparseArrayCompat;",
        "Lcoil/bitmap/RealBitmapReferenceCounter$Value;",
        "getValues$coil_base_release$annotations",
        "getValues$coil_base_release",
        "()Landroidx/collection/SparseArrayCompat;",
        "cleanUp",
        "",
        "cleanUp$coil_base_release",
        "cleanUpIfNecessary",
        "decrement",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getValue",
        "key",
        "getValueOrNull",
        "increment",
        "setValid",
        "isValid",
        "Companion",
        "Value",
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
.field private static final CLEAN_UP_INTERVAL:I = 0x32

.field public static final Companion:Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "RealBitmapReferenceCounter"


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final logger:Lcoil/util/Logger;

.field private operationsSinceCleanUp:I

.field private final values:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcoil/bitmap/RealBitmapReferenceCounter$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->Companion:Lcoil/bitmap/RealBitmapReferenceCounter$Companion;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapPool;Lcoil/util/Logger;)V
    .locals 1

    const-string/jumbo v0, "weakMemoryCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    iput-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->bitmapPool:Lcoil/bitmap/BitmapPool;

    iput-object p3, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->logger:Lcoil/util/Logger;

    .line 62
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method public static final synthetic access$getBitmapPool$p(Lcoil/bitmap/RealBitmapReferenceCounter;)Lcoil/bitmap/BitmapPool;
    .locals 0

    .line 56
    iget-object p0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object p0
.end method

.method private final cleanUpIfNecessary()V
    .locals 2

    .line 114
    iget v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUp$coil_base_release()V

    :cond_0
    return-void
.end method

.method public static synthetic getOperationsSinceCleanUp$coil_base_release$annotations()V
    .locals 0

    return-void
.end method

.method private final getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;
    .locals 2

    .line 134
    invoke-direct {p0, p1, p2}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-direct {v0, v1, p2, p2}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;-><init>(Ljava/lang/ref/WeakReference;IZ)V

    .line 137
    iget-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 181
    invoke-virtual {p2, p1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private final getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;
    .locals 2

    .line 143
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-ne v1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static synthetic getValues$coil_base_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final cleanUp$coil_base_release()V
    .locals 6

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 176
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 123
    iget-object v4, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    .line 124
    invoke-virtual {v4}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getBitmap()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 127
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_1
    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    .line 177
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 130
    invoke-virtual {v1, v4}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public declared-synchronized decrement(Landroid/graphics/Bitmap;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 77
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 81
    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setCount(I)V

    .line 82
    iget-object v5, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->logger:Lcoil/util/Logger;

    if-eqz v5, :cond_0

    const-string v6, "RealBitmapReferenceCounter"

    .line 170
    invoke-interface {v5}, Lcoil/util/Logger;->getLevel()I

    move-result v7

    if-gt v7, v3, :cond_0

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DECREMENT: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v3, v7, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    .line 88
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 89
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/WeakMemoryCache;->remove(Landroid/graphics/Bitmap;)Z

    .line 91
    sget-object v0, Lcoil/bitmap/RealBitmapReferenceCounter;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;

    invoke-direct {v1, p0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter$decrement$2;-><init>(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :cond_2
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return v4

    .line 77
    :cond_3
    :try_start_1
    move-object p1, p0

    check-cast p1, Lcoil/bitmap/RealBitmapReferenceCounter;

    .line 78
    iget-object p1, p1, Lcoil/bitmap/RealBitmapReferenceCounter;->logger:Lcoil/util/Logger;

    if-eqz p1, :cond_4

    const-string v1, "RealBitmapReferenceCounter"

    .line 166
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v5

    if-gt v5, v3, :cond_4

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DECREMENT: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", UNKNOWN, UNKNOWN]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v0, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_4
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getOperationsSinceCleanUp$coil_base_release()I
    .locals 1

    .line 63
    iget v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    return v0
.end method

.method public final getValues$coil_base_release()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcoil/bitmap/RealBitmapReferenceCounter$Value;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method public declared-synchronized increment(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 68
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setCount(I)V

    .line 70
    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->logger:Lcoil/util/Logger;

    if-eqz v1, :cond_0

    const-string v2, "RealBitmapReferenceCounter"

    const/4 v3, 0x2

    .line 161
    invoke-interface {v1}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INCREMENT: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {v1, v2, v3, p1, v0}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setOperationsSinceCleanUp$coil_base_release(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->operationsSinceCleanUp:I

    return-void
.end method

.method public declared-synchronized setValid(Landroid/graphics/Bitmap;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 102
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValueOrNull(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p2

    if-nez p2, :cond_1

    .line 104
    iget-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter;->values:Landroidx/collection/SparseArrayCompat;

    new-instance v2, Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v2, v3, v1, p1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;-><init>(Ljava/lang/ref/WeakReference;IZ)V

    .line 175
    invoke-virtual {p2, v0, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0, v0, p1}, Lcoil/bitmap/RealBitmapReferenceCounter;->getValue(ILandroid/graphics/Bitmap;)Lcoil/bitmap/RealBitmapReferenceCounter$Value;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->setValid(Z)V

    .line 110
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcoil/bitmap/RealBitmapReferenceCounter;->cleanUpIfNecessary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
