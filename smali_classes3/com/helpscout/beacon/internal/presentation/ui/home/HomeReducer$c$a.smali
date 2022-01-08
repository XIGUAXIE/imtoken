.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.helpscout.beacon.internal.presentation.ui.home.HomeReducer$loadBeacon$1$1"
    f = "HomeReducer.kt"
    i = {}
    l = {
        0xd0,
        0xd3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v4, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;->c:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;->d:Z

    iput v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->a:I

    invoke-virtual {v1, v4, p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c$a;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
