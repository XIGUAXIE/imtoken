.class public final Lcom/helpscout/beacon/a/c/e/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/e/h/j;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/h/j;)V
    .locals 1

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConversationsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/i/d;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/d;->b:Lcom/helpscout/beacon/a/c/e/h/j;

    return-void
.end method

.method private final a(Ljava/util/List;Z)Lcom/helpscout/beacon/a/d/c/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;Z)",
            "Lcom/helpscout/beacon/a/d/c/h;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/d/c/h$c;->a:Lcom/helpscout/beacon/a/d/c/h$c;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/d/c/h$b;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/a/d/c/h$b;-><init>(Ljava/util/List;Z)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/c/e/i/d;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/a/c/e/i/d;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/c/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/i/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/i/d$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/i/d$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/i/d$a;-><init>(Lcom/helpscout/beacon/a/c/e/i/d;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/i/d;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/d;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/i/d;->b:Lcom/helpscout/beacon/a/c/e/h/j;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/i/d$a;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/c/e/h/j;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/a/c/e/h/d;

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/h/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/h/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/h/d;->b()Z

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/a/c/e/i/d;->a(Ljava/util/List;Z)Lcom/helpscout/beacon/a/d/c/h;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/helpscout/beacon/a/d/c/h$f;

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/h/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/c/e/h/d;->b()Z

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/a/d/c/h$f;-><init>(Ljava/util/List;Z)V

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/a/d/c/h$a;->a:Lcom/helpscout/beacon/a/d/c/h$a;

    :goto_2
    return-object p1
.end method
