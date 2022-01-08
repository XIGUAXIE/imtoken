.class public final Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;
.super Ljava/lang/Object;
.source "ViewStateReducer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/common/mvi/ViewStateReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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
.method public static onRestoreViewState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;TS;)V"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-static {p0, p1, v0, v1, v2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public static onSaveViewState(Lcom/helpscout/common/mvi/ViewStateReducer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;)TS;"
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Lcom/helpscout/common/mvi/ViewStateReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static postEvent(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;TE;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    check-cast p0, Lcom/helpscout/common/mvi/ViewEventReducer;

    invoke-static {p0, p1, p2, p3}, Lcom/helpscout/common/mvi/ViewEventReducer$DefaultImpls;->postEvent(Lcom/helpscout/common/mvi/ViewEventReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static postEvent(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;TE;)V"
        }
    .end annotation

    const-string v0, "$this$postEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/helpscout/common/mvi/ViewEventReducer;

    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/ViewEventReducer$DefaultImpls;->postEvent(Lcom/helpscout/common/mvi/ViewEventReducer;Ljava/lang/Object;)V

    return-void
.end method

.method public static postState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;TS;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    new-instance p1, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, p3, v1}, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;-><init>(Lcom/helpscout/common/mvi/ViewStateReducer;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    .line 78
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static postState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/ViewStateReducer<",
            "TA;TS;TE;>;TS;Z)V"
        }
    .end annotation

    const-string v0, "$this$postState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer;->pushStateImmediate(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 75
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/helpscout/common/mvi/ViewStateReducer;->postState(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: postState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 67
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer;->postState(Ljava/lang/Object;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: postState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic pushState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 39
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer;->pushState(Ljava/lang/Object;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pushState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic pushStateImmediate$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 28
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer;->pushStateImmediate(Ljava/lang/Object;Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pushStateImmediate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
