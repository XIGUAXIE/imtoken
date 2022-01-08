.class final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;I)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.home.HomeReducer$handleSearch$1"
    f = "HomeReducer.kt"
    i = {}
    l = {
        0x7f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->c:Ljava/lang/String;

    iput p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->d:I

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->d:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->c:Ljava/lang/String;

    iget v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->d:I

    invoke-static {p1, v1, v3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;I)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/d/b/e;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Lcom/helpscout/beacon/a/d/b/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->b:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->c:Ljava/lang/String;

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;->d:I

    invoke-static {p1, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;I)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
