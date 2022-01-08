.class public final Lcom/helpscout/beacon/a/b/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

.field private final d:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

.field private final e:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

.field private final f:Lcom/helpscout/beacon/a/b/c/b/g;

.field private final g:Lcom/helpscout/beacon/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;Lcom/helpscout/beacon/a/b/c/b/g;Lcom/helpscout/beacon/a/b/c/b/h;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDao"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentDao"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfurledMediaDao"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    iput-object p4, p0, Lcom/helpscout/beacon/a/b/c/b/c;->d:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    iput-object p5, p0, Lcom/helpscout/beacon/a/b/c/b/c;->e:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    iput-object p6, p0, Lcom/helpscout/beacon/a/b/c/b/c;->f:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p7, p0, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/a/b/c/b/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->observeChatEventsWithAuthor()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.distinctUntilChanged(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Lcom/helpscout/beacon/a/b/c/b/c$h;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/helpscout/beacon/a/b/c/b/c$h;

    iget v4, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->b:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->b:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/helpscout/beacon/a/b/c/b/c$h;

    invoke-direct {v3, v0, v2}, Lcom/helpscout/beacon/a/b/c/b/c$h;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v15

    iget v4, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->b:I

    const/4 v14, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v14, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->e:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v4, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->d:Ljava/lang/Object;

    check-cast v4, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    move-object/from16 v4, p2

    invoke-virtual {v2, v1, v4}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object v2

    iget-object v4, v0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getCreatedAt()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v8

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getType()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v9

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getStatus()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v2

    iput-object v0, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->d:Ljava/lang/Object;

    iput-object v1, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->e:Ljava/lang/Object;

    iput v5, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->b:I

    const/4 v11, 0x0

    const/16 v13, 0x40

    const/16 v16, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v2

    move-object/from16 v10, p3

    move-object v12, v3

    const/4 v2, 0x2

    move-object/from16 v14, v16

    invoke-static/range {v4 .. v14}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;->updateIsTypingEvent$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_4

    return-object v15

    :cond_4
    move-object v4, v0

    :goto_1
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->d:Ljava/lang/Object;

    iput-object v5, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->e:Ljava/lang/Object;

    iput v2, v3, Lcom/helpscout/beacon/a/b/c/b/c$h;->b:I

    invoke-virtual {v4, v1, v3}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_5

    return-object v15

    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/b/c/b/c$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$a;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$a;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/b/c/b/c$a;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->b:I

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
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->b:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-direct {v2, p2}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->f:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$a;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

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

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$e;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$e;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$e;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$e;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAttachments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$e;->b:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateAuthor(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/b/c/b/c$i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$i;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$i;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/b/c/b/c$i;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iget-object v0, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v2}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    invoke-interface {p3, v2, p2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->addAttachment(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v5, v2, Lcom/helpscout/beacon/a/b/c/b/c;->d:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->delete(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    iput-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    iput-object p3, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    invoke-interface {v5, p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->deleteEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p3

    :goto_2
    sget-object p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->f:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$i;->b:I

    invoke-virtual {v2, p1, p3, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    :goto_3
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAttachments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_9

    iget-object v1, v0, Lcom/helpscout/beacon/a/b/c/b/c;->d:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao$DefaultImpls;->updateLocalUri$default(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;Ljava/lang/String;Landroid/net/Uri;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;ILjava/lang/Object;)V

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->deleteEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v2, p2, v1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;)Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c;->d:Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;

    invoke-interface {p1, v1}, Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;->insertAttachment(Lcom/helpscout/beacon/internal/data/local/db/AttachmentDB;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/helpscout/beacon/a/b/c/b/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;->countSendOrReceivedMessagesNotFromHelpbot$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/b/c/b/c$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$f;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$f;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/b/c/b/c$f;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->f:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->f:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->f:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    invoke-virtual {v2, p3, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    :goto_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    goto :goto_2

    :cond_7
    move-object v2, p0

    :goto_2
    iget-object p3, v2, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {p3, p1, p2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;)Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    move-result-object p2

    iget-object p3, v2, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    iput-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    iput-object v7, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->f:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    invoke-interface {p3, p2, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object p2, v2

    :goto_3
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->isTypingEvent()Z

    move-result p3

    if-nez p3, :cond_a

    iput-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    iput-object v7, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->d:Ljava/lang/Object;

    iput-object v7, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$f;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$g;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$g;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$g;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$g;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$g;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$g;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getUnfurledMedia()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saving unfurledMedia contains "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$g;->b:I

    invoke-virtual {p0, p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$b;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$b;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->getChatEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$b;->b:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic b(Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;

    iget-object v2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v2, p2, v1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UnfurledMediaApi;)Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c;->e:Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;

    invoke-interface {p1, v1}, Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;->upsert(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/helpscout/beacon/a/b/c/b/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->deleteAllRows(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$k;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$k;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$k;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    const/4 v10, 0x4

    const/4 v2, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v11, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v10, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/a/b/c/b/c;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/a/b/c/b/c;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAttachments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p2}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getBody()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    move-object v3, p2

    move-object v6, v0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient$DefaultImpls;->addMessage$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v9, :cond_7

    return-object v9

    :cond_7
    move-object v1, p0

    :goto_3
    :try_start_3
    iget-object p2, v1, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    iput v11, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    invoke-interface {p2, v2, v3, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v9, :cond_9

    return-object v9

    :cond_8
    :try_start_4
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    iput v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    invoke-virtual {p0, p2, v1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v9, :cond_9

    return-object v9

    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p2

    move-object v1, p0

    :goto_5
    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    iget-object v1, v1, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->getId()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->FAILED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->e:Ljava/lang/Object;

    iput v10, v0, Lcom/helpscout/beacon/a/b/c/b/c$k;->b:I

    invoke-interface {v1, p2, v2, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v9, :cond_a

    return-object v9

    :cond_a
    :goto_6
    throw p1
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$d;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$d;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$d;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$d;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$d;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->countWithId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->getAllChatEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;->updateLastModified$default(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->WAITING_CHAT_CREATION:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-interface {v0, v1, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->loadChatEventsByStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/helpscout/beacon/a/b/c/b/c$j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$j;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$j;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/b/c/b/c$j;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    iput-object p0, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->getEventWithAuthor(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    iget-object v2, p1, Lcom/helpscout/beacon/a/b/c/b/c;->g:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v2, p2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$j;->b:I

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/b/c/b/c$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/b/c/b/c$c;

    iget v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/b/c/b/c$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/b/c/b/c$c;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/b/c/b/c$c;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/b/c/b/c$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/b/c/b/c$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/c;->c:Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SUBJECT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput v3, v0, Lcom/helpscout/beacon/a/b/c/b/c$c;->b:I

    invoke-interface {p1, v2, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;->loadChatEventsByStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/c;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->sendBeaconClosedEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
