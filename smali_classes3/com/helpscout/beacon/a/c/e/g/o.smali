.class public final Lcom/helpscout/beacon/a/c/e/g/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/d;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/c;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/d;Lcom/helpscout/beacon/a/b/c/b/c;)V
    .locals 1

    const-string v0, "chatIdGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/o;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/o;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    new-instance v10, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/o;->a:Lcom/helpscout/beacon/a/b/c/b/d;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/d;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->lineItem:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getSYSTEM_AUTHOR_API()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x68

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/o;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {p1, v10, v0, p2}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
