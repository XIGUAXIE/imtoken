.class final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/lang/String;ZZ)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.article.ArticleReducer$loadArticle$1"
    f = "ArticleReducer.kt"
    i = {}
    l = {
        0x76
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->c:Z

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->c:Z

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->e:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    iget-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->c:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    move-result-object p1

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->b(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p1, v1, v1, v4, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    move-result-object p1

    invoke-static {v0, v3, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    iget-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/article/b$a;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->d:Ljava/lang/String;

    invoke-direct {v5, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$a;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;)V

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;

    invoke-direct {v3, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->a:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;

    goto :goto_0
.end method
