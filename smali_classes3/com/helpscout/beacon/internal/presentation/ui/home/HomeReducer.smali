.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;
.super Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u00104\u001a\u000201\u0012\u0006\u0010A\u001a\u00020>\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u00108\u001a\u000205\u0012\u0008\u0008\u0002\u0010:\u001a\u00020-\u0012\u0008\u0008\u0002\u00100\u001a\u00020-\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0010J\u0019\u0010\t\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J!\u0010\t\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\t\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0018J#\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u001bJ\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\t\u0010 J%\u0010\t\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010!R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010:\u001a\u00020-8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010/R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\"\u0010H\u001a\u00020B8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010C\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010G\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006K"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "e",
        "()V",
        "d",
        "",
        "signature",
        "searchTerm",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "page",
        "c",
        "(Ljava/lang/String;I)V",
        "url",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/home/b;",
        "destinationHomeTab",
        "(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V",
        "b",
        "query",
        "Lcom/helpscout/beacon/a/d/b/e;",
        "searchResult",
        "(Lcom/helpscout/beacon/a/d/b/e;)V",
        "",
        "askTabSelectedOverride",
        "(Ljava/lang/String;Z)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "i",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "chatState",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/a/c/e/b;",
        "f",
        "Lcom/helpscout/beacon/a/c/e/b;",
        "homeInitUseCase",
        "Lkotlin/coroutines/CoroutineContext;",
        "l",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lcom/helpscout/beacon/a/c/e/e/d;",
        "g",
        "Lcom/helpscout/beacon/a/c/e/e/d;",
        "searchArticlesUseCase",
        "Lcom/helpscout/beacon/a/c/e/a;",
        "j",
        "Lcom/helpscout/beacon/a/c/e/a;",
        "getConfigUseCase",
        "k",
        "uiContext",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "h",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "externalLinkHandler",
        "Lcom/helpscout/beacon/a/d/b/d;",
        "Lcom/helpscout/beacon/a/d/b/d;",
        "getHomeConfig",
        "()Lcom/helpscout/beacon/a/d/b/d;",
        "setHomeConfig",
        "(Lcom/helpscout/beacon/a/d/b/d;)V",
        "homeConfig",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/b;Lcom/helpscout/beacon/a/c/e/e/d;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/e/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final c:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final d:Lkotlinx/coroutines/CoroutineScope;

.field public e:Lcom/helpscout/beacon/a/d/b/d;

.field private final f:Lcom/helpscout/beacon/a/c/e/b;

.field private final g:Lcom/helpscout/beacon/a/c/e/e/d;

.field private final h:Lcom/helpscout/beacon/internal/presentation/common/g;

.field private final i:Lcom/helpscout/beacon/a/c/b/a;

.field private final j:Lcom/helpscout/beacon/a/c/e/a;

.field private final k:Lkotlin/coroutines/CoroutineContext;

