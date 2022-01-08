.class public final Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;
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
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010E\u001a\u00020B\u0012\u0006\u0010K\u001a\u00020H\u0012\u0006\u0010<\u001a\u000209\u0012\u0008\u0008\u0002\u0010A\u001a\u00020)\u0012\u0008\u0008\u0002\u0010,\u001a\u00020)\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J%\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0016H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0018J\u001f\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001aJ\u001f\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u001aJ-\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0016H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001cJ\u001f\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008\u0007\u0010!R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020\u000f8\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00101R(\u00108\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u00083\u00104\u0012\u0004\u00087\u0010\u0004\u001a\u0004\u00085\u0010\u000e\"\u0004\u0008\u0007\u00106R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010?\u001a\u00020=8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010>R\u0016\u0010A\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010+R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010G\u001a\u00020\u000f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008F\u0010\'R\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010J\u00a8\u0006N"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "d",
        "()V",
        "Landroid/net/Uri;",
        "fileUri",
        "a",
        "(Landroid/net/Uri;)V",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "attachment",
        "(Lcom/helpscout/beacon/a/d/e/a/d;)V",
        "",
        "e",
        "()Z",
        "",
        "filename",
        "(Ljava/lang/String;)V",
        "conversationId",
        "b",
        "message",
        "c",
        "",
        "attachments",
        "(Ljava/lang/String;Ljava/util/List;)Z",
        "draft",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "draftText",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/a/c/e/h/m;",
        "i",
        "Lcom/helpscout/beacon/a/c/e/h/m;",
        "sendReplyUseCase",
        "h",
        "Ljava/lang/String;",
        "BLANK_INITIAL_MESSAGE",
        "Lkotlin/coroutines/CoroutineContext;",
        "n",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;",
        "Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;",
        "form",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "g",
        "Z",
        "isLoading$beacon_release",
        "(Z)V",
        "isLoading$beacon_release$annotations",
        "isLoading",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "l",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "attachmentHelper",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "m",
        "uiContext",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "j",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore",
        "f",
        "originalDraft",
        "Lcom/helpscout/beacon/a/b/c/a;",
        "k",
        "Lcom/helpscout/beacon/a/b/c/a;",
        "draftsProvider",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/h/m;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/b/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
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

.field private e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

.field private f:Ljava/lang/String;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:Lcom/helpscout/beacon/a/c/e/h/m;

.field private final j:Lcom/helpscout/beacon/BeaconDatastore;

.field private final k:Lcom/helpscout/beacon/a/b/c/a;

.field private final l:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final m:Lkotlin/coroutines/CoroutineContext;

.field private final n:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/h/m;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/b/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "sendReplyUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftsProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->i:Lcom/helpscout/beacon/a/c/e/h/m;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->j:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->k:Lcom/helpscout/beacon/a/b/c/a;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->l:Lcom/helpscout/beacon/internal/presentation/common/a;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->m:Lkotlin/coroutines/CoroutineContext;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->n:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    const-string p1, ""

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/h/m;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/b/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p6

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;-><init>(Lcom/helpscout/beacon/a/c/e/h/m;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/b/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;)Lcom/helpscout/beacon/internal/presentation/common/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->l:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-object p0
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->n:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Lcom/helpscout/beacon/a/d/e/a/d;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->g:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$c;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/a$c;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->m:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$c;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

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
    return p1
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->n:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string p1, "form"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->j:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->k:Lcom/helpscout/beacon/a/b/c/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->f:Ljava/lang/String;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->h:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->f:Ljava/lang/String;

    const-string v1, "originalDraft"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->f:Ljava/lang/String;

    if-nez v6, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;-><init>(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_1
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->k:Lcom/helpscout/beacon/a/b/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/a/b/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$b;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$b;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;)Lcom/helpscout/beacon/a/c/e/h/m;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->i:Lcom/helpscout/beacon/a/c/e/h/m;

    return-object p0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-eqz v0, :cond_2

    const-string v8, "form"

    if-nez v0, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez v2, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->h:Ljava/lang/String;

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez p1, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method private final d()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/a$e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/a$d;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method private final e()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-nez v0, :cond_0

    const-string v1, "form"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$e;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->d()V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$a;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$a;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$c;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$d;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$g;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$b;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/d$f;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/helpscout/beacon/a/d/c/d$f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/d$f;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->g:Z

    return-void
.end method
