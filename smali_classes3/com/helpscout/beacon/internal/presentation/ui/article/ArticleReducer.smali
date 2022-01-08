.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;
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
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010A\u001a\u00020>\u0012\u0006\u00106\u001a\u000203\u0012\u0006\u0010L\u001a\u00020J\u0012\u0006\u0010N\u001a\u00020M\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\'\u0012\u0008\u0008\u0002\u0010I\u001a\u00020+\u0012\u0008\u0008\u0002\u0010.\u001a\u00020+\u00a2\u0006\u0004\u0008O\u0010PJ-\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0012J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0015J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0018J1\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019*\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001dJ-\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019*\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001eH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010 J\u0019\u0010\u0007\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010!J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010&R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010;8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00198B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u001a8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010GR\u0016\u0010I\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010-R\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010K\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "url",
        "",
        "linkedArticleUrls",
        "",
        "a",
        "(Ljava/lang/String;Ljava/util/Map;)V",
        "articleId",
        "",
        "forceUpdate",
        "showLoading",
        "(Ljava/lang/String;ZZ)V",
        "d",
        "()V",
        "i",
        "b",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/a/c/e/e/c$a;",
        "rating",
        "(Lcom/helpscout/beacon/a/c/e/e/c$a;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;",
        "feedbackInfo",
        "(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V",
        "",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
        "articleState",
        "fromCache",
        "(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;",
        "Lkotlin/Function0;",
        "ifEmptyAfterRemoval",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;",
        "(Ljava/util/List;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/f;",
        "h",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/f;",
        "articleMemoryCache",
        "Lkotlin/coroutines/CoroutineContext;",
        "j",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lcom/helpscout/beacon/a/d/c/c;",
        "g",
        "()Lcom/helpscout/beacon/a/d/c/c;",
        "lastArticleState",
        "Lcom/helpscout/beacon/a/c/e/e/c;",
        "f",
        "Lcom/helpscout/beacon/a/c/e/e/c;",
        "rateArticleUseCase",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "c",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;",
        "()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;",
        "lastSuccessfulArticle",
        "Lcom/helpscout/beacon/a/c/e/e/a;",
        "e",
        "Lcom/helpscout/beacon/a/c/e/e/a;",
        "getArticleDetailsUseCase",
        "()Ljava/util/List;",
        "articles",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "()Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
        "lastArticle",
        "uiContext",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "externalLinkHandler",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "beaconDataStore",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/e/a;Lcom/helpscout/beacon/a/c/e/e/c;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/ui/article/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
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

.field private final e:Lcom/helpscout/beacon/a/c/e/e/a;

.field private final f:Lcom/helpscout/beacon/a/c/e/e/c;

.field private final g:Lcom/helpscout/beacon/internal/presentation/common/g;

.field private final h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

.field private final i:Lkotlin/coroutines/CoroutineContext;

.field private final j:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/e/a;Lcom/helpscout/beacon/a/c/e/e/c;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/ui/article/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "getArticleDetailsUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateArticleUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalLinkHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconDataStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articleMemoryCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e:Lcom/helpscout/beacon/a/c/e/e/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->f:Lcom/helpscout/beacon/a/c/e/e/c;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->g:Lcom/helpscout/beacon/internal/presentation/common/g;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->i:Lkotlin/coroutines/CoroutineContext;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->j:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p4}, Lcom/helpscout/beacon/BeaconDatastore;->getMessagingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p4}, Lcom/helpscout/beacon/BeaconDatastore;->getOverrideMessagingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance p2, Lcom/helpscout/beacon/a/d/c/c;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p2, p1, p4, p3, p4}, Lcom/helpscout/beacon/a/d/c/c;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/e/a;Lcom/helpscout/beacon/a/c/e/e/c;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/ui/article/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;-><init>(Lcom/helpscout/beacon/a/c/e/e/a;Lcom/helpscout/beacon/a/c/e/e/c;Lcom/helpscout/beacon/internal/presentation/common/g;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/presentation/ui/article/f;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lcom/helpscout/beacon/internal/presentation/ui/article/f;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    return-object p0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    if-eqz p3, :cond_0

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->d(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;)V

    :goto_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    if-nez p3, :cond_5

    instance-of p2, p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->a(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object p1, p2

    :cond_5
    return-object p1
.end method

.method private final a(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h:Lcom/helpscout/beacon/internal/presentation/ui/article/f;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/f;->e(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method private final a(Lcom/helpscout/beacon/a/c/e/e/c$a;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->i:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/a/c/e/e/c$a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V
    .locals 7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->h()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;Lcom/helpscout/beacon/internal/core/model/ArticleDetailsApi;Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/c$a$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/e/c$a$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/a/c/e/e/c$a;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v1, p2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->g:Lcom/helpscout/beacon/internal/presentation/common/g;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/g;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final a(Ljava/lang/String;ZZ)V
    .locals 9

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->i:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->g()Lcom/helpscout/beacon/a/d/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/helpscout/beacon/a/d/c/c;->a(Lcom/helpscout/beacon/a/d/c/c;ZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/c/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/e/c$a$b;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/e/c$a$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/a/c/e/e/c$a;)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lcom/helpscout/beacon/a/c/e/e/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e:Lcom/helpscout/beacon/a/c/e/e/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->j:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final d()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$b;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)V

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;)Lcom/helpscout/beacon/a/c/e/e/c;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->f:Lcom/helpscout/beacon/a/c/e/e/c;

    return-object p0
.end method

.method private final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->g()Lcom/helpscout/beacon/a/d/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final f()Lcom/helpscout/beacon/internal/presentation/ui/article/b;
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    return-object v0
.end method

.method private final g()Lcom/helpscout/beacon/a/d/c/c;
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    move-result-object v0

    instance-of v1, v0, Lcom/helpscout/beacon/a/d/c/c;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/helpscout/beacon/a/d/c/c;

    return-object v0
.end method

.method private final h()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->f()Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    move-result-object v0

    instance-of v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    return-object v0
.end method

.method private final i()V
    .locals 7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->f()Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$b;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/b$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/b$b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;Ljava/lang/String;ZZILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$c;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/b$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/b$c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/b$c;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$a;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->d()V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$f;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->i()V

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$h;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/a/d/c/b$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/b$h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$g;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/a/d/c/b$g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/b$g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleReducer;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/b$d;

    if-eqz p2, :cond_6

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/g$b;

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/g$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_1

    :cond_6
    instance-of p1, p1, Lcom/helpscout/beacon/a/d/c/b$e;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/g$b;

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/g$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_1
    return-void
.end method
