.class public final Lcoil/memory/TargetDelegateKt;
.super Ljava/lang/Object;
.source "TargetDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTargetDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TargetDelegate.kt\ncoil/memory/TargetDelegateKt\n+ 2 Logs.kt\ncoil/util/-Logs\n*L\n1#1,205:1\n22#2,4:206\n22#2,4:210\n*E\n*S KotlinDebug\n*F\n+ 1 TargetDelegate.kt\ncoil/memory/TargetDelegateKt\n*L\n163#1,4:206\n191#1,4:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a/\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a/\u0010\u0011\u001a\u00020\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0082H\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0002\u001a\u0004\u0018\u00010\u0003*\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "TAG",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "Lcoil/request/ImageResult;",
        "getBitmap",
        "(Lcoil/request/ImageResult;)Landroid/graphics/Bitmap;",
        "onError",
        "",
        "Lcoil/target/Target;",
        "result",
        "Lcoil/request/ErrorResult;",
        "eventListener",
        "Lcoil/EventListener;",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/target/Target;Lcoil/request/ErrorResult;Lcoil/EventListener;Lcoil/util/Logger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSuccess",
        "Lcoil/request/SuccessResult;",
        "(Lcoil/target/Target;Lcoil/request/SuccessResult;Lcoil/EventListener;Lcoil/util/Logger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetDelegate"


# direct methods
.method public static final synthetic access$getBitmap$p(Lcoil/request/ImageResult;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcoil/memory/TargetDelegateKt;->getBitmap(Lcoil/request/ImageResult;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final getBitmap(Lcoil/request/ImageResult;)Landroid/graphics/Bitmap;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static final synthetic onError(Lcoil/target/Target;Lcoil/request/ErrorResult;Lcoil/EventListener;Lcoil/util/Logger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/target/Target;",
            "Lcoil/request/ErrorResult;",
            "Lcoil/EventListener;",
            "Lcoil/util/Logger;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v0

    .line 183
    sget-object v1, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 188
    :cond_0
    instance-of v1, p0, Lcoil/transition/TransitionTarget;

    if-nez v1, :cond_2

    .line 190
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    .line 210
    invoke-interface {p3}, Lcoil/util/Logger;->getLevel()I

    move-result p4

    if-gt p4, p2, :cond_1

    .line 192
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' as \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not implement coil.transition.TransitionTarget."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "TargetDelegate"

    invoke-interface {p3, v1, p2, p4, v0}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 196
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 199
    :cond_2
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p3

    invoke-interface {p2, p3}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 200
    check-cast p0, Lcoil/transition/TransitionTarget;

    move-object p3, p1

    check-cast p3, Lcoil/request/ImageResult;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v0, p0, p3, p4}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 201
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p0

    invoke-interface {p2, p0}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    .line 202
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic onSuccess(Lcoil/target/Target;Lcoil/request/SuccessResult;Lcoil/EventListener;Lcoil/util/Logger;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/target/Target;",
            "Lcoil/request/SuccessResult;",
            "Lcoil/EventListener;",
            "Lcoil/util/Logger;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getTransition()Lcoil/transition/Transition;

    move-result-object v0

    .line 155
    sget-object v1, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    .line 157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 160
    :cond_0
    instance-of v1, p0, Lcoil/transition/TransitionTarget;

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getDefined()Lcoil/request/DefinedRequestOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/DefinedRequestOptions;->getTransition()Lcoil/transition/Transition;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x3

    .line 206
    invoke-interface {p3}, Lcoil/util/Logger;->getLevel()I

    move-result p4

    if-gt p4, p2, :cond_1

    .line 164
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' as \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not implement coil.transition.TransitionTarget."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "TargetDelegate"

    invoke-interface {p3, v1, p2, p4, v0}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    .line 168
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 171
    :cond_2
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p3

    invoke-interface {p2, p3}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;)V

    .line 172
    check-cast p0, Lcoil/transition/TransitionTarget;

    move-object p3, p1

    check-cast p3, Lcoil/request/ImageResult;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {v0, p0, p3, p4}, Lcoil/transition/Transition;->transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 173
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p0

    invoke-interface {p2, p0}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;)V

    .line 174
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
