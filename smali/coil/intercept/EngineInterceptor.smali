.class public final Lcoil/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "EngineInterceptor.kt"

# interfaces
.implements Lcoil/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/intercept/EngineInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 4 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 5 Extensions.kt\ncoil/util/-Extensions\n+ 6 Collections.kt\ncoil/util/-Collections\n+ 7 Logs.kt\ncoil/util/-Logs\n*L\n1#1,399:1\n346#1,10:438\n356#1:450\n358#1,4:452\n362#1:458\n364#1,4:460\n368#1:467\n370#1,2:470\n1#2:400\n1#2:468\n48#3:401\n48#3:403\n48#3:472\n48#3:487\n26#4:402\n26#4:404\n26#4:473\n26#4:488\n168#5,5:405\n182#5,3:410\n185#5,2:418\n199#5,2:436\n25#6,5:413\n51#6,3:464\n55#6:469\n51#6,5:482\n22#7,4:420\n22#7,4:424\n22#7,4:428\n22#7,4:432\n22#7,2:448\n25#7:451\n22#7,2:456\n25#7:459\n22#7,4:474\n22#7,4:478\n*E\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n*L\n332#1,10:438\n332#1:450\n332#1,4:452\n332#1:458\n332#1,4:460\n332#1:467\n332#1,2:470\n332#1:468\n91#1:401\n96#1:403\n332#1:472\n371#1:487\n91#1:402\n96#1:404\n332#1:473\n371#1:488\n156#1,5:405\n158#1,3:410\n158#1,2:418\n256#1,2:436\n158#1,5:413\n332#1,3:464\n332#1:469\n367#1,5:482\n177#1,4:420\n197#1,4:424\n233#1,4:428\n240#1,4:432\n332#1,2:448\n332#1:451\n332#1,2:456\n332#1:459\n355#1,4:474\n361#1,4:478\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 A2\u00020\u0001:\u0001ABO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014J;\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0081H\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J5\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\'2\u0006\u0010\u001a\u001a\u00020\u001bH\u0001\u00a2\u0006\u0002\u0008(JG\u0010)\u001a\u00020\u00162\u0006\u0010$\u001a\u00020%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\'2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010*\u001a\u00020+2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J\u0010\u00102\u001a\u0002032\u0006\u0010$\u001a\u00020%H\u0002J/\u00104\u001a\u0002052\u0008\u00106\u001a\u0004\u0018\u00010#2\u0006\u00107\u001a\u0002082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0001\u00a2\u0006\u0002\u00089J*\u0010:\u001a\u0002052\u0008\u00106\u001a\u0004\u0018\u00010#2\u0006\u00107\u001a\u0002082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010;\u001a\u0002032\u0006\u0010<\u001a\u00020=H\u0002J*\u0010>\u001a\u0002052\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010?\u001a\u0004\u0018\u00010#2\u0006\u0010<\u001a\u00020=2\u0006\u0010@\u001a\u000205H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006B"
    }
    d2 = {
        "Lcoil/intercept/EngineInterceptor;",
        "Lcoil/intercept/Interceptor;",
        "registry",
        "Lcoil/ComponentRegistry;",
        "bitmapPool",
        "Lcoil/bitmap/BitmapPool;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "strongMemoryCache",
        "Lcoil/memory/StrongMemoryCache;",
        "memoryCacheService",
        "Lcoil/memory/MemoryCacheService;",
        "requestService",
        "Lcoil/memory/RequestService;",
        "systemCallbacks",
        "Lcoil/util/SystemCallbacks;",
        "drawableDecoder",
        "Lcoil/decode/DrawableDecoderService;",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/ComponentRegistry;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/MemoryCacheService;Lcoil/memory/RequestService;Lcoil/util/SystemCallbacks;Lcoil/decode/DrawableDecoderService;Lcoil/util/Logger;)V",
        "applyTransformations",
        "Lcoil/fetch/DrawableResult;",
        "result",
        "request",
        "Lcoil/request/ImageRequest;",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "eventListener",
        "Lcoil/EventListener;",
        "applyTransformations$coil_base_release",
        "(Lcoil/fetch/DrawableResult;Lcoil/request/ImageRequest;Lcoil/size/Size;Lcoil/decode/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "computeMemoryCacheKey",
        "Lcoil/memory/MemoryCache$Key;",
        "data",
        "",
        "fetcher",
        "Lcoil/fetch/Fetcher;",
        "computeMemoryCacheKey$coil_base_release",
        "execute",
        "type",
        "",
        "(Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/request/ImageRequest;ILcoil/size/Size;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "intercept",
        "Lcoil/request/ImageResult;",
        "chain",
        "Lcoil/intercept/Interceptor$Chain;",
        "(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invalidateData",
        "",
        "isCachedValueValid",
        "",
        "cacheKey",
        "cacheValue",
        "Lcoil/memory/RealMemoryCache$Value;",
        "isCachedValueValid$coil_base_release",
        "isSizeValid",
        "validateDrawable",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "writeToMemoryCache",
        "key",
        "isSampled",
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
.field public static final Companion:Lcoil/intercept/EngineInterceptor$Companion;

