.class final Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewSizeResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/size/ViewSizeResolver$DefaultImpls;->size(Lcoil/size/ViewSizeResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroid/view/View;",
        "it",
        "",
        "invoke",
        "coil/size/ViewSizeResolver$size$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $preDrawListener:Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;

.field final synthetic $viewTreeObserver:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Lcoil/size/ViewSizeResolver;


# direct methods
.method constructor <init>(Landroid/view/ViewTreeObserver;Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;Lcoil/size/ViewSizeResolver;)V
    .locals 0

    iput-object p1, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->$preDrawListener:Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;

    iput-object p3, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->this$0:Lcoil/size/ViewSizeResolver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->this$0:Lcoil/size/ViewSizeResolver;

    iget-object v0, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->$viewTreeObserver:Landroid/view/ViewTreeObserver;

    const-string/jumbo v1, "viewTreeObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;->$preDrawListener:Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-static {p1, v0, v1}, Lcoil/size/ViewSizeResolver$DefaultImpls;->access$removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
