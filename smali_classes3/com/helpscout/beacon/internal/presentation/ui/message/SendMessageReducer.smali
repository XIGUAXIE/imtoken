.class public final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;
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
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010P\u001a\u00020N\u0012\u0006\u00102\u001a\u000200\u0012\u0006\u0010M\u001a\u00020J\u0012\u0006\u0010G\u001a\u00020D\u0012\u0006\u00106\u001a\u000203\u0012\u0008\u0008\u0002\u0010:\u001a\u000207\u0012\u0008\u0008\u0002\u0010I\u001a\u000207\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0012J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0015J\u001f\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u001bJ\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u001dJ\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0012J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0012J\u0017\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u001f\u0010\"\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008\"\u0010\'J\u001f\u0010(\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008(\u0010\'J\u001f\u0010\u0008\u001a\u00020\r2\u0006\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010+J\u0017\u0010(\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0012J\u001f\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020,2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010/R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010<R\u0016\u0010@\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010?R\u0016\u0010C\u001a\u00020A8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010BR\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010I\u001a\u0002078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u00109R\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010O\u00a8\u0006S"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "e",
        "()V",
        "d",
        "Landroid/net/Uri;",
        "fileUri",
        "a",
        "(Landroid/net/Uri;)V",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "attachment",
        "(Lcom/helpscout/beacon/a/d/e/a/d;)V",
        "",
        "g",
        "()Z",
        "",
        "filename",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/a/d/e/a/f;",
        "missingFields",
        "(Lcom/helpscout/beacon/a/d/e/a/f;)V",
        "formValid",
        "(ZLcom/helpscout/beacon/a/d/e/a/f;)V",
        "f",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;",
        "action",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;)V",
        "name",
        "subject",
        "message",
        "email",
        "c",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "field",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "value",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V",
        "b",
        "customField",
        "customFieldValue",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Z",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/a/c/e/i/a;",
        "Lcom/helpscout/beacon/a/c/e/i/a;",
        "loadMessageFormUseCase",
        "Lcom/helpscout/beacon/a/c/e/i/b;",
        "j",
        "Lcom/helpscout/beacon/a/c/e/i/b;",
        "saveDraftMessageFormUseCase",
        "Lkotlin/coroutines/CoroutineContext;",
        "k",
        "Lkotlin/coroutines/CoroutineContext;",
        "uiContext",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
        "form",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "i",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "attachmentHelper",
        "l",
        "ioContext",
        "Lcom/helpscout/beacon/a/c/e/i/c;",
        "h",
        "Lcom/helpscout/beacon/a/c/e/i/c;",
        "sendMessageUseCase",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore",
        "<init>",
        "(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/i/a;Lcom/helpscout/beacon/a/c/e/i/c;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/i/b;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
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

.field private e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

.field private final f:Lcom/helpscout/beacon/BeaconDatastore;

.field private final g:Lcom/helpscout/beacon/a/c/e/i/a;

.field private final h:Lcom/helpscout/beacon/a/c/e/i/c;

.field private final i:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final j:Lcom/helpscout/beacon/a/c/e/i/b;

.field private final k:Lkotlin/coroutines/CoroutineContext;

