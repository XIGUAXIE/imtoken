.class public final Lcoil/RealImageLoader;
.super Ljava/lang/Object;
.source "RealImageLoader.kt"

# interfaces
.implements Lcoil/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/RealImageLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n+ 2 Extensions.kt\ncoil/util/-Extensions\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Lifecycles.kt\ncoil/util/-Lifecycles\n+ 5 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 6 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 7 Logs.kt\ncoil/util/-Logs\n+ 8 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 9 ComponentRegistry.kt\ncoil/ComponentRegistry$Builder\n*L\n1#1,283:1\n231#1,5:296\n246#1,5:301\n251#1,6:310\n257#1,2:319\n265#1,2:321\n267#1,5:327\n265#1,2:332\n267#1,5:338\n156#2:284\n156#2:286\n191#2,2:294\n195#2:316\n196#2:318\n195#2:347\n196#2:349\n195#2,2:350\n1#3:285\n1#3:317\n1#3:348\n19#4,5:287\n48#5:292\n26#6:293\n22#7,4:306\n22#7,4:323\n22#7,4:334\n22#7,4:343\n22#7,4:352\n22#7,4:356\n49#8,4:360\n55#9:364\n55#9:365\n55#9:366\n55#9:367\n63#9:368\n63#9:369\n63#9:370\n63#9:371\n63#9:372\n63#9:373\n63#9:374\n63#9:375\n*E\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n*L\n183#1,5:296\n187#1,5:301\n187#1,6:310\n187#1,2:319\n188#1,2:321\n188#1,5:327\n198#1,2:332\n198#1,5:338\n133#1:284\n157#1:286\n174#1,2:294\n187#1:316\n187#1:318\n256#1:347\n256#1:349\n256#1,2:350\n187#1:317\n256#1:348\n164#1,5:287\n170#1:292\n170#1:293\n187#1,4:306\n188#1,4:323\n198#1,4:334\n250#1,4:343\n266#1,4:352\n274#1,4:356\n85#1,4:360\n94#1:364\n95#1:365\n96#1:366\n97#1:367\n99#1:368\n100#1:369\n101#1:370\n102#1:371\n103#1:372\n104#1:373\n105#1:374\n106#1:375\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 X2\u00020\u0001:\u0001XBg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u0019J\u0010\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J\u0019\u0010:\u001a\u00020;2\u0006\u00108\u001a\u000209H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010<J;\u0010=\u001a\u00020;2\u0006\u00108\u001a\u0002092\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010C2\u0006\u0010D\u001a\u00020EH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010FJ!\u0010G\u001a\u00020;2\u0006\u0010H\u001a\u0002092\u0006\u0010>\u001a\u00020?H\u0083@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010IJ\u0018\u0010J\u001a\u00020K2\u0006\u00108\u001a\u0002092\u0006\u0010D\u001a\u00020EH\u0002J)\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010D\u001a\u00020EH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010QJ)\u0010R\u001a\u00020K2\u0006\u0010M\u001a\u00020S2\u0006\u0010O\u001a\u00020P2\u0006\u0010D\u001a\u00020EH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010TJ\u000e\u0010U\u001a\u00020K2\u0006\u0010V\u001a\u00020?J\u0008\u0010W\u001a\u00020KH\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020*X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006Y"
    }
    d2 = {
        "Lcoil/RealImageLoader;",
        "Lcoil/ImageLoader;",
        "context",
        "Landroid/content/Context;",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "bitmapPool",
        "Lcoil/bitmap/BitmapPool;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "strongMemoryCache",
        "Lcoil/memory/StrongMemoryCache;",
        "weakMemoryCache",
        "Lcoil/memory/WeakMemoryCache;",
        "callFactory",
        "Lokhttp3/Call$Factory;",
        "eventListenerFactory",
        "Lcoil/EventListener$Factory;",
        "componentRegistry",
        "Lcoil/ComponentRegistry;",
        "addLastModifiedToFileCacheKey",
        "",
        "launchInterceptorChainOnMainThread",
        "logger",
        "Lcoil/util/Logger;",
        "(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lokhttp3/Call$Factory;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;ZZLcoil/util/Logger;)V",
        "getBitmapPool",
        "()Lcoil/bitmap/BitmapPool;",
        "getDefaults",
        "()Lcoil/request/DefaultRequestOptions;",
        "delegateService",
        "Lcoil/memory/DelegateService;",
        "drawableDecoder",
        "Lcoil/decode/DrawableDecoderService;",
        "interceptors",
        "",
        "Lcoil/intercept/Interceptor;",
        "isShutdown",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getLogger",
        "()Lcoil/util/Logger;",
        "memoryCache",
        "Lcoil/memory/RealMemoryCache;",
        "getMemoryCache",
        "()Lcoil/memory/RealMemoryCache;",
        "memoryCacheService",
        "Lcoil/memory/MemoryCacheService;",
        "registry",
        "requestService",
        "Lcoil/memory/RequestService;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "systemCallbacks",
        "Lcoil/util/SystemCallbacks;",
        "enqueue",
        "Lcoil/request/Disposable;",
        "request",
        "Lcoil/request/ImageRequest;",
        "execute",
        "Lcoil/request/ImageResult;",
        "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeChain",
        "type",
        "",
        "size",
        "Lcoil/size/Size;",
        "cached",
        "Landroid/graphics/Bitmap;",
        "eventListener",
        "Lcoil/EventListener;",
        "(Lcoil/request/ImageRequest;ILcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeMain",
        "initialRequest",
        "(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCancel",
        "",
        "onError",
        "result",
        "Lcoil/request/ErrorResult;",
        "targetDelegate",
        "Lcoil/memory/TargetDelegate;",
        "(Lcoil/request/ErrorResult;Lcoil/memory/TargetDelegate;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSuccess",
        "Lcoil/request/SuccessResult;",
        "(Lcoil/request/SuccessResult;Lcoil/memory/TargetDelegate;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onTrimMemory",
        "level",
        "shutdown",
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
.field public static final Companion:Lcoil/RealImageLoader$Companion;

.field private static final TAG:Ljava/lang/String; = "RealImageLoader"


# instance fields
.field private final bitmapPool:Lcoil/bitmap/BitmapPool;

.field private final defaults:Lcoil/request/DefaultRequestOptions;

.field private final delegateService:Lcoil/memory/DelegateService;

.field private final drawableDecoder:Lcoil/decode/DrawableDecoderService;

.field private final eventListenerFactory:Lcoil/EventListener$Factory;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final launchInterceptorChainOnMainThread:Z

.field private final logger:Lcoil/util/Logger;

.field private final memoryCache:Lcoil/memory/RealMemoryCache;

.field private final memoryCacheService:Lcoil/memory/MemoryCacheService;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

.field private final registry:Lcoil/ComponentRegistry;

.field private final requestService:Lcoil/memory/RequestService;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final strongMemoryCache:Lcoil/memory/StrongMemoryCache;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;

.field private final weakMemoryCache:Lcoil/memory/WeakMemoryCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/RealImageLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/RealImageLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/RealImageLoader;->Companion:Lcoil/RealImageLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lokhttp3/Call$Factory;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;ZZLcoil/util/Logger;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapPool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "strongMemoryCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "weakMemoryCache"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListenerFactory"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentRegistry"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    iput-object p3, p0, Lcoil/RealImageLoader;->bitmapPool:Lcoil/bitmap/BitmapPool;

    iput-object p4, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iput-object p5, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    iput-object p6, p0, Lcoil/RealImageLoader;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    iput-object p8, p0, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    iput-boolean p11, p0, Lcoil/RealImageLoader;->launchInterceptorChainOnMainThread:Z

    iput-object p12, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 84
    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    invoke-virtual {p3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, p3}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 360
    new-instance p3, Lcoil/RealImageLoader$$special$$inlined$CoroutineExceptionHandler$1;

    sget-object p4, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    check-cast p4, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p3, p4, p0}, Lcoil/RealImageLoader$$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcoil/RealImageLoader;)V

    check-cast p3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 363
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 84
    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 86
    new-instance p2, Lcoil/memory/DelegateService;

    move-object p3, p0

    check-cast p3, Lcoil/ImageLoader;

    iget-object p4, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iget-object p5, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    invoke-direct {p2, p3, p4, p5}, Lcoil/memory/DelegateService;-><init>(Lcoil/ImageLoader;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/util/Logger;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    .line 87
    new-instance p2, Lcoil/memory/MemoryCacheService;

    iget-object p3, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iget-object p4, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    iget-object p5, p0, Lcoil/RealImageLoader;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-direct {p2, p3, p4, p5}, Lcoil/memory/MemoryCacheService;-><init>(Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    .line 88
    new-instance p2, Lcoil/memory/RequestService;

    iget-object p3, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    invoke-direct {p2, p3}, Lcoil/memory/RequestService;-><init>(Lcoil/util/Logger;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->requestService:Lcoil/memory/RequestService;

    .line 89
    new-instance p2, Lcoil/memory/RealMemoryCache;

    iget-object p3, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    iget-object p4, p0, Lcoil/RealImageLoader;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    iget-object p5, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p2, p3, p4, p5}, Lcoil/memory/RealMemoryCache;-><init>(Lcoil/memory/StrongMemoryCache;Lcoil/memory/WeakMemoryCache;Lcoil/bitmap/BitmapReferenceCounter;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->memoryCache:Lcoil/memory/RealMemoryCache;

    .line 90
    new-instance p2, Lcoil/decode/DrawableDecoderService;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object p3

    invoke-direct {p2, p3}, Lcoil/decode/DrawableDecoderService;-><init>(Lcoil/bitmap/BitmapPool;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    .line 91
    new-instance p2, Lcoil/util/SystemCallbacks;

    invoke-direct {p2, p0, p1}, Lcoil/util/SystemCallbacks;-><init>(Lcoil/RealImageLoader;Landroid/content/Context;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    .line 92
    invoke-virtual {p9}, Lcoil/ComponentRegistry;->newBuilder()Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 94
    new-instance p3, Lcoil/map/StringMapper;

    invoke-direct {p3}, Lcoil/map/StringMapper;-><init>()V

    check-cast p3, Lcoil/map/Mapper;

    .line 364
    const-class p4, Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 95
    new-instance p3, Lcoil/map/FileUriMapper;

    invoke-direct {p3}, Lcoil/map/FileUriMapper;-><init>()V

    check-cast p3, Lcoil/map/Mapper;

    .line 365
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 96
    new-instance p3, Lcoil/map/ResourceUriMapper;

    invoke-direct {p3, p1}, Lcoil/map/ResourceUriMapper;-><init>(Landroid/content/Context;)V

    check-cast p3, Lcoil/map/Mapper;

    .line 366
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 97
    new-instance p3, Lcoil/map/ResourceIntMapper;

    invoke-direct {p3, p1}, Lcoil/map/ResourceIntMapper;-><init>(Landroid/content/Context;)V

    check-cast p3, Lcoil/map/Mapper;

    .line 367
    const-class p4, Ljava/lang/Integer;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 99
    new-instance p3, Lcoil/fetch/HttpUriFetcher;

    invoke-direct {p3, p7}, Lcoil/fetch/HttpUriFetcher;-><init>(Lokhttp3/Call$Factory;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 368
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 100
    new-instance p3, Lcoil/fetch/HttpUrlFetcher;

    invoke-direct {p3, p7}, Lcoil/fetch/HttpUrlFetcher;-><init>(Lokhttp3/Call$Factory;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 369
    const-class p4, Lokhttp3/HttpUrl;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 101
    new-instance p3, Lcoil/fetch/FileFetcher;

    invoke-direct {p3, p10}, Lcoil/fetch/FileFetcher;-><init>(Z)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 370
    const-class p4, Ljava/io/File;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 102
    new-instance p3, Lcoil/fetch/AssetUriFetcher;

    invoke-direct {p3, p1}, Lcoil/fetch/AssetUriFetcher;-><init>(Landroid/content/Context;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 371
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 103
    new-instance p3, Lcoil/fetch/ContentUriFetcher;

    invoke-direct {p3, p1}, Lcoil/fetch/ContentUriFetcher;-><init>(Landroid/content/Context;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 372
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 104
    new-instance p3, Lcoil/fetch/ResourceUriFetcher;

    iget-object p4, p0, Lcoil/RealImageLoader;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    invoke-direct {p3, p1, p4}, Lcoil/fetch/ResourceUriFetcher;-><init>(Landroid/content/Context;Lcoil/decode/DrawableDecoderService;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 373
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 105
    new-instance p3, Lcoil/fetch/DrawableFetcher;

    iget-object p4, p0, Lcoil/RealImageLoader;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    invoke-direct {p3, p4}, Lcoil/fetch/DrawableFetcher;-><init>(Lcoil/decode/DrawableDecoderService;)V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 374
    const-class p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 106
    new-instance p3, Lcoil/fetch/BitmapFetcher;

    invoke-direct {p3}, Lcoil/fetch/BitmapFetcher;-><init>()V

    check-cast p3, Lcoil/fetch/Fetcher;

    .line 375
    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p2

    .line 108
    new-instance p3, Lcoil/decode/BitmapFactoryDecoder;

    invoke-direct {p3, p1}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Landroid/content/Context;)V

    check-cast p3, Lcoil/decode/Decoder;

    invoke-virtual {p2, p3}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/decode/Decoder;)Lcoil/ComponentRegistry$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object p1

    iput-object p1, p0, Lcoil/RealImageLoader;->registry:Lcoil/ComponentRegistry;

    .line 110
    invoke-virtual {p1}, Lcoil/ComponentRegistry;->getInterceptors$coil_base_release()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-instance p12, Lcoil/intercept/EngineInterceptor;

    iget-object p3, p0, Lcoil/RealImageLoader;->registry:Lcoil/ComponentRegistry;

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object p4

    iget-object p5, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 111
    iget-object p6, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    iget-object p7, p0, Lcoil/RealImageLoader;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    iget-object p8, p0, Lcoil/RealImageLoader;->requestService:Lcoil/memory/RequestService;

    iget-object p9, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    iget-object p10, p0, Lcoil/RealImageLoader;->drawableDecoder:Lcoil/decode/DrawableDecoderService;

    iget-object p11, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    move-object p2, p12

    .line 110
    invoke-direct/range {p2 .. p11}, Lcoil/intercept/EngineInterceptor;-><init>(Lcoil/ComponentRegistry;Lcoil/bitmap/BitmapPool;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/memory/StrongMemoryCache;Lcoil/memory/MemoryCacheService;Lcoil/memory/RequestService;Lcoil/util/SystemCallbacks;Lcoil/decode/DrawableDecoderService;Lcoil/util/Logger;)V

    invoke-static {p1, p12}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    .line 112
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcoil/RealImageLoader;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLaunchInterceptorChainOnMainThread$p(Lcoil/RealImageLoader;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcoil/RealImageLoader;->launchInterceptorChainOnMainThread:Z

    return p0
.end method

.method public static final synthetic access$getReferenceCounter$p(Lcoil/RealImageLoader;)Lcoil/bitmap/BitmapReferenceCounter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-object p0
.end method

.method private final synthetic executeChain(Lcoil/request/ImageRequest;ILcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "I",
            "Lcoil/size/Size;",
            "Landroid/graphics/Bitmap;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p1

    move-object/from16 v10, p6

    .line 231
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v12, Lcoil/intercept/RealInterceptorChain;

    invoke-static {p0}, Lcoil/RealImageLoader;->access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v12

    move-object v1, p1

    move v2, p2

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcoil/intercept/RealInterceptorChain;-><init>(Lcoil/request/ImageRequest;ILjava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;)V

    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 232
    invoke-static {p0}, Lcoil/RealImageLoader;->access$getLaunchInterceptorChainOnMainThread$p(Lcoil/RealImageLoader;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcoil/intercept/RealInterceptorChain;

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {v0, p1, v10}, Lcoil/intercept/RealInterceptorChain;->proceed(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v0, Lcoil/request/ImageResult;

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcoil/RealImageLoader$executeChain$2;

    const/4 v4, 0x0

    invoke-direct {v3, v11, p1, v4}, Lcoil/RealImageLoader$executeChain$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0, v3, v10}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast v0, Lcoil/request/ImageResult;

    :goto_0
    return-object v0
.end method

.method private final onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V
    .locals 5

    .line 274
    iget-object v0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 356
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\ud83c\udfd7  Cancelled - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "RealImageLoader"

    invoke-interface {v0, v4, v1, v2, v3}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_0
    invoke-interface {p2, p1}, Lcoil/EventListener;->onCancel(Lcoil/request/ImageRequest;)V

    .line 276
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcoil/request/ImageRequest$Listener;->onCancel(Lcoil/request/ImageRequest;)V

    :cond_1
    return-void
.end method

.method private final synthetic onError(Lcoil/request/ErrorResult;Lcoil/memory/TargetDelegate;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ErrorResult;",
            "Lcoil/memory/TargetDelegate;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    .line 352
    invoke-interface {v1}, Lcoil/util/Logger;->getLevel()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\ud83d\udea8 Failed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RealImageLoader"

    invoke-interface {v1, v5, v3, v4, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_0
    check-cast v2, Lcoil/request/ImageResult$Metadata;

    invoke-static {p2, v2}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    const/4 v1, 0x0

    .line 268
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {p2, p1, p4}, Lcoil/memory/TargetDelegate;->error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 269
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 270
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 271
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final synthetic onSuccess(Lcoil/request/SuccessResult;Lcoil/memory/TargetDelegate;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/SuccessResult;",
            "Lcoil/memory/TargetDelegate;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    :try_start_0
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcoil/request/ImageResult$Metadata;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v3

    .line 250
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "RealImageLoader"

    const/4 v6, 0x4

    .line 343
    invoke-interface {v4}, Lcoil/util/Logger;->getLevel()I

    move-result v7

    if-gt v7, v6, :cond_0

    .line 250
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcoil/util/-Extensions;->getEmoji(Lcoil/decode/DataSource;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Successful ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcoil/decode/DataSource;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") - "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v3, v7}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :cond_0
    invoke-static {p2, v2}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    const/4 v3, 0x0

    .line 252
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-virtual {p2, p1, p4}, Lcoil/memory/TargetDelegate;->success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 253
    invoke-interface {p3, v1, v2}, Lcoil/EventListener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    .line 254
    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2, v1, v2}, Lcoil/request/ImageRequest$Listener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 256
    invoke-static {p0}, Lcoil/RealImageLoader;->access$getReferenceCounter$p(Lcoil/RealImageLoader;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object p2

    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 347
    instance-of p3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p2, p1}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 349
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 258
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p2

    .line 257
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 256
    invoke-static {p0}, Lcoil/RealImageLoader;->access$getReferenceCounter$p(Lcoil/RealImageLoader;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object p3

    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 350
    instance-of p4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_3

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p3, p1}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 351
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method


# virtual methods
.method public enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
    .locals 7

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcoil/RealImageLoader$enqueue$job$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcoil/RealImageLoader$enqueue$job$1;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    instance-of v1, v1, Lcoil/target/ViewTarget;

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    check-cast v1, Lcoil/target/ViewTarget;

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;

    move-result-object v0

    .line 124
    new-instance v1, Lcoil/request/ViewTargetDisposable;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p1

    check-cast p1, Lcoil/target/ViewTarget;

    invoke-direct {v1, v0, p1}, Lcoil/request/ViewTargetDisposable;-><init>(Ljava/util/UUID;Lcoil/target/ViewTarget;)V

    check-cast v1, Lcoil/request/Disposable;

    goto :goto_0

    .line 126
    :cond_0
    new-instance p1, Lcoil/request/BaseTargetDisposable;

    invoke-direct {p1, v0}, Lcoil/request/BaseTargetDisposable;-><init>(Lkotlinx/coroutines/Job;)V

    move-object v1, p1

    check-cast v1, Lcoil/request/Disposable;

    :goto_0
    return-object v1
.end method

.method public execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Lcoil/target/ViewTarget;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    check-cast v0, Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 284
    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 133
    invoke-virtual {v0, v1}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;

    .line 137
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcoil/RealImageLoader$execute$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcoil/RealImageLoader$execute$2;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    instance-of v3, v2, Lcoil/RealImageLoader$executeMain$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcoil/RealImageLoader$executeMain$1;

    iget v4, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcoil/RealImageLoader$executeMain$1;

    invoke-direct {v3, v1, v2}, Lcoil/RealImageLoader$executeMain$1;-><init>(Lcoil/RealImageLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 143
    iget v5, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const-string v6, " - "

    const-string/jumbo v7, "\ud83d\udea8 Failed - "

    const-string v8, "RealImageLoader"

    packed-switch v5, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_0
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageRequest;

    iget-object v4, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcoil/request/ErrorResult;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v3, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcoil/EventListener;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :pswitch_1
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageRequest;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageResult;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lcoil/memory/RequestDelegate;

    iget-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v12, Lcoil/memory/TargetDelegate;

    iget-object v13, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcoil/EventListener;

    iget-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcoil/RealImageLoader;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    :goto_1
    move-object v5, v11

    move-object v9, v13

    goto/16 :goto_16

    :pswitch_2
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageResult$Metadata;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lcoil/RealImageLoader;

    iget-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lcoil/request/ImageResult;

    iget-object v13, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v13, Lcoil/memory/RequestDelegate;

    iget-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lcoil/memory/TargetDelegate;

    iget-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lcoil/EventListener;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lcoil/request/ImageRequest;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcoil/RealImageLoader;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v6

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    :goto_2
    move-object v1, v15

    move-object v15, v10

    goto/16 :goto_10

    :pswitch_3
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcoil/memory/TargetDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcoil/RealImageLoader;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto/16 :goto_b

    :pswitch_4
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcoil/memory/TargetDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcoil/RealImageLoader;

    :try_start_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_9

    :pswitch_5
    iget v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lcoil/memory/RequestDelegate;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Lcoil/memory/TargetDelegate;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lcoil/EventListener;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v14, v11

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v15, v11

    check-cast v15, Lcoil/RealImageLoader;

    :try_start_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v18, v0

    move-object/from16 v23, v5

    move-object v5, v9

    move-object v9, v10

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    move-object v5, v9

    move-object v9, v10

    goto/16 :goto_16

    :pswitch_6
    iget v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lcoil/memory/RequestDelegate;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v12, v9

    check-cast v12, Lcoil/memory/TargetDelegate;

    iget-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcoil/EventListener;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v14, v10

    check-cast v14, Lcoil/request/ImageRequest;

    iget-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v15, v10

    check-cast v15, Lcoil/RealImageLoader;

    :try_start_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    goto/16 :goto_16

    :pswitch_7
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    iget-object v2, v1, Lcoil/RealImageLoader;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    if-eqz v2, :cond_1e

    move-object/from16 v2, p1

    const/4 v9, 0x0

    .line 148
    invoke-static {v2, v9, v5, v9}, Lcoil/request/ImageRequest;->newBuilder$default(Lcoil/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcoil/RealImageLoader;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcoil/request/ImageRequest$Builder;->defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v14

    .line 151
    iget-object v2, v1, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    invoke-interface {v2, v14}, Lcoil/EventListener$Factory;->create(Lcoil/request/ImageRequest;)Lcoil/EventListener;

    move-result-object v9

    .line 154
    iget-object v2, v1, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v10

    invoke-virtual {v2, v10, v0, v9}, Lcoil/memory/DelegateService;->createTargetDelegate(Lcoil/target/Target;ILcoil/EventListener;)Lcoil/memory/TargetDelegate;

    move-result-object v12

    .line 157
    iget-object v2, v1, Lcoil/RealImageLoader;->delegateService:Lcoil/memory/DelegateService;

    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v10

    .line 286
    sget-object v11, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v11, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v10, v11}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lkotlinx/coroutines/Job;

    .line 157
    invoke-virtual {v2, v14, v12, v10}, Lcoil/memory/DelegateService;->createRequestDelegate(Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)Lcoil/memory/RequestDelegate;

    move-result-object v2

    .line 161
    :try_start_7
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    if-nez v10, :cond_18

    if-nez v0, :cond_3

    .line 164
    :try_start_8
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v10

    .line 287
    invoke-virtual {v10}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    sget-object v13, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v11, v13}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_4

    .line 290
    :cond_1
    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    iput v5, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v10, v3}, Lcoil/util/-Lifecycles;->observeStarted(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v5, v4, :cond_2

    return-object v4

    :cond_2
    move-object v15, v1

    move-object v5, v2

    :goto_3
    move-object v2, v5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v15, v1

    goto/16 :goto_15

    :cond_3
    :goto_4
    move-object v15, v1

    .line 167
    :goto_5
    :try_start_9
    iget-object v5, v15, Lcoil/RealImageLoader;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcoil/memory/MemoryCacheService;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcoil/memory/RealMemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    goto :goto_6

    :cond_4
    const/4 v5, 0x0

    :goto_6
    const/4 v10, 0x0

    .line 169
    :try_start_a
    move-object v11, v10

    check-cast v11, Lcoil/request/ImageResult$Metadata;

    invoke-static {v12, v11}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    if-eqz v5, :cond_5

    .line 170
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 292
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "context.resources"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v10, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 292
    check-cast v11, Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 170
    :cond_5
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :goto_7
    invoke-virtual {v12, v11, v5}, Lcoil/memory/TargetDelegate;->start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 171
    invoke-interface {v9, v14}, Lcoil/EventListener;->onStart(Lcoil/request/ImageRequest;)V

    .line 172
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10, v14}, Lcoil/request/ImageRequest$Listener;->onStart(Lcoil/request/ImageRequest;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    .line 174
    :cond_6
    :try_start_b
    iget-object v10, v15, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    if-eqz v5, :cond_7

    .line 294
    invoke-interface {v10, v5}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 178
    :cond_7
    invoke-interface {v9, v14}, Lcoil/EventListener;->resolveSizeStart(Lcoil/request/ImageRequest;)V

    .line 179
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v10

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput v0, v3, Lcoil/RealImageLoader$executeMain$1;->I$0:I

    const/4 v11, 0x2

    iput v11, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-interface {v10, v3}, Lcoil/size/SizeResolver;->size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    if-ne v10, v4, :cond_8

    return-object v4

    :cond_8
    move/from16 v18, v0

    move-object/from16 v23, v5

    move-object v5, v2

    move-object v2, v10

    .line 143
    :goto_8
    :try_start_c
    move-object v0, v2

    check-cast v0, Lcoil/size/Size;

    .line 180
    invoke-interface {v9, v14, v0}, Lcoil/EventListener;->resolveSizeEnd(Lcoil/request/ImageRequest;Lcoil/size/Size;)V

    .line 296
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v10, Lcoil/intercept/RealInterceptorChain;

    invoke-static {v15}, Lcoil/RealImageLoader;->access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v14

    move-object/from16 v21, v14

    move-object/from16 v22, v0

    move-object/from16 v24, v9

    invoke-direct/range {v16 .. v24}, Lcoil/intercept/RealInterceptorChain;-><init>(Lcoil/request/ImageRequest;ILjava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Landroid/graphics/Bitmap;Lcoil/EventListener;)V

    iput-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 297
    invoke-static {v15}, Lcoil/RealImageLoader;->access$getLaunchInterceptorChainOnMainThread$p(Lcoil/RealImageLoader;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 298
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcoil/intercept/RealInterceptorChain;

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v0, v14, v3}, Lcoil/intercept/RealInterceptorChain;->proceed(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    :cond_9
    :goto_9
    check-cast v2, Lcoil/request/ImageResult;

    :goto_a
    move-object v11, v5

    move-object v13, v9

    move-object v5, v2

    goto :goto_c

    .line 300
    :cond_a
    invoke-virtual {v14}, Lcoil/request/ImageRequest;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcoil/RealImageLoader$executeChain$2;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v14, v11}, Lcoil/RealImageLoader$executeChain$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v0, v10, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_b

    return-object v4

    .line 143
    :cond_b
    :goto_b
    check-cast v2, Lcoil/request/ImageResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_a

    .line 187
    :goto_c
    :try_start_d
    instance-of v0, v5, Lcoil/request/SuccessResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_12

    .line 302
    :try_start_e
    move-object v0, v5

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-virtual {v0}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 303
    move-object v2, v5

    check-cast v2, Lcoil/request/SuccessResult;

    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcoil/request/ImageResult$Metadata;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v9

    .line 305
    invoke-virtual {v15}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 306
    invoke-interface {v10}, Lcoil/util/Logger;->getLevel()I

    move-result v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    move-object/from16 v16, v6

    const/4 v6, 0x4

    if-gt v1, v6, :cond_c

    .line 305
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lcoil/util/-Extensions;->getEmoji(Lcoil/decode/DataSource;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Successful ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcoil/decode/DataSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") - "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    const/4 v9, 0x0

    invoke-interface {v10, v8, v6, v1, v9}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    :cond_d
    move-object/from16 v16, v6

    .line 310
    :goto_d
    invoke-static {v12, v2}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 311
    move-object v1, v5

    check-cast v1, Lcoil/request/SuccessResult;

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v12, v1, v3}, Lcoil/memory/TargetDelegate;->success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-ne v1, v4, :cond_e

    return-object v4

    :cond_e
    move-object v9, v14

    move-object v10, v15

    move-object v14, v12

    move-object v12, v5

    move-object v15, v13

    move-object v5, v0

    move-object v0, v2

    move-object v13, v11

    move-object v11, v10

    .line 312
    :goto_e
    :try_start_10
    invoke-interface {v15, v5, v0}, Lcoil/EventListener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    .line 313
    invoke-virtual {v5}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1, v5, v0}, Lcoil/request/ImageRequest$Listener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 315
    :cond_f
    :try_start_11
    invoke-static {v11}, Lcoil/RealImageLoader;->access$getReferenceCounter$p(Lcoil/RealImageLoader;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v0

    move-object v1, v12

    check-cast v1, Lcoil/request/SuccessResult;

    invoke-virtual {v1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 316
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_10

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v0, v1}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_10
    move-object v5, v12

    move-object v11, v13

    goto/16 :goto_14

    :catchall_6
    move-exception v0

    move-object v5, v13

    move-object v12, v14

    move-object/from16 v6, v16

    move-object v14, v9

    move-object v9, v15

    move-object v15, v10

    goto/16 :goto_16

    :catchall_7
    move-exception v0

    goto/16 :goto_2

    :catchall_8
    move-exception v0

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object/from16 v16, v6

    :goto_f
    move-object v1, v13

    move-object v9, v14

    move-object v13, v11

    move-object v14, v12

    move-object v11, v15

    move-object v12, v5

    .line 315
    :goto_10
    :try_start_12
    invoke-static {v11}, Lcoil/RealImageLoader;->access$getReferenceCounter$p(Lcoil/RealImageLoader;)Lcoil/bitmap/BitmapReferenceCounter;

    move-result-object v2

    check-cast v12, Lcoil/request/SuccessResult;

    invoke-virtual {v12}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 316
    instance-of v6, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_11

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-interface {v2, v5}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 318
    :cond_11
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    move-object v5, v13

    move-object v12, v14

    move-object/from16 v6, v16

    move-object v14, v9

    move-object v9, v1

    goto/16 :goto_16

    :cond_12
    move-object/from16 v16, v6

    .line 188
    :try_start_13
    instance-of v0, v5, Lcoil/request/ErrorResult;

    if-eqz v0, :cond_16

    .line 321
    move-object v0, v5

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 322
    invoke-virtual {v15}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 323
    invoke-interface {v1}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    const/4 v6, 0x4

    if-gt v2, v6, :cond_13

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move-object/from16 v6, v16

    :try_start_14
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v5

    check-cast v9, Lcoil/request/ErrorResult;

    invoke-virtual {v9}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-interface {v1, v8, v9, v2, v10}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_13
    move-object/from16 v6, v16

    .line 326
    :goto_11
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_12

    :cond_14
    move-object/from16 v6, v16

    :goto_12
    const/4 v1, 0x0

    .line 327
    move-object v10, v1

    check-cast v10, Lcoil/request/ImageResult$Metadata;

    invoke-static {v12, v10}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 328
    move-object v1, v5

    check-cast v1, Lcoil/request/ErrorResult;

    iput-object v15, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v12, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v12, v1, v3}, Lcoil/memory/TargetDelegate;->error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_15

    return-object v4

    .line 329
    :cond_15
    :goto_13
    move-object v1, v5

    check-cast v1, Lcoil/request/ErrorResult;

    invoke-virtual {v1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 330
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v1

    if-eqz v1, :cond_16

    move-object v2, v5

    check-cast v2, Lcoil/request/ErrorResult;

    invoke-virtual {v2}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 202
    :cond_16
    :goto_14
    invoke-virtual {v11}, Lcoil/memory/RequestDelegate;->complete()V

    return-object v5

    :catchall_b
    move-exception v0

    move-object/from16 v6, v16

    goto/16 :goto_1

    :catchall_c
    move-exception v0

    .line 174
    :try_start_15
    iget-object v1, v15, Lcoil/RealImageLoader;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    if-eqz v5, :cond_17

    .line 294
    invoke-interface {v1, v5}, Lcoil/bitmap/BitmapReferenceCounter;->decrement(Landroid/graphics/Bitmap;)Z

    .line 295
    :cond_17
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_15

    .line 161
    :cond_18
    :try_start_16
    new-instance v0, Lcoil/request/NullRequestDataException;

    invoke-direct {v0}, Lcoil/request/NullRequestDataException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :catchall_e
    move-exception v0

    move-object/from16 v15, p0

    :goto_15
    move-object v5, v2

    .line 192
    :goto_16
    :try_start_17
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d

    .line 197
    iget-object v1, v15, Lcoil/RealImageLoader;->requestService:Lcoil/memory/RequestService;

    invoke-virtual {v1, v14, v0}, Lcoil/memory/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    .line 333
    invoke-virtual {v15}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 334
    invoke-interface {v2}, Lcoil/util/Logger;->getLevel()I

    move-result v10

    const/4 v11, 0x4

    if-gt v10, v11, :cond_19

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v10, 0x0

    invoke-interface {v2, v8, v7, v6, v10}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :cond_19
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1a
    const/4 v2, 0x0

    .line 338
    move-object v10, v2

    check-cast v10, Lcoil/request/ImageResult$Metadata;

    invoke-static {v12, v10}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 339
    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$5:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$6:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$7:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$8:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-virtual {v12, v0, v3}, Lcoil/memory/TargetDelegate;->error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1b

    return-object v4

    :cond_1b
    move-object v4, v0

    move-object v0, v1

    move-object v3, v9

    .line 340
    :goto_17
    invoke-virtual {v4}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    .line 341
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v4}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 202
    :cond_1c
    invoke-virtual {v5}, Lcoil/memory/RequestDelegate;->complete()V

    return-object v4

    .line 193
    :cond_1d
    :try_start_18
    invoke-direct {v15, v14, v9}, Lcoil/RealImageLoader;->onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V

    .line 194
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 202
    :goto_18
    invoke-virtual {v5}, Lcoil/memory/RequestDelegate;->complete()V

    throw v0

    .line 145
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The image loader is shutdown."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBitmapPool()Lcoil/bitmap/BitmapPool;
    .locals 1

    .line 72
    iget-object v0, p0, Lcoil/RealImageLoader;->bitmapPool:Lcoil/bitmap/BitmapPool;

    return-object v0
.end method

.method public getDefaults()Lcoil/request/DefaultRequestOptions;
    .locals 1

    .line 71
    iget-object v0, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object v0
.end method

.method public final getLogger()Lcoil/util/Logger;
    .locals 1

    .line 81
    iget-object v0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    return-object v0
.end method

.method public bridge synthetic getMemoryCache()Lcoil/memory/MemoryCache;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/RealMemoryCache;

    move-result-object v0

    check-cast v0, Lcoil/memory/MemoryCache;

    return-object v0
.end method

.method public getMemoryCache()Lcoil/memory/RealMemoryCache;
    .locals 1

    .line 89
    iget-object v0, p0, Lcoil/RealImageLoader;->memoryCache:Lcoil/memory/RealMemoryCache;

    return-object v0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/StrongMemoryCache;->trimMemory(I)V

    .line 209
    iget-object v0, p0, Lcoil/RealImageLoader;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0, p1}, Lcoil/memory/WeakMemoryCache;->trimMemory(I)V

    .line 210
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lcoil/bitmap/BitmapPool;->trimMemory(I)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcoil/RealImageLoader;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    invoke-virtual {v0}, Lcoil/util/SystemCallbacks;->shutdown()V

    .line 219
    iget-object v0, p0, Lcoil/RealImageLoader;->strongMemoryCache:Lcoil/memory/StrongMemoryCache;

    invoke-interface {v0}, Lcoil/memory/StrongMemoryCache;->clearMemory()V

    .line 220
    iget-object v0, p0, Lcoil/RealImageLoader;->weakMemoryCache:Lcoil/memory/WeakMemoryCache;

    invoke-interface {v0}, Lcoil/memory/WeakMemoryCache;->clearMemory()V

    .line 221
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getBitmapPool()Lcoil/bitmap/BitmapPool;

    move-result-object v0

    invoke-interface {v0}, Lcoil/bitmap/BitmapPool;->clear()V

    return-void
.end method
