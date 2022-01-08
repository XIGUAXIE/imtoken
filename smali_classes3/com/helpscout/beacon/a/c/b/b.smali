.class public final Lcom/helpscout/beacon/a/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/d;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/b/c/b/d;)V
    .locals 1

    const-string v0, "chatEventRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatIdGenerator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/b/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/b/b;->c:Lcom/helpscout/beacon/a/b/c/b/d;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 7

    new-instance v6, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->system:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->P()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->initials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/b$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/a/c/b/b$a;

    iget v3, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/a/c/b/b$a;

    invoke-direct {v2, v0, v1}, Lcom/helpscout/beacon/a/c/b/b$a;-><init>(Lcom/helpscout/beacon/a/c/b/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/helpscout/beacon/a/c/b/b$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v4, v2, Lcom/helpscout/beacon/a/c/b/b$a;->e:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v7, v2, Lcom/helpscout/beacon/a/c/b/b$a;->d:Ljava/lang/Object;

    check-cast v7, Lcom/helpscout/beacon/a/c/b/b;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v1, v0, Lcom/helpscout/beacon/a/c/b/b;->c:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {v1}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    invoke-direct/range {p0 .. p0}, Lcom/helpscout/beacon/a/c/b/b;->a()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x68

    const/16 v17, 0x0

    move-object v8, v4

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v17}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v2, Lcom/helpscout/beacon/a/c/b/b$a;->d:Ljava/lang/Object;

    iput-object v4, v2, Lcom/helpscout/beacon/a/c/b/b$a;->e:Ljava/lang/Object;

    iput v7, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    invoke-virtual {v0, v2}, Lcom/helpscout/beacon/a/c/b/b;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v7, v0

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/helpscout/beacon/a/c/b/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v5, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/b/b$a;->d:Ljava/lang/Object;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/b/b$a;->e:Ljava/lang/Object;

    iput v6, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    const-string v6, "HELP_BOT_IS_TYPING_EVENT_ID"

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_6
    iget-object v1, v7, Lcom/helpscout/beacon/a/c/b/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v6, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/b/b$a;->d:Ljava/lang/Object;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/b/b$a;->e:Ljava/lang/Object;

    iput v5, v2, Lcom/helpscout/beacon/a/c/b/b$a;->b:I

    invoke-virtual {v1, v4, v6, v2}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->g0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    const-string v1, "HELP_BOT_IS_TYPING_EVENT_ID"

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/b;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/helpscout/beacon/a/c/b/b;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
