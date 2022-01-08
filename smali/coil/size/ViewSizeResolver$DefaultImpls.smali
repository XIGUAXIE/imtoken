.class public final Lcoil/size/ViewSizeResolver$DefaultImpls;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/ViewSizeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewSizeResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewSizeResolver.kt\ncoil/size/ViewSizeResolver$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,126:1\n1#2:127\n308#3,11:128\n*E\n*S KotlinDebug\n*F\n+ 1 ViewSizeResolver.kt\ncoil/size/ViewSizeResolver$DefaultImpls\n*L\n39#1,11:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static synthetic access$getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;
    .locals 0

    .line 10
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lcoil/size/ViewSizeResolver$DefaultImpls;->removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;IIIZ)I"
        }
    .end annotation

    sub-int v0, p1, p3

    if-lez v0, :cond_0

    return v0

    :cond_0
    sub-int/2addr p2, p3

    if-lez p2, :cond_1

    return p2

    :cond_1
    const/4 p2, -0x2

    if-ne p1, p2, :cond_3

    .line 111
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "view.context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo p1, "view.context.resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p4, :cond_2

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_2
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getHeight(Lcoil/size/ViewSizeResolver;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;)I"
        }
    .end annotation

    .line 84
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 85
    :goto_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 86
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getSubtractPadding()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 83
    :goto_1
    invoke-static {p0, v0, v1, v2, v3}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I

    move-result p0

    return p0
.end method

.method private static getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;)",
            "Lcoil/size/PixelSize;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getWidth(Lcoil/size/ViewSizeResolver;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getHeight(Lcoil/size/ViewSizeResolver;)I

    move-result p0

    if-gtz p0, :cond_1

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lcoil/size/PixelSize;

    invoke-direct {v1, v0, p0}, Lcoil/size/PixelSize;-><init>(II)V

    return-object v1
.end method

.method public static getSubtractPadding(Lcoil/size/ViewSizeResolver;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static getWidth(Lcoil/size/ViewSizeResolver;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;)I"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 76
    :goto_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 77
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getSubtractPadding()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    .line 74
    invoke-static {p0, v0, v1, v2, v3}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getDimension(Lcoil/size/ViewSizeResolver;IIIZ)I

    move-result p0

    return p0
.end method

.method private static removePreDrawListenerSafe(Lcoil/size/ViewSizeResolver;Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;",
            "Landroid/view/ViewTreeObserver;",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method

.method public static size(Lcoil/size/ViewSizeResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/size/Size;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcoil/size/ViewSizeResolver$DefaultImpls;->getSize(Lcoil/size/ViewSizeResolver;)Lcoil/size/PixelSize;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 135
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 136
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 40
    invoke-interface {p0}, Lcoil/size/ViewSizeResolver;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 42
    new-instance v3, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;

    invoke-direct {v3, v2, v1, p0}, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Landroid/view/ViewTreeObserver;Lkotlinx/coroutines/CancellableContinuation;Lcoil/size/ViewSizeResolver;)V

    .line 59
    move-object v4, v3

    check-cast v4, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 61
    new-instance v4, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;

    invoke-direct {v4, v2, v3, p0}, Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Landroid/view/ViewTreeObserver;Lcoil/size/ViewSizeResolver$size$$inlined$suspendCancellableCoroutine$lambda$1;Lcoil/size/ViewSizeResolver;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v4}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 137
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 128
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p0
.end method
