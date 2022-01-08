.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;
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
        "\u0000\u00c4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001BK\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u0010=\u001a\u00020:\u0012\u0006\u0010K\u001a\u00020H\u0012\u0006\u0010R\u001a\u00020O\u0012\u0006\u0010V\u001a\u00020S\u0012\u0006\u0010Z\u001a\u00020W\u0012\u0008\u0008\u0002\u0010C\u001a\u00020>\u0012\u0008\u0008\u0002\u0010A\u001a\u00020>\u00a2\u0006\u0004\u0008[\u0010\\J+\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0012J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000fJ5\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0014*\u0008\u0012\u0004\u0012\u00020\u00150\u00142\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001aJ\u001b\u0010\u0007\u001a\u00020\u001e*\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001fJ#\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u0014H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\"J)\u0010\u0007\u001a\u00020\u0015*\u00020#2\u0006\u0010\u0013\u001a\u00020\u00022\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u0014H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010&J\u0013\u0010\u0007\u001a\u00020\u0015*\u00020 H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\'J\u0013\u0010\u0007\u001a\u00020\u0015*\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010(J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010.\u001a\u00020-2\u0006\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u0008\u0007\u00101R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u00087\u0010F\"\u0004\u0008G\u0010\u000fR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010N\u001a\u00020L8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "url",
        "",
        "linkedArticleUrls",
        "",
        "a",
        "(Ljava/lang/String;Ljava/util/Map;)V",
        "conversationId",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
        "attachment",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;)V",
        "id",
        "c",
        "(Ljava/lang/String;)V",
        "",
        "page",
        "(Ljava/lang/String;I)V",
        "threadId",
        "",
        "Lcom/helpscout/beacon/a/d/b/b;",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
        "firstThread",
        "threadCount",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
        "(Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;I)Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationApi;",
        "",
        "hasDraft",
        "Lcom/helpscout/beacon/a/d/b/c;",
        "(Lcom/helpscout/beacon/internal/domain/model/ConversationApi;Z)Lcom/helpscout/beacon/a/d/b/c;",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationThread;",
        "items",
        "(Ljava/util/List;)Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "agents",
        "(Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/a/d/b/b;",
        "(Lcom/helpscout/beacon/internal/domain/model/ConversationThread;)Lcom/helpscout/beacon/a/d/b/b;",
        "(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;)Lcom/helpscout/beacon/a/d/b/b;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "onResume",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/a/c/e/h/i;",
        "f",
        "Lcom/helpscout/beacon/a/c/e/h/i;",
        "getConversationUseCase",
        "Lkotlinx/coroutines/CoroutineScope;",
        "d",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "Lcom/helpscout/beacon/a/c/e/h/h;",
        "g",
        "Lcom/helpscout/beacon/a/c/e/h/h;",
        "getConversationThreadsUseCase",
        "Lkotlin/coroutines/CoroutineContext;",
        "m",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "l",
        "uiContext",
        "e",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "b",
        "Lcom/helpscout/beacon/a/c/e/h/l;",
        "h",
        "Lcom/helpscout/beacon/a/c/e/h/l;",
        "markConversationThreadAsReadUseCase",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/a/c/e/f/b;",
        "i",
        "Lcom/helpscout/beacon/a/c/e/f/b;",
        "downloadThreadAttachmentUseCase",
        "Lcom/helpscout/beacon/a/c/e/h/b;",
        "j",
        "Lcom/helpscout/beacon/a/c/e/h/b;",
        "clearConversationNotificationUseCase",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "k",
        "Lcom/helpscout/beacon/internal/presentation/common/g;",
        "externalLinkHandler",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/h/i;Lcom/helpscout/beacon/a/c/e/h/h;Lcom/helpscout/beacon/a/c/e/h/l;Lcom/helpscout/beacon/a/c/e/f/b;Lcom/helpscout/beacon/a/c/e/h/b;Lcom/helpscout/beacon/internal/presentation/common/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
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

.field public e:Ljava/lang/String;

.field private final f:Lcom/helpscout/beacon/a/c/e/h/i;

.field private final g:Lcom/helpscout/beacon/a/c/e/h/h;