.field private final l:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/b;Lcom/helpscout/beacon/a/c/e/e/d;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/e/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "homeInitUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchArticlesUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalLinkHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConfigUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->f:Lcom/helpscout/beacon/a/c/e/b;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->g:Lcom/helpscout/beacon/a/c/e/e/d;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->h:Lcom/helpscout/beacon/internal/presentation/common/g;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->i:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->j:Lcom/helpscout/beacon/a/c/e/a;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->k:Lkotlin/coroutines/CoroutineContext;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/b;Lcom/helpscout/beacon/a/c/e/e/d;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/e/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;-><init>(Lcom/helpscout/beacon/a/c/e/b;Lcom/helpscout/beacon/a/c/e/e/d;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/e/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->l:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/e;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e:Lcom/helpscout/beacon/a/d/b/d;

    if-nez v0, :cond_0

    const-string v1, "homeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    instance-of v1, v0, Lcom/helpscout/beacon/a/d/b/d$c;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/helpscout/beacon/a/d/b/d$c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$c;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/helpscout/beacon/a/d/c/k$d;->a:Lcom/helpscout/beacon/a/d/c/k$d;

    goto/16 :goto_2

    :cond_2
    :goto_0
    new-instance p1, Lcom/helpscout/beacon/a/d/c/k$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$c;->d()Z

    move-result v1

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$c;->b()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$c;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/helpscout/beacon/a/d/c/k$b;-><init>(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    goto/16 :goto_2

    :cond_3
    instance-of v1, v0, Lcom/helpscout/beacon/a/d/b/d$a;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/helpscout/beacon/a/d/b/e$e;->a:Lcom/helpscout/beacon/a/d/b/e$e;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/helpscout/beacon/a/d/b/e$a;->a:Lcom/helpscout/beacon/a/d/b/e$a;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/helpscout/beacon/a/d/c/k$a$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/d/c/k$a$a;-><init>(Lcom/helpscout/beacon/a/d/b/e;)V

    move-object p1, v0

    goto/16 :goto_2

    :cond_5
    :goto_1
    new-instance p1, Lcom/helpscout/beacon/a/d/c/k$a$b;

    check-cast v0, Lcom/helpscout/beacon/a/d/b/d$a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/a/d/c/k$a$b;-><init>(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_6
    instance-of v1, v0, Lcom/helpscout/beacon/a/d/b/d$b;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/helpscout/beacon/a/d/b/e$e;->a:Lcom/helpscout/beacon/a/d/b/e$e;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    new-instance v1, Lcom/helpscout/beacon/a/d/c/k$b;

    check-cast v0, Lcom/helpscout/beacon/a/d/b/d$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->d()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->b()Z

    move-result v3

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/helpscout/beacon/a/d/c/k$b;-><init>(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    new-instance v2, Lcom/helpscout/beacon/a/d/c/k$a$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/helpscout/beacon/a/d/c/k$a$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/helpscout/beacon/a/d/c/k$c$b;-><init>(Lcom/helpscout/beacon/a/d/c/k$b;Lcom/helpscout/beacon/a/d/c/k$a$b;Lcom/helpscout/beacon/model/FocusMode;)V

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/helpscout/beacon/a/d/b/e$a;->a:Lcom/helpscout/beacon/a/d/b/e$a;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    new-instance v1, Lcom/helpscout/beacon/a/d/c/k$b;

    check-cast v0, Lcom/helpscout/beacon/a/d/b/d$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->d()Z

    move-result v2

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->b()Z

    move-result v3

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/helpscout/beacon/a/d/c/k$b;-><init>(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    new-instance v2, Lcom/helpscout/beacon/a/d/c/k$a$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/helpscout/beacon/a/d/c/k$a$b;-><init>(Ljava/util/List;)V

    sget-object v0, Lcom/helpscout/beacon/model/FocusMode;->NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

    invoke-direct {p1, v1, v2, v0}, Lcom/helpscout/beacon/a/d/c/k$c$b;-><init>(Lcom/helpscout/beacon/a/d/c/k$b;Lcom/helpscout/beacon/a/d/c/k$a$b;Lcom/helpscout/beacon/model/FocusMode;)V

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/helpscout/beacon/a/d/c/k$c$a;

    new-instance v2, Lcom/helpscout/beacon/a/d/c/k$b;

    check-cast v0, Lcom/helpscout/beacon/a/d/b/d$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->d()Z

    move-result v3

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->b()Z

    move-result v4

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->a()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Ljava/util/List;)Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/helpscout/beacon/a/d/c/k$b;-><init>(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    new-instance v3, Lcom/helpscout/beacon/a/d/c/k$a$a;

    invoke-direct {v3, p1}, Lcom/helpscout/beacon/a/d/c/k$a$a;-><init>(Lcom/helpscout/beacon/a/d/b/e;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/b/d$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;-><init>(Lcom/helpscout/beacon/a/d/c/k$b;Lcom/helpscout/beacon/a/d/c/k$a$a;Lcom/helpscout/beacon/model/FocusMode;)V

    move-object p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Lcom/helpscout/beacon/a/d/b/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e:Lcom/helpscout/beacon/a/d/b/d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/d$c;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/d$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/d$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/d$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lcom/helpscout/beacon/a/c/e/e/d;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->g:Lcom/helpscout/beacon/a/c/e/e/d;

    return-object p0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->c(Ljava/lang/String;I)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->h:Lcom/helpscout/beacon/internal/presentation/common/g;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/d/b/e$d;->a:Lcom/helpscout/beacon/a/d/b/e$d;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/a/d/b/e$c;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/d/b/e$c;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->k:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final c(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/d/b/e$h;->a:Lcom/helpscout/beacon/a/d/b/e$h;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/a/d/b/e$g;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/d/b/e$g;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    return-void
.end method

.method private final d()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/d/b/e$a;->a:Lcom/helpscout/beacon/a/d/b/e$a;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    return-void
.end method

.method private final e()V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e:Lcom/helpscout/beacon/a/d/b/d;

    if-nez v0, :cond_0

    const-string v1, "homeConfig"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    instance-of v1, v0, Lcom/helpscout/beacon/a/d/b/d$b;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/a/d/b/d$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1b

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/a/d/b/d$b;->a(Lcom/helpscout/beacon/a/d/b/d$b;Ljava/util/List;Ljava/util/List;ZZLcom/helpscout/beacon/model/FocusMode;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/b/d$b;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e:Lcom/helpscout/beacon/a/d/b/d;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/helpscout/beacon/a/d/b/d$c;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/a/d/b/d$c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/helpscout/beacon/a/d/b/d$c;->a(Lcom/helpscout/beacon/a/d/b/d$c;ZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/b/d$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/helpscout/beacon/a/d/b/e$e;->a:Lcom/helpscout/beacon/a/d/b/e$e;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    iget-object p2, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    iget-boolean p2, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->f:Z

    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;

    :try_start_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v8, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, p3

    move p3, v8

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3
    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->j:Lcom/helpscout/beacon/a/c/e/a;

    iput-object p0, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->e:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->f:Z

    iput v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    invoke-static {p3, v5, v0, v6, v5}, Lcom/helpscout/beacon/a/c/e/a;->a(Lcom/helpscout/beacon/a/c/e/a;Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    :try_start_4
    check-cast v2, Lcom/helpscout/beacon/a/c/e/a$a;

    instance-of v7, v2, Lcom/helpscout/beacon/a/c/e/a$a$b;

    if-eqz v7, :cond_8

    iget-object v2, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->i:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$e;

    invoke-direct {p3, p1, v5}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_6
    iget-object v2, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->f:Lcom/helpscout/beacon/a/c/e/b;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer$d;->b:I

    invoke-virtual {v2, p2, p3, v0}, Lcom/helpscout/beacon/a/c/e/b;->a(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move-object p2, p1

    :goto_2
    :try_start_5
    check-cast p3, Lcom/helpscout/beacon/a/d/b/d;

    iput-object p3, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e:Lcom/helpscout/beacon/a/d/b/d;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object p1

    :cond_8
    :try_start_6
    instance-of p2, v2, Lcom/helpscout/beacon/a/c/e/a$a$a;

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    check-cast v2, Lcom/helpscout/beacon/a/c/e/a$a$a;

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/c/e/a$a$a;->a()Ljava/lang/Exception;

    move-result-object p2

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v2, p0

    :goto_3
    move-object p2, v2

    :goto_4
    instance-of p3, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/e;

    if-eqz p3, :cond_a

    sget-object p1, Lcom/helpscout/beacon/a/d/c/k$e;->a:Lcom/helpscout/beacon/a/d/c/k$e;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    goto :goto_5

    :cond_a
    new-instance p3, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :cond_b
    :goto_5
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$d;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$d;->a()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$h;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$g;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$f;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$a;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$a;->a()Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$c;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/a/d/c/j$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/j$c;->a()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/j$b;

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->d()V

    goto :goto_0

    :cond_6
    instance-of p1, p1, Lcom/helpscout/beacon/a/d/c/j$e;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeReducer;->e()V

    :cond_7
    :goto_0
    return-void
.end method
