.class public final Lcoil/memory/ViewTargetRequestManager;
.super Ljava/lang/Object;
.source "ViewTargetRequestManager.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\nH\u0003J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0017J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0017J\u001c\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010$\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010&\u001a\u00020\u001d2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u000eH\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcoil/memory/ViewTargetRequestManager;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "()V",
        "bitmaps",
        "Landroidx/collection/SimpleArrayMap;",
        "",
        "Landroid/graphics/Bitmap;",
        "currentRequest",
        "Lcoil/memory/ViewTargetRequestDelegate;",
        "<set-?>",
        "Ljava/util/UUID;",
        "currentRequestId",
        "getCurrentRequestId",
        "()Ljava/util/UUID;",
        "Lkotlinx/coroutines/Job;",
        "currentRequestJob",
        "getCurrentRequestJob",
        "()Lkotlinx/coroutines/Job;",
        "isRestart",
        "",
        "metadata",
        "Lcoil/request/ImageResult$Metadata;",
        "getMetadata",
        "()Lcoil/request/ImageResult$Metadata;",
        "setMetadata",
        "(Lcoil/request/ImageResult$Metadata;)V",
        "pendingClear",
        "skipAttach",
        "clearCurrentRequest",
        "",
        "newRequestId",
        "onViewAttachedToWindow",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "put",
        "tag",
        "bitmap",
        "setCurrentRequest",
        "request",
        "setCurrentRequestJob",
        "job",
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
.field private final bitmaps:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

.field private volatile currentRequestId:Ljava/util/UUID;

.field private volatile currentRequestJob:Lkotlinx/coroutines/Job;

.field private isRestart:Z

.field private volatile metadata:Lcoil/request/ImageResult$Metadata;

.field private volatile pendingClear:Lkotlinx/coroutines/Job;

.field private skipAttach:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    .line 45
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private final newRequestId()Ljava/util/UUID;
    .locals 2

    .line 118
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v1, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcoil/util/-Extensions;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "UUID.randomUUID()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final clearCurrentRequest()V
    .locals 8

    const/4 v0, 0x0

    .line 85
    move-object v1, v0

    check-cast v1, Ljava/util/UUID;

    iput-object v1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    .line 86
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    iput-object v1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestJob:Lkotlinx/coroutines/Job;

    .line 88
    iget-object v1, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 89
    :cond_0
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v1, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;

    invoke-direct {v1, p0, v0}, Lcoil/memory/ViewTargetRequestManager$clearCurrentRequest$1;-><init>(Lcoil/memory/ViewTargetRequestManager;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCurrentRequestId()Ljava/util/UUID;
    .locals 1

    .line 29
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getCurrentRequestJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 31
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getMetadata()Lcoil/request/ImageResult$Metadata;
    .locals 1

    .line 35
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->metadata:Lcoil/request/ImageResult$Metadata;

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    .line 103
    invoke-virtual {p1}, Lcoil/memory/ViewTargetRequestDelegate;->restart()V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    .line 110
    iget-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcoil/memory/ViewTargetRequestDelegate;->dispose()V

    :cond_0
    return-void
.end method

.method public final put(Ljava/lang/Object;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p0, Lcoil/memory/ViewTargetRequestManager;->bitmaps:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    return-object p1
.end method

.method public final setCurrentRequest(Lcoil/memory/ViewTargetRequestDelegate;)V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcoil/memory/ViewTargetRequestManager;->isRestart:Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 65
    :cond_1
    check-cast v2, Lkotlinx/coroutines/Job;

    iput-object v2, p0, Lcoil/memory/ViewTargetRequestManager;->pendingClear:Lkotlinx/coroutines/Job;

    .line 68
    :goto_0
    iget-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcoil/memory/ViewTargetRequestDelegate;->dispose()V

    .line 69
    :cond_2
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequest:Lcoil/memory/ViewTargetRequestDelegate;

    .line 70
    iput-boolean v1, p0, Lcoil/memory/ViewTargetRequestManager;->skipAttach:Z

    return-void
.end method

.method public final setCurrentRequestJob(Lkotlinx/coroutines/Job;)Ljava/util/UUID;
    .locals 1

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcoil/memory/ViewTargetRequestManager;->newRequestId()Ljava/util/UUID;

    move-result-object v0

    .line 77
    iput-object v0, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestId:Ljava/util/UUID;

    .line 78
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->currentRequestJob:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final setMetadata(Lcoil/request/ImageResult$Metadata;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcoil/memory/ViewTargetRequestManager;->metadata:Lcoil/request/ImageResult$Metadata;

    return-void
.end method
