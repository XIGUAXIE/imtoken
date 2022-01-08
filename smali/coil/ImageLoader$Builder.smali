.class public final Lcoil/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoader.kt\ncoil/ImageLoader$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1#2:498\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001c\u001a\u00020\nJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001c\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\u000eH\u0002J\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000e0#J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017J%\u0010$\u001a\u00020\u00002\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(0&\u00a2\u0006\u0002\u0008)H\u0086\u0008\u00f8\u0001\u0000J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/J\u000e\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u000201J\u0010\u00102\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u000104J\u0010\u00102\u001a\u00020\u00002\u0008\u0008\u0001\u00105\u001a\u00020,J\u000e\u00106\u001a\u00020\u00002\u0006\u00107\u001a\u000208J\u000e\u00106\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0012J\u0010\u0010:\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u000104J\u0010\u0010:\u001a\u00020\u00002\u0008\u0008\u0001\u00105\u001a\u00020,J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/J\u0014\u0010=\u001a\u00020\u00002\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020>0#J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020>J\u0010\u0010?\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u000104J\u0010\u0010?\u001a\u00020\u00002\u0008\u0008\u0001\u00105\u001a\u00020,J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0006J\u0010\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020CH\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0008*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006D"
    }
    d2 = {
        "Lcoil/ImageLoader$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "addLastModifiedToFileCacheKey",
        "",
        "applicationContext",
        "kotlin.jvm.PlatformType",
        "availableMemoryPercentage",
        "",
        "bitmapPoolPercentage",
        "bitmapPoolingEnabled",
        "callFactory",
        "Lokhttp3/Call$Factory;",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "eventListenerFactory",
        "Lcoil/EventListener$Factory;",
        "launchInterceptorChainOnMainThread",
        "logger",
        "Lcoil/util/Logger;",
        "registry",
        "Lcoil/ComponentRegistry;",
        "trackWeakReferences",
        "enable",
        "allowHardware",
        "allowRgb565",
        "percent",
        "bitmapConfig",
        "Landroid/graphics/Bitmap$Config;",
        "build",
        "Lcoil/ImageLoader;",
        "buildDefaultCallFactory",
        "initializer",
        "Lkotlin/Function0;",
        "componentRegistry",
        "builder",
        "Lkotlin/Function1;",
        "Lcoil/ComponentRegistry$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "crossfade",
        "durationMillis",
        "",
        "diskCachePolicy",
        "policy",
        "Lcoil/request/CachePolicy;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "error",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "drawableResId",
        "eventListener",
        "listener",
        "Lcoil/EventListener;",
        "factory",
        "fallback",
        "memoryCachePolicy",
        "networkCachePolicy",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "placeholder",
        "precision",
        "Lcoil/size/Precision;",
        "transition",
        "Lcoil/transition/Transition;",
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
.field private addLastModifiedToFileCacheKey:Z

.field private final applicationContext:Landroid/content/Context;

.field private availableMemoryPercentage:D

.field private bitmapPoolPercentage:D

.field private bitmapPoolingEnabled:Z

.field private callFactory:Lokhttp3/Call$Factory;

.field private defaults:Lcoil/request/DefaultRequestOptions;

.field private eventListenerFactory:Lcoil/EventListener$Factory;

.field private launchInterceptorChainOnMainThread:Z

.field private logger:Lcoil/util/Logger;

.field private registry:Lcoil/ComponentRegistry;

.field private trackWeakReferences:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    .line 112
    sget-object p1, Lcoil/request/DefaultRequestOptions;->INSTANCE:Lcoil/request/DefaultRequestOptions;

    iput-object p1, p0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 114
    sget-object p1, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    iget-object v0, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcoil/util/Utils;->getDefaultAvailableMemoryPercentage(Landroid/content/Context;)D

    move-result-wide v0

    iput-wide v0, p0, Lcoil/ImageLoader$Builder;->availableMemoryPercentage:D

    .line 115
    sget-object p1, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {p1}, Lcoil/util/Utils;->getDefaultBitmapPoolPercentage()D

    move-result-wide v0

    iput-wide v0, p0, Lcoil/ImageLoader$Builder;->bitmapPoolPercentage:D

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->addLastModifiedToFileCacheKey:Z

    .line 117
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    .line 118
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->launchInterceptorChainOnMainThread:Z

    .line 119
    iput-boolean p1, p0, Lcoil/ImageLoader$Builder;->trackWeakReferences:Z

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcoil/ImageLoader$Builder;)Landroid/content/Context;
    .locals 0

    .line 104
    iget-object p0, p0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method private final buildDefaultCallFactory()Lokhttp3/Call$Factory;
    .locals 1

    .line 483
    new-instance v0, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;

    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder$buildDefaultCallFactory$1;-><init>(Lcoil/ImageLoader$Builder;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lcoil/util/-Extensions;->lazyCallFactory(Lkotlin/jvm/functions/Function0;)Lokhttp3/Call$Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addLastModifiedToFileCacheKey(Z)Lcoil/ImageLoader$Builder;
    .locals 1

    .line 256
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 257
    iput-boolean p1, v0, Lcoil/ImageLoader$Builder;->addLastModifiedToFileCacheKey:Z

    return-object v0
.end method

.method public final allowHardware(Z)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 230
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 231
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfef

    const/4 v15, 0x0

    move/from16 v6, p1

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final allowRgb565(Z)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 243
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 244
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfdf

    const/4 v15, 0x0

    move/from16 v7, p1

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final availableMemoryPercentage(D)Lcoil/ImageLoader$Builder;
    .locals 4

    .line 192
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 194
    iput-wide p1, v0, Lcoil/ImageLoader$Builder;->availableMemoryPercentage:D

    return-object v0

    .line 193
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Percent must be in the range [0.0, 1.0]."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string v0, "bitmapConfig"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 368
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xff7

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final bitmapPoolPercentage(D)Lcoil/ImageLoader$Builder;
    .locals 4

    .line 207
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 209
    iput-wide p1, v0, Lcoil/ImageLoader$Builder;->bitmapPoolPercentage:D

    return-object v0

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Percent must be in the range [0.0, 1.0]."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final bitmapPoolingEnabled(Z)Lcoil/ImageLoader$Builder;
    .locals 1

    .line 271
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 272
    iput-boolean p1, v0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    return-object v0
.end method

.method public final build()Lcoil/ImageLoader;
    .locals 18

    move-object/from16 v0, p0

    .line 449
    sget-object v1, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    iget-object v2, v0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, v0, Lcoil/ImageLoader$Builder;->availableMemoryPercentage:D

    invoke-virtual {v1, v2, v4, v5}, Lcoil/util/Utils;->calculateAvailableMemorySize(Landroid/content/Context;D)J

    move-result-wide v1

    .line 450
    iget-boolean v4, v0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    if-eqz v4, :cond_0

    iget-wide v4, v0, Lcoil/ImageLoader$Builder;->bitmapPoolPercentage:D

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    long-to-double v6, v1

    mul-double v4, v4, v6

    double-to-int v7, v4

    int-to-long v4, v7

    sub-long/2addr v1, v4

    long-to-int v2, v1

    .line 454
    new-instance v1, Lcoil/bitmap/RealBitmapPool;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcoil/bitmap/RealBitmapPool;-><init>(ILjava/util/Set;Lcoil/bitmap/BitmapPoolStrategy;Lcoil/util/Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 455
    iget-boolean v4, v0, Lcoil/ImageLoader$Builder;->trackWeakReferences:Z

    if-eqz v4, :cond_1

    .line 456
    new-instance v4, Lcoil/memory/RealWeakMemoryCache;

    iget-object v5, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    invoke-direct {v4, v5}, Lcoil/memory/RealWeakMemoryCache;-><init>(Lcoil/util/Logger;)V

    check-cast v4, Lcoil/memory/WeakMemoryCache;

    goto :goto_1

    .line 458
    :cond_1
    sget-object v4, Lcoil/memory/EmptyWeakMemoryCache;->INSTANCE:Lcoil/memory/EmptyWeakMemoryCache;

    check-cast v4, Lcoil/memory/WeakMemoryCache;

    :goto_1
    move-object v11, v4

    .line 460
    iget-boolean v4, v0, Lcoil/ImageLoader$Builder;->bitmapPoolingEnabled:Z

    if-eqz v4, :cond_2

    .line 461
    new-instance v4, Lcoil/bitmap/RealBitmapReferenceCounter;

    move-object v5, v1

    check-cast v5, Lcoil/bitmap/BitmapPool;

    iget-object v6, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    invoke-direct {v4, v11, v5, v6}, Lcoil/bitmap/RealBitmapReferenceCounter;-><init>(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapPool;Lcoil/util/Logger;)V

    check-cast v4, Lcoil/bitmap/BitmapReferenceCounter;

    goto :goto_2

    .line 463
    :cond_2
    sget-object v4, Lcoil/bitmap/EmptyBitmapReferenceCounter;->INSTANCE:Lcoil/bitmap/EmptyBitmapReferenceCounter;

    check-cast v4, Lcoil/bitmap/BitmapReferenceCounter;

    :goto_2
    move-object v9, v4

    .line 465
    sget-object v4, Lcoil/memory/StrongMemoryCache;->Companion:Lcoil/memory/StrongMemoryCache$Companion;

    iget-object v5, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    invoke-virtual {v4, v11, v9, v2, v5}, Lcoil/memory/StrongMemoryCache$Companion;->invoke(Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;ILcoil/util/Logger;)Lcoil/memory/StrongMemoryCache;

    move-result-object v10

    .line 467
    new-instance v2, Lcoil/RealImageLoader;

    .line 468
    iget-object v6, v0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v7, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 470
    move-object v8, v1

    check-cast v8, Lcoil/bitmap/BitmapPool;

    .line 474
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->callFactory:Lokhttp3/Call$Factory;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcoil/ImageLoader$Builder;->buildDefaultCallFactory()Lokhttp3/Call$Factory;

    move-result-object v1

    :goto_3
    move-object v12, v1

    .line 475
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->eventListenerFactory:Lcoil/EventListener$Factory;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v1, Lcoil/EventListener$Factory;->NONE:Lcoil/EventListener$Factory;

    :goto_4
    move-object v13, v1

    .line 476
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->registry:Lcoil/ComponentRegistry;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    new-instance v1, Lcoil/ComponentRegistry;

    invoke-direct {v1}, Lcoil/ComponentRegistry;-><init>()V

    :goto_5
    move-object v14, v1

    .line 477
    iget-boolean v15, v0, Lcoil/ImageLoader$Builder;->addLastModifiedToFileCacheKey:Z

    .line 478
    iget-boolean v1, v0, Lcoil/ImageLoader$Builder;->launchInterceptorChainOnMainThread:Z

    .line 479
    iget-object v3, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    move-object v5, v2

    move/from16 v16, v1

    move-object/from16 v17, v3

    .line 467
    invoke-direct/range {v5 .. v17}, Lcoil/RealImageLoader;-><init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lokhttp3/Call$Factory;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;ZZLcoil/util/Logger;)V

    check-cast v2, Lcoil/ImageLoader;

    return-object v2
.end method

.method public final callFactory(Lkotlin/jvm/functions/Function0;)Lcoil/ImageLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;)",
            "Lcoil/ImageLoader$Builder;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 167
    invoke-static {p1}, Lcoil/util/-Extensions;->lazyCallFactory(Lkotlin/jvm/functions/Function0;)Lokhttp3/Call$Factory;

    move-result-object p1

    iput-object p1, v0, Lcoil/ImageLoader$Builder;->callFactory:Lokhttp3/Call$Factory;

    return-object v0
