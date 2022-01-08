.class public final Lcom/helpscout/beacon/a/c/e/g/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/d;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final e:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/d;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;)V
    .locals 1

    const-string v0, "chatIdGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/q;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/q;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/q;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/q;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/g/q;->e:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/c/e/g/q;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/a/c/e/g/q;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/q;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    if-ne p1, v3, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/helpscout/beacon/a/c/e/g/q$a;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/q$a;

    iget v3, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->b:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/a/c/e/g/q$a;

    invoke-direct {v2, v1, v0}, Lcom/helpscout/beacon/a/c/e/g/q$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/q;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->b:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/q;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->g:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->f:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->d:Ljava/lang/Object;

    check-cast v8, Lcom/helpscout/beacon/a/c/e/g/q;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v6

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Message is empty. Chat event not sent!"

    invoke-static {v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_4
    iget-object v0, v1, Lcom/helpscout/beacon/a/c/e/g/q;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-direct {v1, v4}, Lcom/helpscout/beacon/a/c/e/g/q;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v4, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->WAITING_CHAT_CREATION:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    :cond_5
    iget-object v7, v1, Lcom/helpscout/beacon/a/c/e/g/q;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object v1, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->d:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->e:Ljava/lang/Object;

    iput-object v0, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->f:Ljava/lang/Object;

    iput-object v4, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->g:Ljava/lang/Object;

    iput v6, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->b:I

    invoke-virtual {v7, v2}, Lcom/helpscout/beacon/a/b/c/b/f;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v0

    move-object v0, v6

    move-object v7, v8

    move-object v8, v1

    :goto_1
    move-object v14, v0

    check-cast v14, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    sget-object v11, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->message:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-eqz v7, :cond_8

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x68

    const/16 v18, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_1
    iget-object v6, v8, Lcom/helpscout/beacon/a/c/e/g/q;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object v8, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->d:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->e:Ljava/lang/Object;

    iput-object v7, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->f:Ljava/lang/Object;

    iput-object v7, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->g:Ljava/lang/Object;

    iput v5, v2, Lcom/helpscout/beacon/a/c/e/g/q$a;->b:I

    invoke-virtual {v6, v0, v4, v2}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_7

    return-object v3

    :catchall_1
    move-exception v0

    move-object v2, v8

    :goto_2
    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/g/q;->e:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleChatMissingOrIgnore(Ljava/lang/Throwable;)Z

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
