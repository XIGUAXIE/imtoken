.class public final Lcoil/memory/DelegateService;
.super Ljava/lang/Object;
.source "DelegateService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegateService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelegateService.kt\ncoil/memory/DelegateService\n+ 2 Extensions.kt\ncoil/util/-Extensions\n*L\n1#1,82:1\n75#2:83\n*E\n*S KotlinDebug\n*F\n+ 1 DelegateService.kt\ncoil/memory/DelegateService\n*L\n70#1:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\"\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcoil/memory/DelegateService;",
        "",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "referenceCounter",
        "Lcoil/bitmap/BitmapReferenceCounter;",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/ImageLoader;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/util/Logger;)V",
        "createRequestDelegate",
        "Lcoil/memory/RequestDelegate;",
        "request",
        "Lcoil/request/ImageRequest;",
        "targetDelegate",
        "Lcoil/memory/TargetDelegate;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "createTargetDelegate",
        "target",
        "Lcoil/target/Target;",
        "type",
        "",
        "eventListener",
        "Lcoil/EventListener;",
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
.field private final imageLoader:Lcoil/ImageLoader;

.field private final logger:Lcoil/util/Logger;

.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;


# direct methods
.method public constructor <init>(Lcoil/ImageLoader;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/util/Logger;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "referenceCounter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/DelegateService;->imageLoader:Lcoil/ImageLoader;

    iput-object p2, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iput-object p3, p0, Lcoil/memory/DelegateService;->logger:Lcoil/util/Logger;

    return-void
.end method


# virtual methods
.method public final createRequestDelegate(Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)Lcoil/memory/RequestDelegate;
    .locals 4

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    .line 58
    instance-of v2, v1, Lcoil/target/ViewTarget;

    if-eqz v2, :cond_1

    .line 59
    new-instance v2, Lcoil/memory/ViewTargetRequestDelegate;

    iget-object v3, p0, Lcoil/memory/DelegateService;->imageLoader:Lcoil/ImageLoader;

    invoke-direct {v2, v3, p1, p2, p3}, Lcoil/memory/ViewTargetRequestDelegate;-><init>(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)V

    check-cast v2, Lcoil/memory/RequestDelegate;

    .line 60
    move-object p1, v2

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 62
    instance-of p1, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_0

    .line 63
    move-object p1, v1

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 64
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    check-cast v1, Lcoil/target/ViewTarget;

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p1

    move-object p2, v2

    check-cast p2, Lcoil/memory/ViewTargetRequestDelegate;

    invoke-virtual {p1, p2}, Lcoil/memory/ViewTargetRequestManager;->setCurrentRequest(Lcoil/memory/ViewTargetRequestDelegate;)V

    .line 70
    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p1

    invoke-interface {v1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcoil/memory/ViewTargetRequestManager;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Lcoil/memory/BaseRequestDelegate;

    invoke-direct {p1, v0, p3}, Lcoil/memory/BaseRequestDelegate;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V

    move-object v2, p1

    check-cast v2, Lcoil/memory/RequestDelegate;

    .line 76
    move-object p1, v2

    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final createTargetDelegate(Lcoil/target/Target;ILcoil/EventListener;)Lcoil/memory/TargetDelegate;
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lcoil/memory/InvalidatableEmptyTargetDelegate;

    iget-object p2, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    invoke-direct {p1, p2}, Lcoil/memory/InvalidatableEmptyTargetDelegate;-><init>(Lcoil/bitmap/BitmapReferenceCounter;)V

    check-cast p1, Lcoil/memory/TargetDelegate;

    goto :goto_0

    .line 37
    :cond_0
    new-instance p2, Lcoil/memory/InvalidatableTargetDelegate;

    iget-object v0, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iget-object v1, p0, Lcoil/memory/DelegateService;->logger:Lcoil/util/Logger;

    invoke-direct {p2, p1, v0, p3, v1}, Lcoil/memory/InvalidatableTargetDelegate;-><init>(Lcoil/target/Target;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    move-object p1, p2

    check-cast p1, Lcoil/memory/TargetDelegate;

    goto :goto_0

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid type."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    if-nez p1, :cond_3

    .line 40
    sget-object p1, Lcoil/memory/EmptyTargetDelegate;->INSTANCE:Lcoil/memory/EmptyTargetDelegate;

    check-cast p1, Lcoil/memory/TargetDelegate;

    goto :goto_0

    .line 41
    :cond_3
    instance-of p2, p1, Lcoil/target/PoolableViewTarget;

    if-eqz p2, :cond_4

    new-instance p2, Lcoil/memory/PoolableTargetDelegate;

    check-cast p1, Lcoil/target/PoolableViewTarget;

    iget-object v0, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iget-object v1, p0, Lcoil/memory/DelegateService;->logger:Lcoil/util/Logger;

    invoke-direct {p2, p1, v0, p3, v1}, Lcoil/memory/PoolableTargetDelegate;-><init>(Lcoil/target/PoolableViewTarget;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    move-object p1, p2

    check-cast p1, Lcoil/memory/TargetDelegate;

    goto :goto_0

    .line 42
    :cond_4
    new-instance p2, Lcoil/memory/InvalidatableTargetDelegate;

    iget-object v0, p0, Lcoil/memory/DelegateService;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    iget-object v1, p0, Lcoil/memory/DelegateService;->logger:Lcoil/util/Logger;

    invoke-direct {p2, p1, v0, p3, v1}, Lcoil/memory/InvalidatableTargetDelegate;-><init>(Lcoil/target/Target;Lcoil/bitmap/BitmapReferenceCounter;Lcoil/EventListener;Lcoil/util/Logger;)V

    move-object p1, p2

    check-cast p1, Lcoil/memory/TargetDelegate;

    :goto_0
    return-object p1
.end method