.field private static final TAG:Ljava/lang/String; = "EngineInterceptor"


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;

.field private final logger:Lcoil/util/Logger;

.field private final memoryCacheService:Lcoil/memory/MemoryCacheService;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final registry:Lcoil/ComponentRegistry;

.field private final requestService:Lcoil/memory/RequestService;

.field private final strongMemoryCache:Lcoil/memory/StrongMemoryCache;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/intercept/EngineInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/intercept/EngineInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/intercept/EngineInterceptor;->Companion:Lcoil/intercept/EngineInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/ComponentRegistry;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/MemoryCacheService;Lcoil/memory/RequestService;Lcoil/util/SystemCallbacks;Lcoil/decode/DrawableDecoderService;Lcoil/util/Logger;)V
    .locals 1

    const-string/jumbo v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strongMemoryCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memoryCacheService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemCallbacks"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawableDecoder"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    iput-object p2, p0, Lcoil/intercept/EngineInterceptor;->bitmapPool:Lcoil/bitmap/BitmapPool;

    iput-object p3, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iput-object p4, p0, Lcoil/intercept/EngineInterceptor;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    iput-object p5, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    iput-object p6, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    iput-object p7, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    iput-object p8, p0, Lcoil/intercept/EngineInterceptor;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    iput-object p9, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    return-void
.end method

.method public static final synthetic access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object p0
.end method

.method public static final synthetic access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    return-object p0
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method public static final synthetic access$getRegistry$p(Lcoil/intercept/EngineInterceptor;)Lcoil/ComponentRegistry;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    return-object p0
.end method

.method public static final synthetic access$getRequestService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/RequestService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    return-object p0
.end method

.method public static final synthetic access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;
    .locals 0

    .line 55
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    return-object p0
.end method