.field private final h:Lcom/helpscout/beacon/a/c/e/h/l;

.field private final i:Lcom/helpscout/beacon/a/c/e/f/b;

.field private final j:Lcom/helpscout/beacon/a/c/e/h/b;

.field private final k:Lcom/helpscout/beacon/internal/presentation/common/g;

.field private final l:Lkotlin/coroutines/CoroutineContext;

.field private final m:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/h/i;Lcom/helpscout/beacon/a/c/e/h/h;Lcom/helpscout/beacon/a/c/e/h/l;Lcom/helpscout/beacon/a/c/e/f/b;Lcom/helpscout/beacon/a/c/e/h/b;Lcom/helpscout/beacon/internal/presentation/common/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "getConversationUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConversationThreadsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "markConversationThreadAsReadUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadThreadAttachmentUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearConversationNotificationUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalLinkHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->f:Lcom/helpscout/beacon/a/c/e/h/i;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->g:Lcom/helpscout/beacon/a/c/e/h/h;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->h:Lcom/helpscout/beacon/a/c/e/h/l;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->i:Lcom/helpscout/beacon/a/c/e/f/b;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->j:Lcom/helpscout/beacon/a/c/e/h/b;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->k:Lcom/helpscout/beacon/internal/presentation/common/g;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->l:Lkotlin/coroutines/CoroutineContext;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->m:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/h/i;Lcom/helpscout/beacon/a/c/e/h/h;Lcom/helpscout/beacon/a/c/e/h/l;Lcom/helpscout/beacon/a/c/e/f/b;Lcom/helpscout/beacon/a/c/e/h/b;Lcom/helpscout/beacon/internal/presentation/common/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;-><init>(Lcom/helpscout/beacon/a/c/e/h/i;Lcom/helpscout/beacon/a/c/e/h/h;Lcom/helpscout/beacon/a/c/e/h/l;Lcom/helpscout/beacon/a/c/e/f/b;Lcom/helpscout/beacon/a/c/e/h/b;Lcom/helpscout/beacon/internal/presentation/common/g;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/h/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->j:Lcom/helpscout/beacon/a/c/e/h/b;

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationThread;)Lcom/helpscout/beacon/a/d/b/b;
    .locals 14

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/d/b/a$c;->a:Lcom/helpscout/beacon/a/d/b/a$c;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/helpscout/beacon/a/d/b/a$b;->a:Lcom/helpscout/beacon/a/d/b/a$b;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/helpscout/beacon/a/d/b/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getInitials()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/helpscout/beacon/a/d/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/helpscout/beacon/a/d/b/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getAttachments()Ljava/util/List;

    move-result-object v9

    sget-object v1, Lcom/helpscout/beacon/a/d/b/a$b;->a:Lcom/helpscout/beacon/a/d/b/a$b;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getCustomerViewed()Z

    move-result p1

    move v10, p1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    const/4 v11, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/helpscout/beacon/a/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/b/a;Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;)Lcom/helpscout/beacon/a/d/b/b;
    .locals 14

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/d/b/a$c;->a:Lcom/helpscout/beacon/a/d/b/a$c;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/helpscout/beacon/a/d/b/a$b;->a:Lcom/helpscout/beacon/a/d/b/a$b;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/helpscout/beacon/a/d/b/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getInitials()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/helpscout/beacon/a/d/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/helpscout/beacon/a/d/b/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    move-object v5, v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getPreview()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/helpscout/beacon/a/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/b/a;Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/a/d/b/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)",
            "Lcom/helpscout/beacon/a/d/b/b;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getAuthor()Lcom/helpscout/beacon/internal/domain/model/TranscriptAuthor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/TranscriptAuthor;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/d/b/a$b;->a:Lcom/helpscout/beacon/a/d/b/a$b;

    :goto_0
    move-object v7, v0

    goto :goto_4

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getAuthor()Lcom/helpscout/beacon/internal/domain/model/TranscriptAuthor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/domain/model/TranscriptAuthor;->getId()I

    move-result v3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    new-instance v0, Lcom/helpscout/beacon/a/d/b/a$a;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getInitials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/helpscout/beacon/a/d/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_4
    new-instance v0, Lcom/helpscout/beacon/a/d/b/b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;->getAttachments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v4, v0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v13}, Lcom/helpscout/beacon/a/d/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/b/a;Ljava/lang/String;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationApi;Z)Lcom/helpscout/beacon/a/d/b/c;
    .locals 8

    new-instance v2, Lcom/helpscout/beacon/internal/domain/model/ThreadInfo;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatForConversationTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/helpscout/beacon/internal/domain/model/ThreadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getThreads()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->INSTANCE:Lcom/helpscout/beacon/internal/domain/model/Page$Utils;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getThreadCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getThreads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/helpscout/beacon/internal/domain/model/Page$Utils;->hasMorePages(ILjava/lang/Integer;)Z

    move-result v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatForConversationTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getSubject()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v7, Lcom/helpscout/beacon/a/d/b/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getThreadCount()I

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;->getLinkedArticleIds()Ljava/util/Map;

    move-result-object v6

    move-object v0, v7

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/a/d/b/c;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ThreadInfo;Ljava/util/List;ZZLjava/util/Map;)V

    return-object v7
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Lcom/helpscout/beacon/internal/domain/model/ConversationApi;Z)Lcom/helpscout/beacon/a/d/b/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationApi;Z)Lcom/helpscout/beacon/a/d/b/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThread;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/b/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$c;

    invoke-direct {v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$c;-><init>()V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getType()Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    move-result-object v3

    sget-object v4, Lcom/helpscout/beacon/internal/presentation/ui/conversation/d;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getTranscript()Lcom/helpscout/beacon/internal/domain/model/Transcript;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/Transcript;->getAgents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/Transcript;->getEvents()Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$b;

    invoke-direct {v4}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$b;-><init>()V

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThread;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/domain/model/TranscriptEvent;Ljava/lang/String;Ljava/util/List;)Lcom/helpscout/beacon/a/d/b/b;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationThread;)Lcom/helpscout/beacon/a/d/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/a/d/b/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/helpscout/beacon/a/d/b/b;->a(Lcom/helpscout/beacon/a/d/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/a/d/b/a;Ljava/lang/String;Ljava/util/List;ZZILjava/lang/Object;)Lcom/helpscout/beacon/a/d/b/b;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private final a(Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/b/b;",
            ">;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
            "I)",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 v0, 0xa

    if-eqz p2, :cond_4

    const/16 v1, 0x14

    if-lt p3, v1, :cond_4

    sget-object p3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$a;

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/d/b/b;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-direct {v3, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;-><init>(Lcom/helpscout/beacon/a/d/b/b;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    if-gez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    const/4 v4, 0x5

    if-ge p1, v4, :cond_2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move p1, v3

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    invoke-direct {p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;-><init>(Ljava/util/List;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;)Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;-><init>(Lcom/helpscout/beacon/a/d/b/b;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$d;

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/a/d/b/b;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-direct {v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;-><init>(Lcom/helpscout/beacon/a/d/b/b;)V

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    return-object p3
.end method

.method private final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->m:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$f;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;)V
    .locals 8

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$c;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->m:Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$e;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->k:Lcom/helpscout/beacon/internal/presentation/common/g;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/g;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/f/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->i:Lcom/helpscout/beacon/a/c/e/f/b;

    return-object p0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/h/h;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->g:Lcom/helpscout/beacon/a/c/e/h/h;

    return-object p0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->l:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$g;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/h/i;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->f:Lcom/helpscout/beacon/a/c/e/h/i;

    return-object p0
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->m:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic f(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/h/l;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->h:Lcom/helpscout/beacon/a/c/e/h/l;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$b;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/e$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$c;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/e$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$c;->b()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$f;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/e$f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$e;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$d;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$a;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/a/d/c/e$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$a;->a()Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/e$d;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/a/d/c/e$d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/e$d;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$a;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "conversationId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->j:Lcom/helpscout/beacon/a/c/e/h/b;

    if-nez p1, :cond_0

    const-string v1, "conversationId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/c/e/h/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
