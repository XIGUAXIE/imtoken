.class public final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010-\u001a\u00020,\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010?\u001a\u00020>\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u0010!\u001a\u00020 \u0012\u0008\u0008\u0002\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008C\u0010DJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0011R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010\'\u001a\u00020&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00103\u001a\u0002028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00106\u001a\u0002058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010<\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010?\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@\u00a8\u0006E"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;",
        "",
        "",
        "chatId",
        "",
        "handleAgentLeftChat",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;",
        "realtimeEventData",
        "handleChatEnded",
        "(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;)V",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "agent",
        "handleAgentAdded",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V",
        "eventId",
        "handleMessagedAdded",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "handleMessageUpdated",
        "handleInactivityCustomer",
        "()V",
        "",
        "isNote",
        "handleAgentTyping",
        "(Z)V",
        "handleAgentTypingStopped",
        "eventName",
        "data",
        "handle",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;",
        "parser",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;",
        "Lcom/helpscout/beacon/a/c/e/g/s;",
        "startChatUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/s;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "backgroundScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CompletableJob;",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "Lcom/helpscout/beacon/a/c/e/g/w/d;",
        "messageUpdatedUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/w/d;",
        "Lcom/helpscout/beacon/a/b/c/b/f;",
        "chatRepository",
        "Lcom/helpscout/beacon/a/b/c/b/f;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "logExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lcom/helpscout/beacon/a/b/c/b/a;",
        "chatDatastore",
        "Lcom/helpscout/beacon/a/b/c/b/a;",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "helpBot",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "chatState",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "Lcom/helpscout/beacon/a/c/e/g/w/a;",
        "agentTypingUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/w/a;",
        "Lcom/helpscout/beacon/a/c/e/g/w/b;",
        "messageAddedUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/w/b;",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "<init>",
        "(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/c/e/g/w/a;Lcom/helpscout/beacon/a/c/e/g/w/b;Lcom/helpscout/beacon/a/c/e/g/w/d;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/c/e/g/s;Lkotlin/coroutines/CoroutineContext;)V",
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
.field private final agentTypingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/a;

.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private final chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final chatState:Lcom/helpscout/beacon/a/c/b/a;

.field private final helpBot:Lcom/helpscout/beacon/a/c/b/b;

.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final messageAddedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/b;

.field private final messageUpdatedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/d;

.field private final parser:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;

.field private final startChatUseCase:Lcom/helpscout/beacon/a/c/e/g/s;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/c/e/g/w/a;Lcom/helpscout/beacon/a/c/e/g/w/b;Lcom/helpscout/beacon/a/c/e/g/w/d;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/c/e/g/s;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helpBot"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agentTypingUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAddedUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUpdatedUseCase"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startChatUseCase"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->parser:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->helpBot:Lcom/helpscout/beacon/a/c/b/b;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->agentTypingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/a;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->messageAddedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/b;

    iput-object p7, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->messageUpdatedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/d;

    iput-object p8, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p9, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->startChatUseCase:Lcom/helpscout/beacon/a/c/e/g/s;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->job:Lkotlinx/coroutines/CompletableJob;

    new-instance p2, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$$special$$inlined$CoroutineExceptionHandler$1;

    sget-object p3, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p2, p3}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p10, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/c/e/g/w/a;Lcom/helpscout/beacon/a/c/e/g/w/b;Lcom/helpscout/beacon/a/c/e/g/w/d;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/c/e/g/s;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/c/e/g/w/a;Lcom/helpscout/beacon/a/c/e/g/w/b;Lcom/helpscout/beacon/a/c/e/g/w/d;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/a/c/e/g/s;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getAgentTypingUseCase$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/e/g/w/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->agentTypingUseCase:Lcom/helpscout/beacon/a/c/e/g/w/a;

    return-object p0
.end method

.method public static final synthetic access$getChatRepository$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/b/c/b/f;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

    return-object p0
.end method

.method public static final synthetic access$getChatState$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/b/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatState:Lcom/helpscout/beacon/a/c/b/a;

    return-object p0
.end method

.method public static final synthetic access$getHelpBot$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/b/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->helpBot:Lcom/helpscout/beacon/a/c/b/b;

    return-object p0
.end method

.method public static final synthetic access$getMessageAddedUseCase$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/e/g/w/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->messageAddedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/b;

    return-object p0
.end method

.method public static final synthetic access$getMessageUpdatedUseCase$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/e/g/w/d;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->messageUpdatedUseCase:Lcom/helpscout/beacon/a/c/e/g/w/d;

    return-object p0
.end method

.method public static final synthetic access$getStartChatUseCase$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/e/g/s;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->startChatUseCase:Lcom/helpscout/beacon/a/c/e/g/s;

    return-object p0
.end method

.method private final handleAgentAdded(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentAdded$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentAdded$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleAgentLeftChat(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final handleAgentTyping(Z)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentTyping$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentTyping$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final handleAgentTypingStopped(Z)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentTypingStopped$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentTypingStopped$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final handleChatEnded(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;)V
    .locals 7

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleChatEnded$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleChatEnded$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final handleInactivityCustomer()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleInactivityCustomer$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleInactivityCustomer$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleMessageUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0, p2}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleMessageUpdated$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleMessageUpdated$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final handleMessagedAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0, p2}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleMessagedAdded$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleMessagedAdded$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->parser:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;

    invoke-virtual {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;->getEventId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleMessagedAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;->getEventId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleMessageUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$InactivityCustomer;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleInactivityCustomer()V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->getAgent()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleAgentAdded(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleChatEnded(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleAgentLeftChat(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTyping;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTyping;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTyping;->isNote()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleAgentTyping(Z)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTypingStopped;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTypingStopped;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTypingStopped;->isNote()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleAgentTypingStopped(Z)V

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring realtime Event "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
