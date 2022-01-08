.class public final Lcom/helpscout/beacon/a/c/e/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/c/a;

.field private final b:Lcom/helpscout/beacon/a/c/d/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/a/c/d/a;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/e/a;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/e/a;->b:Lcom/helpscout/beacon/a/c/d/a;

    return-void
.end method

.method private final a(Ljava/lang/Exception;)Lcom/helpscout/beacon/a/c/e/e/a$a;
    .locals 1

    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    check-cast p1, Lretrofit2/HttpException;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/ExceptionExtensionsKt;->is404(Lretrofit2/HttpException;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/c/e/e/a$a$b;->a:Lcom/helpscout/beacon/a/c/e/e/a$a$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/a/c/e/e/a$a$a;->a:Lcom/helpscout/beacon/a/c/e/e/a$a$a;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/e/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/e/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/e/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/a$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/e/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/e/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/e/a;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/e/a;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/e/a$b;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    :try_start_2
    check-cast p2, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;

    iget-object v0, p1, Lcom/helpscout/beacon/a/c/e/e/a;->b:Lcom/helpscout/beacon/a/c/d/a;

    new-instance v8, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$ArticleViewed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v8}, Lcom/helpscout/beacon/a/c/d/a;->a(Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;)V

    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/a$a$c;

    invoke-direct {v0, p2}, Lcom/helpscout/beacon/a/c/e/e/a$a$c;-><init>(Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p1, p0

    :goto_2
    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/e/a;->a(Ljava/lang/Exception;)Lcom/helpscout/beacon/a/c/e/e/a$a;

    move-result-object v0

    :goto_3
    return-object v0
.end method
