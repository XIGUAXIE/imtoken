.class final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.article.ArticleReducer$loadArticle$1$2"
    f = "ArticleReducer.kt"
    i = {}
    l = {
        0x77
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->a:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lcom/helpscout/beacon/a/c/e/e/a;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object v1, v1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/helpscout/beacon/a/c/e/e/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/a$a;

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/e/a$a$c;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/a$a$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/e/a$a$c;->a()Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;-><init>(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/e/a$a$b;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$c;

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of p1, p1, Lcom/helpscout/beacon/a/c/e/e/a$a$a;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$b;

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$b;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
