.class final Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.navigate.CustomNavigateReducer$loadBeacon$1"
    f = "CustomNavigateReducer.kt"
    i = {}
    l = {
        0x2d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

.field final synthetic c:Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->c:Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->c:Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/c/e/j/a$a;

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/j/a$a$c;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$b;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/helpscout/beacon/a/c/e/j/a$a$d;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$d;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$c;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/helpscout/beacon/a/c/e/j/a$a$e;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$e;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$d;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/j/a$a$b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$a;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/j/a$a$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/j/a$a$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/helpscout/beacon/a/c/e/j/a$a$f;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/b$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/navigate/b$a;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    goto :goto_2

    :cond_7
    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/j/a$a$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/j/a$a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/j/a$a$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
