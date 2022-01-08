.class public final Lcom/helpscout/beacon/a/c/e/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/b/a;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final e:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

.field private final f:Lcom/helpscout/beacon/a/b/c/b/h;

.field private final g:Lcom/helpscout/beacon/a/c/e/g/s;

.field private final h:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

.field private final i:Lcom/helpscout/beacon/a/c/c/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/a/c/e/g/s;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lcom/helpscout/beacon/a/c/c/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventSynchronizerService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startChatUseCase"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconRepository"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/j;->b:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/j;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/j;->d:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/g/j;->e:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    iput-object p6, p0, Lcom/helpscout/beacon/a/c/e/g/j;->f:Lcom/helpscout/beacon/a/b/c/b/h;

    iput-object p7, p0, Lcom/helpscout/beacon/a/c/e/g/j;->g:Lcom/helpscout/beacon/a/c/e/g/s;

    iput-object p8, p0, Lcom/helpscout/beacon/a/c/e/g/j;->h:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    iput-object p9, p0, Lcom/helpscout/beacon/a/c/e/g/j;->i:Lcom/helpscout/beacon/a/c/c/a;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/a/c/e/g/k$a$a;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/j;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/b/a;->h()V

    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/k$a$a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->STALE_USER_ACTIVITY:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/a/c/e/g/k$a$a;-><init>(Lcom/helpscout/beacon/a/c/b/a$b;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/j$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j$e;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/j$e;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/j$e;-><init>(Lcom/helpscout/beacon/a/c/e/g/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/j;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/j;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/g/j;->e:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    invoke-virtual {v6}, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->start()V

    if-eqz p2, :cond_8

    const/4 v3, 0x0

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/j;->f:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {p1, p2, v3}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Z)Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v3, v2, Lcom/helpscout/beacon/a/c/e/g/j;->g:Lcom/helpscout/beacon/a/c/e/g/s;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->d:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    invoke-virtual {v3, p1, v0}, Lcom/helpscout/beacon/a/c/e/g/s;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p2

    move-object v0, v2

    :goto_3
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/j;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result p2

    new-instance v1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/j;->f:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/helpscout/beacon/a/c/e/g/k$a$c;-><init>(ZLcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$e;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    move-object v1, p2

    check-cast v1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    :goto_5
    return-object v1
.end method

.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/j$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/j$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/j$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$a;->b:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->i:Lcom/helpscout/beacon/a/c/c/a;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$a;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/k$a$b;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/g/k$a$b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method final synthetic b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/j$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/j$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/j$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->d:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/j;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->f()V

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$b;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/j$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/j$c;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/j$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->e:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->d:Ljava/lang/Object;

    check-cast v3, Lcom/helpscout/beacon/a/c/e/g/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/j;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v3, p0

    :goto_2
    move-object v2, p1

    check-cast v2, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    invoke-virtual {v3, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    invoke-virtual {v3, v2, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_9
    :goto_4
    invoke-direct {v3}, Lcom/helpscout/beacon/a/c/e/g/j;->a()Lcom/helpscout/beacon/a/c/e/g/k$a$a;

    move-result-object p1

    goto :goto_6

    :cond_a
    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$c;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    :goto_6
    return-object p1
.end method

.method final synthetic d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/j$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/j$d;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/j$d;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/j$d;-><init>(Lcom/helpscout/beacon/a/c/e/g/j;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/j;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/j;->c:Lcom/helpscout/beacon/a/b/c/b/f;

    sget-object v2, Lcom/helpscout/beacon/a/c/c/b;->REMOTE_ONLY:Lcom/helpscout/beacon/a/c/c/b;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->b:I

    invoke-virtual {p1, v2, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    :try_start_2
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, p0

    :goto_2
    iget-object v2, v2, Lcom/helpscout/beacon/a/c/e/g/j;->h:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/j$d;->b:I

    invoke-virtual {v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleError(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    return-object v3
.end method
