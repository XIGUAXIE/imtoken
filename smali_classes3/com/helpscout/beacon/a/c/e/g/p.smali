.class public final Lcom/helpscout/beacon/a/c/e/g/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/d;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final d:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/d;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;)V
    .locals 1

    const-string v0, "chatIdGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/p;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/p;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/p;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/p;->d:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    return-void
.end method

.method private final a(Landroid/net/Uri;La/a/a/a/a/a;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;
    .locals 20

    new-instance v12, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/helpscout/beacon/a/c/e/g/p;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v0, "document.name"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/a;->e()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/a;->d()Ljava/lang/String;

    move-result-object v6

    const-string v0, "document.type"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7

    const/16 v19, 0x0

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v3, ""

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ThumbnailUrl;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method


# virtual methods
.method public final a(Landroid/net/Uri;La/a/a/a/a/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "La/a/a/a/a/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/g/p$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/p$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/p$c;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/g/p$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/p;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/p;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/a/c/e/g/p;->a(Landroid/net/Uri;La/a/a/a/a/a;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    move-result-object p1

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/helpscout/beacon/a/c/e/g/p;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/p$c;->b:I

    invoke-virtual {p1, p3, v0}, Lcom/helpscout/beacon/a/c/e/g/p;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/p$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/p$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/p$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/p$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/p;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->f:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p1

    move-object p1, v0

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/p;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {p2}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object v2

    sget-object p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    const-string v4, ""

    iget-object v5, p0, Lcom/helpscout/beacon/a/c/e/g/p;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->f:Ljava/lang/Object;

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/p$b;->b:I

    invoke-virtual {v5, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v3, v4

    move-object v2, p2

    move-object p2, v0

    :goto_1
    move-object v5, p2

    check-cast v5, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x48

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method final synthetic a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/p$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/p$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/p$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/p$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/p;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/p;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/p$a;->b:I

    invoke-virtual {p2, p1, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :catchall_1
    move-exception p2

    move-object p1, p0

    :goto_1
    iget-object p1, p1, Lcom/helpscout/beacon/a/c/e/g/p;->d:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleChatMissingOrIgnore(Ljava/lang/Throwable;)Z

    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
