.class public final Lcom/helpscout/beacon/a/c/e/g/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/g/l$b;,
        Lcom/helpscout/beacon/a/c/e/g/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;)V
    .locals 1

    const-string v0, "chatApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/l;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/e/g/l$a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/e/g/l$a;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/l$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/g/l$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/l$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/l$c;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/g/l$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/l;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/g/l$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/l;->a:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/g/l$a;->a()I

    move-result p1

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/l$c;->b:I

    invoke-interface {p3, p1, p2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->rateChat(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/l$b$b;->a:Lcom/helpscout/beacon/a/c/e/g/l$b$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/helpscout/beacon/a/c/e/g/l$b$a;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/g/l$b$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    return-object p1
.end method
