.class public final Lcoil/memory/ViewTargetRequestDelegate;
.super Lcoil/memory/RequestDelegate;
.source "RequestDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcoil/memory/ViewTargetRequestDelegate;",
        "Lcoil/memory/RequestDelegate;",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "request",
        "Lcoil/request/ImageRequest;",
        "targetDelegate",
        "Lcoil/memory/TargetDelegate;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)V",
        "dispose",
        "",
        "restart",
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

.field private final job:Lkotlinx/coroutines/Job;

.field private final request:Lcoil/request/ImageRequest;

.field private final targetDelegate:Lcoil/memory/TargetDelegate;


# direct methods
.method public constructor <init>(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/memory/TargetDelegate;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "imageLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcoil/memory/RequestDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcoil/memory/ViewTargetRequestDelegate;->imageLoader:Lcoil/ImageLoader;

    iput-object p2, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    iput-object p3, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    iput-object p4, p0, Lcoil/memory/ViewTargetRequestDelegate;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    invoke-virtual {v0}, Lcoil/memory/TargetDelegate;->clear()V

    .line 61
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->targetDelegate:Lcoil/memory/TargetDelegate;

    check-cast v1, Lcoil/request/ImageResult$Metadata;

    invoke-static {v0, v1}, Lcoil/util/-Extensions;->setMetadata(Lcoil/memory/TargetDelegate;Lcoil/request/ImageResult$Metadata;)V

    .line 62
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final restart()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestDelegate;->imageLoader:Lcoil/ImageLoader;

    iget-object v1, p0, Lcoil/memory/ViewTargetRequestDelegate;->request:Lcoil/request/ImageRequest;

    invoke-interface {v0, v1}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    return-void
.end method