.field private final l:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/i/a;Lcom/helpscout/beacon/a/c/e/i/c;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/i/b;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadMessageFormUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendMessageUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveDraftMessageFormUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->g:Lcom/helpscout/beacon/a/c/e/i/a;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->h:Lcom/helpscout/beacon/a/c/e/i/c;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->i:Lcom/helpscout/beacon/internal/presentation/common/a;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->j:Lcom/helpscout/beacon/a/c/e/i/b;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->k:Lkotlin/coroutines/CoroutineContext;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/i/a;Lcom/helpscout/beacon/a/c/e/i/c;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/i/b;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;-><init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/i/a;Lcom/helpscout/beacon/a/c/e/i/c;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/i/b;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lcom/helpscout/beacon/internal/presentation/common/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->i:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-object p0
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 14

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f7

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/e/a/f;)V
    .locals 13

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v12, "form"

    if-nez v0, :cond_0

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1cf

    const/4 v11, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v11}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_1

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/a/d/e/a/d;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lcom/helpscout/beacon/a/d/e/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;)V
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->b()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    move-result-object v0

    instance-of v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->j:Lcom/helpscout/beacon/a/c/e/i/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;->a()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/c/e/i/b;->a(Lcom/helpscout/beacon/a/d/e/a/e;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$d;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 14

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f7

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method private final a(ZLcom/helpscout/beacon/a/d/e/a/f;)V
    .locals 13

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v12, "form"

    if-nez v0, :cond_0

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1cf

    const/4 v11, 0x0

    move-object v5, p2

    move v6, p1

    invoke-static/range {v0 .. v11}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lcom/helpscout/beacon/a/d/e/a/b;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;Ljava/util/Map;Lcom/helpscout/beacon/a/d/e/a/f;ZLcom/helpscout/beacon/model/PreFilledForm;Ljava/util/Map;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_1

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Z
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getRequired()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;
    .locals 1

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p0, :cond_0

    const-string v0, "form"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez v0, :cond_0

    const-string v1, "form"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setEmail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->l:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final c(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 13

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->b(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "form"

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v5}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    check-cast v4, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-eqz v4, :cond_d

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    :goto_2
    move-object v9, p1

    goto :goto_6

    :cond_6
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p2, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v5}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v6

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_8

    goto :goto_4

    :cond_a
    move-object v4, v2

    :goto_4
    check-cast v4, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-nez v4, :cond_d

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p2, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/a/d/e/a/f;->c()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_c

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v9, p2

    move-object p2, p1

    :goto_6
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/helpscout/beacon/a/d/e/a/f;->a(Lcom/helpscout/beacon/a/d/e/a/f;ZZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v2

    :cond_d
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result p1

    if-eqz v2, :cond_f

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p2, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v2

    :goto_7
    invoke-direct {p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_1

    const-string v0, "form"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/a/d/e/a/f;->a(Lcom/helpscout/beacon/a/d/e/a/f;ZZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lcom/helpscout/beacon/a/c/e/i/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->g:Lcom/helpscout/beacon/a/c/e/i/a;

    return-object p0
.end method

.method private final d()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/c$e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/c$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/c$d;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_0

    const-string v0, "form"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/a/d/e/a/f;->a(Lcom/helpscout/beacon/a/d/e/a/f;ZZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lcom/helpscout/beacon/a/c/e/i/c;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->h:Lcom/helpscout/beacon/a/c/e/i/c;

    return-object p0
.end method

.method private final e()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getEnablePreviousMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/c$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/c$c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/c$b;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/a/d/e/a/f;->a(Lcom/helpscout/beacon/a/d/e/a/f;ZZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method private final f()V
    .locals 8

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v1, "form"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->k:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    const-string v1, "form"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/a/d/e/a/f;->a(Lcom/helpscout/beacon/a/d/e/a/f;ZZZZLjava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->f()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(ZLcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method private final g()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e:Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-nez v0, :cond_0

    const-string v1, "form"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b()Ljava/util/Map;

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

    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$b;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto/16 :goto_1

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$a;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$a;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$f;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d()V

    goto/16 :goto_1

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$c;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$d;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$e;

    if-eqz p2, :cond_5

    :goto_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f()V

    goto/16 :goto_1

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;)V

    goto/16 :goto_1

    :cond_6
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$m;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$m;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$n;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$n;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$n;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$l;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$l;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$k;

    if-eqz p2, :cond_a

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$k;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;

    if-eqz p2, :cond_b

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;->a()Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;->b()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->c(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    goto :goto_1

    :cond_b
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;)V

    goto :goto_1

    :cond_c
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$g;

    if-eqz p2, :cond_d

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->e()V

    goto :goto_1

    :cond_d
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/a$a;

    if-eqz p2, :cond_e

    check-cast p1, Lcom/helpscout/beacon/a/d/c/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_1
    return-void
.end method