.end method

.method public final callFactory(Lokhttp3/Call$Factory;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string v0, "callFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 150
    iput-object p1, v0, Lcoil/ImageLoader$Builder;->callFactory:Lokhttp3/Call$Factory;

    return-object v0
.end method

.method public final componentRegistry(Lcoil/ComponentRegistry;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string/jumbo v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 182
    iput-object p1, v0, Lcoil/ImageLoader$Builder;->registry:Lcoil/ComponentRegistry;

    return-object v0
.end method

.method public final synthetic componentRegistry(Lkotlin/jvm/functions/Function1;)Lcoil/ImageLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/ComponentRegistry$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcoil/ImageLoader$Builder;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcoil/ComponentRegistry$Builder;

    invoke-direct {v0}, Lcoil/ComponentRegistry$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->componentRegistry(Lcoil/ComponentRegistry;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final crossfade(I)Lcoil/ImageLoader$Builder;
    .locals 4

    if-lez p1, :cond_0

    .line 340
    new-instance v0, Lcoil/transition/CrossfadeTransition;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcoil/transition/CrossfadeTransition;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcoil/transition/Transition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    :goto_0
    invoke-virtual {p0, v0}, Lcoil/ImageLoader$Builder;->transition(Lcoil/transition/Transition;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final crossfade(Z)Lcoil/ImageLoader$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 332
    :goto_0
    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->crossfade(I)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final diskCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string/jumbo v0, "policy"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 424
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xbff

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final dispatcher(Lkotlinx/coroutines/CoroutineDispatcher;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string v0, "dispatcher"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 218
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xffe

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final error(I)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 388
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 389
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    iget-object v2, v0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcoil/util/-Contexts;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf7f

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final error(Landroid/graphics/drawable/Drawable;)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 395
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 396
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf7f

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final eventListener(Lcoil/EventListener$Factory;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 323
    iput-object p1, v0, Lcoil/ImageLoader$Builder;->eventListenerFactory:Lcoil/EventListener$Factory;

    return-object v0
.end method

.method public final eventListener(Lcoil/EventListener;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcoil/EventListener$Factory;->Companion:Lcoil/EventListener$Factory$Companion;

    invoke-virtual {v0, p1}, Lcoil/EventListener$Factory$Companion;->create(Lcoil/EventListener;)Lcoil/EventListener$Factory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->eventListener(Lcoil/EventListener$Factory;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final fallback(I)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 402
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 403
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    iget-object v2, v0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcoil/util/-Contexts;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf7f

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final fallback(Landroid/graphics/drawable/Drawable;)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 409
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 410
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf7f

    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final launchInterceptorChainOnMainThread(Z)Lcoil/ImageLoader$Builder;
    .locals 1

    .line 296
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 297
    iput-boolean p1, v0, Lcoil/ImageLoader$Builder;->launchInterceptorChainOnMainThread:Z

    return-object v0
.end method

.method public final logger(Lcoil/util/Logger;)Lcoil/ImageLoader$Builder;
    .locals 1

    .line 441
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 442
    iput-object p1, v0, Lcoil/ImageLoader$Builder;->logger:Lcoil/util/Logger;

    return-object v0
.end method

.method public final memoryCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string/jumbo v0, "policy"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 417
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xdff

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final networkCachePolicy(Lcoil/request/CachePolicy;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string/jumbo v0, "policy"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 433
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x7ff

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final okHttpClient(Lkotlin/jvm/functions/Function0;)Lcoil/ImageLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lcoil/ImageLoader$Builder;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->callFactory(Lkotlin/jvm/functions/Function0;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final okHttpClient(Lokhttp3/OkHttpClient;)Lcoil/ImageLoader$Builder;
    .locals 1

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    check-cast p1, Lokhttp3/Call$Factory;

    invoke-virtual {p0, p1}, Lcoil/ImageLoader$Builder;->callFactory(Lokhttp3/Call$Factory;)Lcoil/ImageLoader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final placeholder(I)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 374
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 375
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    iget-object v2, v0, Lcoil/ImageLoader$Builder;->applicationContext:Landroid/content/Context;

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcoil/util/-Contexts;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfbf

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcoil/ImageLoader$Builder;
    .locals 16

    .line 381
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 382
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfbf

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final precision(Lcoil/size/Precision;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string/jumbo v0, "precision"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 357
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xffb

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final trackWeakReferences(Z)Lcoil/ImageLoader$Builder;
    .locals 1

    .line 308
    move-object v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 309
    iput-boolean p1, v0, Lcoil/ImageLoader$Builder;->trackWeakReferences:Z

    return-object v0
.end method

.method public final transition(Lcoil/transition/Transition;)Lcoil/ImageLoader$Builder;
    .locals 16

    const-string/jumbo v0, "transition"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    check-cast v0, Lcoil/ImageLoader$Builder;

    .line 347
    iget-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xffd

    const/4 v15, 0x0

    invoke-static/range {v1 .. v15}, Lcoil/request/DefaultRequestOptions;->copy$default(Lcoil/request/DefaultRequestOptions;Lkotlinx/coroutines/CoroutineDispatcher;Lcoil/transition/Transition;Lcoil/size/Precision;Landroid/graphics/Bitmap$Config;ZZLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;ILjava/lang/Object;)Lcoil/request/DefaultRequestOptions;

    move-result-object v1

    iput-object v1, v0, Lcoil/ImageLoader$Builder;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method
