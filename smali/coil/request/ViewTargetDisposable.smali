.class public final Lcoil/request/ViewTargetDisposable;
.super Ljava/lang/Object;
.source "Disposable.kt"

# interfaces
.implements Lcoil/request/Disposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000bH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000bH\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcoil/request/ViewTargetDisposable;",
        "Lcoil/request/Disposable;",
        "requestId",
        "Ljava/util/UUID;",
        "target",
        "Lcoil/target/ViewTarget;",
        "(Ljava/util/UUID;Lcoil/target/ViewTarget;)V",
        "isDisposed",
        "",
        "()Z",
        "await",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dispose",
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
.field private final requestId:Ljava/util/UUID;

.field private final target:Lcoil/target/ViewTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcoil/target/ViewTarget<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcoil/target/ViewTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcoil/target/ViewTarget<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/ViewTargetDisposable;->requestId:Ljava/util/UUID;

    iput-object p2, p0, Lcoil/request/ViewTargetDisposable;->target:Lcoil/target/ViewTarget;

    return-void
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcoil/request/ViewTargetDisposable$await$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcoil/request/ViewTargetDisposable$await$1;

    iget v1, v0, Lcoil/request/ViewTargetDisposable$await$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcoil/request/ViewTargetDisposable$await$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcoil/request/ViewTargetDisposable$await$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/request/ViewTargetDisposable$await$1;

    invoke-direct {v0, p0, p1}, Lcoil/request/ViewTargetDisposable$await$1;-><init>(Lcoil/request/ViewTargetDisposable;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcoil/request/ViewTargetDisposable$await$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, v0, Lcoil/request/ViewTargetDisposable$await$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcoil/request/ViewTargetDisposable;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_3
    iget-object p1, p0, Lcoil/request/ViewTargetDisposable;->target:Lcoil/target/ViewTarget;

    invoke-interface {p1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/memory/ViewTargetRequestManager;->getCurrentRequestJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v3, v0, Lcoil/request/ViewTargetDisposable$await$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 76
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcoil/request/ViewTargetDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcoil/request/ViewTargetDisposable;->target:Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/ViewTargetRequestManager;->clearCurrentRequest()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcoil/request/ViewTargetDisposable;->target:Lcoil/target/ViewTarget;

    invoke-interface {v0}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/memory/ViewTargetRequestManager;->getCurrentRequestId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcoil/request/ViewTargetDisposable;->requestId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
