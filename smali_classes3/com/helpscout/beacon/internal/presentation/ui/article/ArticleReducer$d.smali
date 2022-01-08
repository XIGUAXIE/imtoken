.class final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/a/c/e/e/c$a;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.article.ArticleReducer$sendRating$1"
    f = "ArticleReducer.kt"
    i = {}
    l = {
        0xa2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/e/c$a;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/a/c/e/e/c$a;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->c:Lcom/helpscout/beacon/a/c/e/e/c$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->c:Lcom/helpscout/beacon/a/c/e/e/c$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/a/c/e/e/c$a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->a:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/c$b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    instance-of p1, p1, Lcom/helpscout/beacon/a/c/e/e/c$b$c;

    xor-int/lit8 v6, p1, 0x1

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->c:Lcom/helpscout/beacon/a/c/e/e/c$a;

    instance-of v7, v3, Lcom/helpscout/beacon/a/c/e/e/c$a$a;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;->c:Lcom/helpscout/beacon/a/c/e/e/c$a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/e/e/c$a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZ)V

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
