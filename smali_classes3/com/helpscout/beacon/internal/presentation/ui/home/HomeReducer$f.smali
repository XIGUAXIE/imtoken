.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.home.HomeReducer$openBeaconToSearch$1"
    f = "HomeReducer.kt"
    i = {
        0x2
    }
    l = {
        0x5b,
        0x5d,
        0x61,
        0x62
    }
    m = "invokeSuspend"
    n = {
        "searchResult"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->f:Ljava/lang/String;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->e:Ljava/lang/String;

    iput v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->c:I

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$a;

    invoke-direct {v1, p0, v6}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->c:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$c;

    invoke-direct {v4, p0, v6}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->c:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v3, v1

    :goto_2
    check-cast p1, Lcom/helpscout/beacon/a/d/b/e;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->d:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$b;

    invoke-direct {v1, p0, v3, v6}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->a:Ljava/lang/Object;

    iput-object v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;->c:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
