.class public abstract Lcoil/memory/TargetDelegate;
.super Ljava/lang/Object;
.source "TargetDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0017J\u0019\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ\u001c\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u0019\u0010\u0012\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0013H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0004\u0015\u0016\u0017\u0018\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcoil/memory/TargetDelegate;",
        "",
        "()V",
        "target",
        "Lcoil/target/Target;",
        "getTarget",
        "()Lcoil/target/Target;",
        "clear",
        "",
        "error",
        "result",
        "Lcoil/request/ErrorResult;",
        "(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "placeholder",
        "Landroid/graphics/drawable/Drawable;",
        "cached",
        "Landroid/graphics/Bitmap;",
        "success",
        "Lcoil/request/SuccessResult;",
        "(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcoil/memory/EmptyTargetDelegate;",
        "Lcoil/memory/InvalidatableEmptyTargetDelegate;",
        "Lcoil/memory/InvalidatableTargetDelegate;",
        "Lcoil/memory/PoolableTargetDelegate;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcoil/memory/TargetDelegate;-><init>()V

    return-void
.end method

.method static synthetic error$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic success$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public error(Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ErrorResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcoil/memory/TargetDelegate;->error$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/ErrorResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lcoil/target/Target;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/SuccessResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcoil/memory/TargetDelegate;->success$suspendImpl(Lcoil/memory/TargetDelegate;Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
