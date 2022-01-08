.class public final Lcoil/transition/CrossfadeTransition;
.super Ljava/lang/Object;
.source "CrossfadeTransition.kt"

# interfaces
.implements Lcoil/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadeTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadeTransition.kt\ncoil/transition/CrossfadeTransition\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n251#2:99\n308#3,11:100\n1#4:111\n*E\n*S KotlinDebug\n*F\n+ 1 CrossfadeTransition.kt\ncoil/transition/CrossfadeTransition\n*L\n45#1:99\n56#1,11:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u0011\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0019\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil/transition/CrossfadeTransition;",
        "Lcoil/transition/Transition;",
        "()V",
        "durationMillis",
        "",
        "(I)V",
        "preferExactIntrinsicSize",
        "",
        "(IZ)V",
        "getDurationMillis",
        "()I",
        "getPreferExactIntrinsicSize",
        "()Z",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "transition",
        "",
        "target",
        "Lcoil/transition/TransitionTarget;",
        "result",
        "Lcoil/request/ImageResult;",
        "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final durationMillis:I

.field private final preferExactIntrinsicSize:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, v0, v0, v1, v2}, Lcoil/transition/CrossfadeTransition;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v1, v2}, Lcoil/transition/CrossfadeTransition;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x64

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcoil/transition/CrossfadeTransition;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    iput-boolean p2, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x64

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2}, Lcoil/transition/CrossfadeTransition;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 85
    move-object v0, p0

    check-cast v0, Lcoil/transition/CrossfadeTransition;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lcoil/transition/CrossfadeTransition;

    if-eqz v0, :cond_0

    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    check-cast p1, Lcoil/transition/CrossfadeTransition;

    iget p1, p1, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 28
    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    return v0
.end method

.method public final getPreferExactIntrinsicSize()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcoil/transition/CrossfadeTransition;->preferExactIntrinsicSize:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget v0, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossfadeTransition(durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/transition/CrossfadeTransition;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/transition/TransitionTarget;",
            "Lcoil/request/ImageResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcoil/transition/CrossfadeTransition$transition$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcoil/transition/CrossfadeTransition$transition$1;

    iget v5, v4, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcoil/transition/CrossfadeTransition$transition$1;

    invoke-direct {v4, v1, v3}, Lcoil/transition/CrossfadeTransition$transition$1;-><init>(Lcoil/transition/CrossfadeTransition;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcoil/transition/CrossfadeTransition$transition$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 36
    iget v6, v4, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v0, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcoil/request/ImageResult;

    iget-object v0, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcoil/transition/TransitionTarget;

    iget-object v0, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/transition/CrossfadeTransition;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    instance-of v3, v2, Lcoil/request/SuccessResult;

    if-eqz v3, :cond_3

    move-object v6, v2

    check-cast v6, Lcoil/request/SuccessResult;

    invoke-virtual {v6}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v8

    invoke-virtual {v8}, Lcoil/request/ImageResult$Metadata;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v8

    sget-object v9, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    if-ne v8, v9, :cond_3

    .line 39
    invoke-virtual {v6}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcoil/transition/TransitionTarget;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 45
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcoil/transition/TransitionTarget;->getView()Landroid/view/View;

    move-result-object v6

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_7

    if-eqz v3, :cond_5

    .line 47
    check-cast v2, Lcoil/request/SuccessResult;

    invoke-virtual {v2}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcoil/transition/TransitionTarget;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 48
    :cond_5
    instance-of v3, v2, Lcoil/request/ErrorResult;

    if-eqz v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcoil/transition/TransitionTarget;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 54
    :cond_7
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v6, 0x0

    move-object v9, v6

    check-cast v9, Lcoil/drawable/CrossfadeDrawable;

    iput-object v9, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    :try_start_1
    iput-object v1, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lcoil/transition/CrossfadeTransition$transition$1;->L$3:Ljava/lang/Object;

    iput v7, v4, Lcoil/transition/CrossfadeTransition$transition$1;->label:I

    .line 101
    new-instance v9, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 107
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 108
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/CancellableContinuation;

    .line 57
    new-instance v15, Lcoil/drawable/CrossfadeDrawable;

    .line 58
    invoke-interface/range {p1 .. p1}, Lcoil/transition/TransitionTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 60
    invoke-interface/range {p1 .. p1}, Lcoil/transition/TransitionTarget;->getView()Landroid/view/View;

    move-result-object v11

    instance-of v14, v11, Landroid/widget/ImageView;

    if-nez v14, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, v11

    :goto_3
    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lcoil/util/-Extensions;->getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;

    move-result-object v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    sget-object v6, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    :goto_4
    move-object v14, v6

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcoil/transition/CrossfadeTransition;->getDurationMillis()I

    move-result v6

    .line 62
    instance-of v11, v2, Lcoil/request/SuccessResult;

    if-eqz v11, :cond_b

    move-object v11, v2

    check-cast v11, Lcoil/request/SuccessResult;

    invoke-virtual {v11}, Lcoil/request/SuccessResult;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object v11

    invoke-virtual {v11}, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v16, 0x1

    .line 63
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcoil/transition/CrossfadeTransition;->getPreferExactIntrinsicSize()Z

    move-result v17

    move-object v11, v15

    move-object v7, v15

    move v15, v6

    .line 57
    invoke-direct/range {v11 .. v17}, Lcoil/drawable/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V

    .line 65
    iput-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    new-instance v6, Lcoil/transition/CrossfadeTransition$transition$2$1;

    invoke-direct {v6, v7, v10}, Lcoil/transition/CrossfadeTransition$transition$2$1;-><init>(Lcoil/drawable/CrossfadeDrawable;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v6, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v7, v6}, Lcoil/drawable/CrossfadeDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 73
    instance-of v6, v2, Lcoil/request/SuccessResult;

    if-eqz v6, :cond_c

    move-object v15, v7

    check-cast v15, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v15}, Lcoil/transition/TransitionTarget;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 74
    :cond_c
    instance-of v2, v2, Lcoil/request/ErrorResult;

    if-eqz v2, :cond_d

    move-object v15, v7

    check-cast v15, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v15}, Lcoil/transition/TransitionTarget;->onError(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_d
    :goto_7
    invoke-virtual {v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 100
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_e

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    if-ne v0, v5, :cond_f

    return-object v5

    .line 82
    :cond_f
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 79
    :goto_9
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/drawable/CrossfadeDrawable;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcoil/drawable/CrossfadeDrawable;->stop()V

    .line 80
    :cond_10
    throw v0
.end method
