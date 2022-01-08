.class public final Lcom/helpscout/beacon/a/c/e/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/e/c$a;,
        Lcom/helpscout/beacon/a/c/e/e/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/c/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/c/a;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/c;->a:Lcom/helpscout/beacon/a/c/c/a;

    return-void
.end method

.method private final a(Ljava/lang/Exception;)Lcom/helpscout/beacon/a/c/e/e/c$b;
    .locals 1

    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    check-cast p1, Lretrofit2/HttpException;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/ExceptionExtensionsKt;->is409(Lretrofit2/HttpException;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/c/e/e/c$b$a;->a:Lcom/helpscout/beacon/a/c/e/e/c$b$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/a/c/e/e/c$b$b;->a:Lcom/helpscout/beacon/a/c/e/e/c$b$b;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/e/e/c$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/e/e/c$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/e/c$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/e/c$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/e/c$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/c$c;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/e/c$c;-><init>(Lcom/helpscout/beacon/a/c/e/e/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/c;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/e/c;->a:Lcom/helpscout/beacon/a/c/c/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/e/c$a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;

    instance-of v5, p1, Lcom/helpscout/beacon/a/c/e/e/c$a$b;

    if-eqz v5, :cond_3

    sget-object p1, Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi$ArticleFeedbackRatingApi;->POSITIVE:Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi$ArticleFeedbackRatingApi;

    goto :goto_1

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/a/c/e/e/c$a$a;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi$ArticleFeedbackRatingApi;->NEGATIVE:Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi$ArticleFeedbackRatingApi;

    :goto_1
    invoke-direct {v4, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;-><init>(Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi$ArticleFeedbackRatingApi;)V

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/e/c$c;->b:I

    invoke-interface {p2, v2, v4, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ArticleFeedbackBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_2
    :try_start_2
    sget-object p1, Lcom/helpscout/beacon/a/c/e/e/c$b$c;->a:Lcom/helpscout/beacon/a/c/e/e/c$b$c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_5
    :try_start_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p2

    move-object p1, p0

    :goto_3
    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/e/c;->a(Ljava/lang/Exception;)Lcom/helpscout/beacon/a/c/e/e/c$b;

    move-result-object p1

    :goto_4
    return-object p1
.end method