.method public static final synthetic access$invalidateData(Lcoil/intercept/EngineInterceptor;Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcoil/intercept/EngineInterceptor;->invalidateData(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$validateDrawable(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcoil/intercept/EngineInterceptor;->validateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic access$writeToMemoryCache(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/intercept/EngineInterceptor;->writeToMemoryCache(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z

    move-result p0

    return p0
.end method

.method private final applyTransformations$coil_base_release$$forInline(Lcoil/fetch/DrawableResult;Lcoil/request/ImageRequest;Lcoil/size/Size;Lcoil/decode/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v2

    .line 347
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 350
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v4, " to apply transformations: "

    const/4 v5, 0x4

    const-string v6, "EngineInterceptor"

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 352
    sget-object v8, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    const-string/jumbo v9, "resultBitmap"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-static {p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 474
    invoke-interface {v8}, Lcoil/util/Logger;->getLevel()I

    move-result v9

    if-gt v9, v5, :cond_2

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Converting bitmap with config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v6, v5, v3, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :cond_2
    invoke-static {p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v14

    move-object/from16 v12, p3

    invoke-virtual/range {v9 .. v14}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 361
    :cond_3
    invoke-static {p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 478
    invoke-interface {v3}, Lcoil/util/Logger;->getLevel()I

    move-result v8

    if-gt v8, v5, :cond_4

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Converting drawable of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v5, v4, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    :cond_4
    invoke-static {p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v13

    move-object/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    const-string v4, "input"

    .line 366
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 483
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    .line 484
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcoil/transform/Transformation;

    .line 368
    invoke-static {p0}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v9

    const-string v10, "bitmap"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    invoke-interface {v8, v9, v3, v10, v11}, Lcoil/transform/Transformation;->transform(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v8, 0x3

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v7}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    invoke-static {v8}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "output"

    .line 370
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 p2, v0

    move/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    .line 371
    invoke-static/range {p1 .. p6}, Lcoil/fetch/DrawableResult;->copy$default(Lcoil/fetch/DrawableResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/DrawableResult;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic execute(Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/request/ImageRequest;ILcoil/size/Size;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/fetch/Fetcher<",
            "Ljava/lang/Object;",
            ">;",
            "Lcoil/request/ImageRequest;",
            "I",
            "Lcoil/size/Size;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/DrawableResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 282
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getRequestService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/RequestService;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/util/SystemCallbacks;->isOnline()Z

    move-result v2

    invoke-virtual {v1, v7, v8, v2}, Lcoil/memory/RequestService;->options(Lcoil/request/ImageRequest;Lcoil/size/Size;Z)Lcoil/decode/Options;

    move-result-object v10

    .line 284
    invoke-interface {v9, v7, v0, v10}, Lcoil/EventListener;->fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;)V

    .line 285
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v2

    const/4 v11, 0x0

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v10

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lcoil/fetch/Fetcher;->fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v12, v1

    check-cast v12, Lcoil/fetch/FetchResult;

    .line 286
    invoke-interface {v9, v7, v0, v10, v12}, Lcoil/EventListener;->fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/decode/Options;Lcoil/fetch/FetchResult;)V

    .line 289
    instance-of v0, v12, Lcoil/fetch/SourceResult;

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-eqz v0, :cond_3

    .line 292
    :try_start_0
    invoke-static {v13}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v14}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    if-nez p4, :cond_0

    .line 297
    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcoil/decode/EmptyDecoder;->INSTANCE:Lcoil/decode/EmptyDecoder;

    check-cast v0, Lcoil/decode/Decoder;

    goto :goto_1

    .line 303
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getDecoder()Lcoil/decode/Decoder;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    move-object v15, v0

    goto :goto_2

    :cond_2
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getRegistry$p(Lcoil/intercept/EngineInterceptor;)Lcoil/ComponentRegistry;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v12

    check-cast v2, Lcoil/fetch/SourceResult;

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v2

    move-object v3, v12

    check-cast v3, Lcoil/fetch/SourceResult;

    invoke-virtual {v3}, Lcoil/fetch/SourceResult;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcoil/util/-ComponentRegistries;->requireDecoder(Lcoil/ComponentRegistry;Ljava/lang/Object;Lokio/BufferedSource;Ljava/lang/String;)Lcoil/decode/Decoder;

    move-result-object v0

    goto :goto_1

    .line 307
    :goto_2
    invoke-interface {v9, v7, v15, v10}, Lcoil/EventListener;->decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;)V

    .line 308
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v1

    move-object v0, v12

    check-cast v0, Lcoil/fetch/SourceResult;

    invoke-virtual {v0}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v2

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v0, v15

    move-object/from16 v3, p5

    move-object v4, v10

    move-object/from16 v5, p7

    invoke-interface/range {v0 .. v5}, Lcoil/decode/Decoder;->decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v0, Lcoil/decode/DecodeResult;

    .line 309
    invoke-interface {v9, v7, v15, v10, v0}, Lcoil/EventListener;->decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/decode/Options;Lcoil/decode/DecodeResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    new-instance v1, Lcoil/fetch/DrawableResult;

    .line 320
    invoke-virtual {v0}, Lcoil/decode/DecodeResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 321
    invoke-virtual {v0}, Lcoil/decode/DecodeResult;->isSampled()Z

    move-result v0

    .line 322
    check-cast v12, Lcoil/fetch/SourceResult;

    invoke-virtual {v12}, Lcoil/fetch/SourceResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v3

    .line 319
    invoke-direct {v1, v2, v0, v3}, Lcoil/fetch/DrawableResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 314
    check-cast v12, Lcoil/fetch/SourceResult;

    invoke-virtual {v12}, Lcoil/fetch/SourceResult;->getSource()Lokio/BufferedSource;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcoil/util/-Extensions;->closeQuietly(Ljava/io/Closeable;)V

    .line 315
    throw v0

    .line 325
    :cond_3
    instance-of v0, v12, Lcoil/fetch/DrawableResult;

    if-eqz v0, :cond_c

    move-object v1, v12

    check-cast v1, Lcoil/fetch/DrawableResult;

    :goto_3
    move-object v12, v1

    .line 329
    invoke-static {v13}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v14}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v15

    .line 439
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 442
    :cond_4
    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, " to apply transformations: "

    const/4 v2, 0x4

    const-string v3, "EngineInterceptor"

    if-eqz v0, :cond_7

    .line 443
    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    sget-object v4, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    const-string/jumbo v5, "resultBitmap"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_4

    .line 447
    :cond_5
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 448
    invoke-interface {v4}, Lcoil/util/Logger;->getLevel()I

    move-result v5

    if-gt v5, v2, :cond_6

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Converting bitmap with config "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v2, v0, v14}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    :cond_6
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v0

    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v10}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    invoke-virtual {v10}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v5

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 455
    :cond_7
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 456
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    if-gt v4, v2, :cond_8

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting drawable of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v1, v14}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    :cond_8
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v0

    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v10}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    invoke-virtual {v10}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v5

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    const-string v1, "input"

    .line 462
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v7, v0}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 465
    move-object v1, v15

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_9

    .line 466
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcoil/transform/Transformation;

    .line 467
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v4

    const-string v5, "bitmap"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object/from16 v5, p7

    invoke-interface {v3, v4, v0, v8, v5}, Lcoil/transform/Transformation;->transform(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x3

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v14}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    const-string/jumbo v1, "output"

    .line 470
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v7, v0}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 472
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v0

    move/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    .line 471
    invoke-static/range {p1 .. p6}, Lcoil/fetch/DrawableResult;->copy$default(Lcoil/fetch/DrawableResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/DrawableResult;

    move-result-object v12

    .line 333
    :goto_6
    invoke-virtual {v12}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    move-object v14, v0

    :goto_7
    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_b
    return-object v12

    .line 325
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final invalidateData(Ljava/lang/Object;)V
    .locals 2

    .line 256
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 436
    invoke-interface {v0, p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 257
    :cond_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final isSizeValid(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 195
    instance-of v2, v1, Lcoil/size/OriginalSize;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "EngineInterceptor"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 196
    invoke-interface/range {p2 .. p2}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 197
    iget-object v1, v0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz v1, :cond_0

    .line 424
    invoke-interface {v1}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    if-gt v2, v4, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Requested original size, but cached image is sampled."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v4, v2, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v3

    .line 203
    :cond_1
    instance-of v2, v1, Lcoil/size/PixelSize;

    if-eqz v2, :cond_b

    move-object/from16 v2, p1

    .line 206
    instance-of v8, v2, Lcoil/memory/MemoryCache$Key$Complex;

    if-nez v8, :cond_2

    move-object v2, v7

    :cond_2
    check-cast v2, Lcoil/memory/MemoryCache$Key$Complex;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcoil/memory/MemoryCache$Key$Complex;->getSize()Lcoil/size/Size;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v7

    .line 207
    :goto_0
    instance-of v8, v2, Lcoil/size/PixelSize;

    if-eqz v8, :cond_4

    .line 208
    check-cast v2, Lcoil/size/PixelSize;

    invoke-virtual {v2}, Lcoil/size/PixelSize;->getWidth()I

    move-result v8

    .line 209
    invoke-virtual {v2}, Lcoil/size/PixelSize;->getHeight()I

    move-result v2

    goto :goto_2

    .line 211
    :cond_4
    sget-object v8, Lcoil/size/OriginalSize;->INSTANCE:Lcoil/size/OriginalSize;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    if-nez v2, :cond_a

    .line 212
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 214
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 221
    :goto_2
    check-cast v1, Lcoil/size/PixelSize;

    invoke-virtual {v1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v9

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v6, :cond_6

    invoke-virtual {v1}, Lcoil/size/PixelSize;->getHeight()I

    move-result v9

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v6, :cond_6

    return v6

    .line 228
    :cond_6
    invoke-virtual {v1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v9

    .line 229
    invoke-virtual {v1}, Lcoil/size/PixelSize;->getHeight()I

    move-result v10

    .line 230
    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v11

    .line 225
    invoke-static {v8, v2, v9, v10, v11}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v9

    const-string v11, ")."

    const-string v12, ") "

    const-string v13, ": Cached image\'s request size ("

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-string v6, ", "

    cmpg-double v16, v9, v14

    if-eqz v16, :cond_8

    .line 232
    invoke-static/range {p3 .. p3}, Lcoil/util/-Requests;->getAllowInexactSize(Lcoil/request/ImageRequest;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 233
    iget-object v9, v0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz v9, :cond_7

    .line 428
    invoke-interface {v9}, Lcoil/util/Logger;->getLevel()I

    move-result v10

    if-gt v10, v4, :cond_7

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "does not exactly match the requested size ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/size/PixelSize;->getHeight()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v5, v4, v1, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return v3

    :cond_8
    cmpl-double v16, v9, v14

    if-lez v16, :cond_b

    .line 239
    invoke-interface/range {p2 .. p2}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 240
    iget-object v9, v0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz v9, :cond_9

    .line 432
    invoke-interface {v9}, Lcoil/util/Logger;->getLevel()I

    move-result v10

    if-gt v10, v4, :cond_9

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is smaller than the requested size ("

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v1}, Lcoil/size/PixelSize;->getWidth()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/size/PixelSize;->getHeight()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v5, v4, v1, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    return v3

    .line 214
    :cond_a
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method private final validateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 263
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 266
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 269
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-interface {p1, v1}, Lcoil/bitmap/BitmapReferenceCounter;->increment(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method private final writeToMemoryCache(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Landroid/graphics/drawable/Drawable;Z)Z
    .locals 2

    .line 381
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_3

    .line 386
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object p3, v1

    :cond_1
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 388
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {p1, p2, v1, p4}, Lcoil/memory/StrongMemoryCache;->set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public final applyTransformations$coil_base_release(Lcoil/fetch/DrawableResult;Lcoil/request/ImageRequest;Lcoil/size/Size;Lcoil/decode/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/fetch/DrawableResult;",
            "Lcoil/request/ImageRequest;",
            "Lcoil/size/Size;",
            "Lcoil/decode/Options;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/DrawableResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lcoil/intercept/EngineInterceptor$applyTransformations$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;

    iget v2, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcoil/intercept/EngineInterceptor$applyTransformations$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 339
    iget v4, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->I$1:I

    iget v6, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->I$0:I

    iget-object v7, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lcoil/EventListener;

    iget-object v9, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lcoil/size/Size;

    iget-object v10, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcoil/request/ImageRequest;

    iget-object v11, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcoil/fetch/DrawableResult;

    iget-object v12, v1, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcoil/intercept/EngineInterceptor;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v9

    move v9, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    goto/16 :goto_3

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object p1

    .line 350
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    const-string v7, " to apply transformations: "

    const/4 v8, 0x4

    const-string v9, "EngineInterceptor"

    if-eqz v4, :cond_6

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 352
    sget-object v10, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    const-string/jumbo v11, "resultBitmap"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_1

    .line 355
    :cond_4
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 474
    invoke-interface {v10}, Lcoil/util/Logger;->getLevel()I

    move-result v11

    if-gt v11, v8, :cond_5

    .line 356
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Converting bitmap with config "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v9, v8, v4, v6}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :cond_5
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v16

    move-object/from16 v14, p3

    invoke-virtual/range {v11 .. v16}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 361
    :cond_6
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getLogger$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/Logger;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 478
    invoke-interface {v4}, Lcoil/util/Logger;->getLevel()I

    move-result v10

    if-gt v10, v8, :cond_7

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Converting drawable of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v9, v8, v7, v6}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    :cond_7
    invoke-static/range {p0 .. p0}, Lcoil/intercept/EngineInterceptor;->access$getDrawableDecoder$p(Lcoil/intercept/EngineInterceptor;)Lcoil/decode/DrawableDecoderService;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v15

    move-object/from16 v13, p3

    invoke-virtual/range {v10 .. v15}, Lcoil/decode/DrawableDecoderService;->convert(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    const-string v6, "input"

    .line 366
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-interface {v7, v6, v4}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 483
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move-object v11, v0

    move-object v12, v2

    move-object v8, v4

    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object v4, v3

    move-object v3, v1

    move-object/from16 v1, p3

    :goto_2
    if-ge v10, v9, :cond_9

    .line 484
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcoil/transform/Transformation;

    .line 368
    invoke-static {v12}, Lcoil/intercept/EngineInterceptor;->access$getBitmapPool$p(Lcoil/intercept/EngineInterceptor;)Lcoil/bitmap/BitmapPool;

    move-result-object v14

    const-string v15, "bitmap"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$2:Ljava/lang/Object;

    iput-object v1, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$3:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->L$5:Ljava/lang/Object;

    iput v10, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->I$0:I

    iput v9, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->I$1:I

    iput v5, v3, Lcoil/intercept/EngineInterceptor$applyTransformations$1;->label:I

    invoke-interface {v13, v14, v8, v1, v3}, Lcoil/transform/Transformation;->transform(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_8

    return-object v4

    :cond_8
    move-object/from16 v17, v11

    move-object v11, v0

    move-object v0, v8

    move-object/from16 v8, v17

    move/from16 v18, v10

    move-object v10, v6

    move/from16 v6, v18

    .line 339
    :goto_3
    check-cast v0, Landroid/graphics/Bitmap;

    .line 368
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v13

    invoke-static {v13}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    add-int/2addr v6, v5

    move-object/from16 v17, v8

    move-object v8, v0

    move-object v0, v11

    move-object/from16 v11, v17

    move-object/from16 v18, v10

    move v10, v6

    move-object/from16 v6, v18

    goto :goto_2

    :cond_9
    const-string/jumbo v1, "output"

    .line 370
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6, v8}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 371
    invoke-virtual {v6}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "context.resources"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    move-object v1, v3

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    .line 371
    invoke-static/range {p1 .. p6}, Lcoil/fetch/DrawableResult;->copy$default(Lcoil/fetch/DrawableResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;ILjava/lang/Object;)Lcoil/fetch/DrawableResult;

    move-result-object v0

    return-object v0
.end method

.method public final computeMemoryCacheKey$coil_base_release(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/size/Size;)Lcoil/memory/MemoryCache$Key;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcoil/fetch/Fetcher<",
            "Ljava/lang/Object;",
            ">;",
            "Lcoil/size/Size;",
            ")",
            "Lcoil/memory/MemoryCache$Key;"
        }
    .end annotation

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p3, p2}, Lcoil/fetch/Fetcher;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 155
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object p4, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    .line 405
    new-instance p4, Lcoil/memory/MemoryCache$Key$Complex;

    .line 407
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 409
    invoke-virtual {p1}, Lcoil/request/Parameters;->cacheKeys()Ljava/util/Map;

    move-result-object p1

    .line 405
    invoke-direct {p4, p2, v0, p3, p1}, Lcoil/memory/MemoryCache$Key$Complex;-><init>(Ljava/lang/String;Ljava/util/List;Lcoil/size/Size;Ljava/util/Map;)V

    check-cast p4, Lcoil/memory/MemoryCache$Key;

    goto :goto_1

    .line 158
    :cond_0
    sget-object p3, Lcoil/memory/MemoryCache$Key;->Companion:Lcoil/memory/MemoryCache$Key$Companion;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object p1

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 414
    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 415
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil/transform/Transformation;

    .line 412
    invoke-interface {v4}, Lcoil/transform/Transformation;->key()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 419
    invoke-virtual {p1}, Lcoil/request/Parameters;->cacheKeys()Ljava/util/Map;

    move-result-object p1

    .line 410
    new-instance p3, Lcoil/memory/MemoryCache$Key$Complex;

    invoke-direct {p3, p2, v0, p4, p1}, Lcoil/memory/MemoryCache$Key$Complex;-><init>(Ljava/lang/String;Ljava/util/List;Lcoil/size/Size;Ljava/util/Map;)V

    move-object p4, p3

    check-cast p4, Lcoil/memory/MemoryCache$Key;

    :goto_1
    return-object p4

    :cond_2
    return-object p3
.end method

.method public intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/Interceptor$Chain;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    instance-of v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcoil/intercept/EngineInterceptor$intercept$1;

    iget v2, v1, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcoil/intercept/EngineInterceptor$intercept$1;

    invoke-direct {v1, v12, v0}, Lcoil/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    iget-object v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 67
    iget v2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/4 v15, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v15, :cond_1

    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcoil/intercept/Interceptor$Chain;

    iget-object v0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v13, v2

    goto/16 :goto_8

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    :try_start_1
    instance-of v1, v13, Lcoil/intercept/RealInterceptorChain;

    if-eqz v1, :cond_c

    .line 72
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 75
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcoil/intercept/Interceptor$Chain;->getSize()Lcoil/size/Size;

    move-result-object v4

    iput-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v4, v13

    check-cast v4, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v4}, Lcoil/intercept/RealInterceptorChain;->getEventListener()Lcoil/EventListener;

    move-result-object v4

    iput-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcoil/EventListener;

    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    invoke-interface {v4, v5, v2}, Lcoil/EventListener;->mapStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 80
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, v12, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    invoke-static {v4, v2}, Lcoil/util/-ComponentRegistries;->mapData(Lcoil/ComponentRegistry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/EventListener;

    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcoil/request/ImageRequest;

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v2, v4, v6}, Lcoil/EventListener;->mapEnd(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 84
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcoil/util/-Requests;->fetcher(Lcoil/request/ImageRequest;Ljava/lang/Object;)Lcoil/fetch/Fetcher;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v12, Lcoil/intercept/EngineInterceptor;->registry:Lcoil/ComponentRegistry;

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcoil/util/-ComponentRegistries;->requireFetcher(Lcoil/ComponentRegistry;Ljava/lang/Object;)Lcoil/fetch/Fetcher;

    move-result-object v2

    :goto_1
    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 85
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcoil/fetch/Fetcher;

    iget-object v11, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcoil/size/Size;

    invoke-virtual {v12, v2, v4, v7, v11}, Lcoil/intercept/EngineInterceptor;->computeMemoryCacheKey$coil_base_release(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/fetch/Fetcher;Lcoil/size/Size;)Lcoil/memory/MemoryCache$Key;

    move-result-object v2

    :goto_2
    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/ImageRequest;

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v12, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    iget-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Lcoil/memory/MemoryCache$Key;

    invoke-virtual {v2, v11}, Lcoil/memory/MemoryCacheService;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 91
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/memory/RealMemoryCache$Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v11, "context.resources"

    if-eqz v2, :cond_7

    :try_start_2
    invoke-interface {v2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 90
    iget-object v7, v12, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    iget-object v15, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lcoil/request/ImageRequest;

    move-object/from16 v16, v14

    invoke-static {v2}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-virtual {v7, v15, v14}, Lcoil/memory/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 401
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v14

    goto :goto_5

    :cond_7
    move-object/from16 v16, v14

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_a

    .line 94
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/memory/MemoryCache$Key;

    iget-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcoil/memory/RealMemoryCache$Value;

    iget-object v14, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v15, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v15, Lcoil/size/Size;

    invoke-virtual {v12, v2, v7, v14, v15}, Lcoil/intercept/EngineInterceptor;->isCachedValueValid$coil_base_release(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 95
    new-instance v0, Lcoil/request/SuccessResult;

    .line 96
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/memory/RealMemoryCache$Value;

    invoke-interface {v2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 403
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 403
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/request/ImageRequest;

    .line 98
    new-instance v2, Lcoil/request/ImageResult$Metadata;

    .line 99
    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcoil/memory/MemoryCache$Key;

    .line 100
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcoil/memory/RealMemoryCache$Value;

    invoke-interface {v4}, Lcoil/memory/RealMemoryCache$Value;->isSampled()Z

    move-result v4

    .line 101
    sget-object v6, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    .line 102
    move-object v7, v13

    check-cast v7, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {v7}, Lcoil/intercept/RealInterceptorChain;->getCached()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    .line 98
    :goto_6
    invoke-direct {v2, v3, v4, v6, v15}, Lcoil/request/ImageResult$Metadata;-><init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V

    .line 95
    invoke-direct {v0, v5, v1, v2}, Lcoil/request/SuccessResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    return-object v0

    .line 108
    :cond_a
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    new-instance v15, Lcoil/intercept/EngineInterceptor$intercept$2;

    const/4 v11, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v11}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/intercept/Interceptor$Chain;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/jvm/functions/Function2;

    iput-object v12, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    invoke-static {v14, v15, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v16

    if-ne v1, v0, :cond_b

    return-object v0

    :cond_b
    :goto_7
    return-object v1

    :cond_c
    const-string v0, "Check failed."

    .line 70
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v12

    .line 138
    :goto_8
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    .line 141
    iget-object v1, v3, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    invoke-interface {v13}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcoil/memory/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object v0

    return-object v0

    .line 139
    :cond_d
    throw v0
.end method

.method public final isCachedValueValid$coil_base_release(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 2

    const-string v0, "cacheValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/intercept/EngineInterceptor;->isSizeValid(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealMemoryCache$Value;Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 176
    :cond_0
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/memory/RequestService;

    invoke-interface {p2}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcoil/memory/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    iget-object p1, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    .line 420
    invoke-interface {p1}, Lcoil/util/Logger;->getLevel()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": Cached bitmap is hardware-backed, which is incompatible with the request."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "EngineInterceptor"

    invoke-interface {p1, v1, p2, p3, v0}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return p4

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
