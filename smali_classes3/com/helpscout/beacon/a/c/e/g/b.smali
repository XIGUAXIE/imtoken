.class public final Lcom/helpscout/beacon/a/c/e/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/e/g/q;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/g/q;)V
    .locals 1

    const-string v0, "beaconDatastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendChatMessageUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/b;->b:Lcom/helpscout/beacon/a/c/e/g/q;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/b$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/b$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/b$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/b$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/b$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/b$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/b;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/b$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/b$b;->b:I

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

    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/b;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p2, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setEmail(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/b;->b:Lcom/helpscout/beacon/a/c/e/g/q;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/b$b;->b:I

    invoke-virtual {p2, p1, v2, v0}, Lcom/helpscout/beacon/a/c/e/g/q;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/b$a$b;->a:Lcom/helpscout/beacon/a/c/e/g/b$a$b;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/b$a$a;->a:Lcom/helpscout/beacon/a/c/e/g/b$a$a;

    :goto_2
    return-object p1
.end method
