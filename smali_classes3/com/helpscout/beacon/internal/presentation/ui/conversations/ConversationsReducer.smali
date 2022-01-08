.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;
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
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010-\u001a\u00020+\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0008\u0008\u0002\u0010.\u001a\u00020#\u0012\u0008\u0008\u0002\u0010&\u001a\u00020#\u00a2\u0006\u0004\u0008/\u00100J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u000bJW\u0010\u0007\u001a\u00020\u00022\u001c\u0010\u000f\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000c2%\u0010\u0015\u001a!\u0012\u0017\u0012\u00150\u0010j\u0002`\u0011\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00020\u000cH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0016J\u001f\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010*\u001a\u00020\'8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010,\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00061"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "",
        "d",
        "()V",
        "",
        "page",
        "a",
        "(I)V",
        "",
        "email",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "function",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lkotlin/ParameterName;",
        "name",
        "e",
        "onError",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/a/c/e/h/n;",
        "f",
        "Lcom/helpscout/beacon/a/c/e/h/n;",
        "setEmailForConversationsUseCase",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "Lkotlin/coroutines/CoroutineContext;",
        "g",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "c",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/a/c/e/i/d;",
        "Lcom/helpscout/beacon/a/c/e/i/d;",
        "showPreviousMessagesUseCase",
        "uiContext",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/i/d;Lcom/helpscout/beacon/a/c/e/h/n;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
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

.field private final e:Lcom/helpscout/beacon/a/c/e/i/d;

.field private final f:Lcom/helpscout/beacon/a/c/e/h/n;

.field private final g:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/i/d;Lcom/helpscout/beacon/a/c/e/h/n;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "showPreviousMessagesUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setEmailForConversationsUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "ioContext"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->e:Lcom/helpscout/beacon/a/c/e/i/d;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->f:Lcom/helpscout/beacon/a/c/e/h/n;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->g:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/i/d;Lcom/helpscout/beacon/a/c/e/h/n;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;-><init>(Lcom/helpscout/beacon/a/c/e/i/d;Lcom/helpscout/beacon/a/c/e/h/n;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)Lcom/helpscout/beacon/a/c/e/h/n;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->f:Lcom/helpscout/beacon/a/c/e/h/n;

    return-object p0
.end method

.method private final a(I)V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;ILkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$f;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)V

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$d;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)V

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->g:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$b;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$b;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)Lcom/helpscout/beacon/a/c/e/i/d;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->e:Lcom/helpscout/beacon/a/c/e/i/d;

    return-object p0
.end method

.method private final d()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$h;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)V

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/g$a;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->d()V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/g$b;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/g$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/g$b;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->a(I)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/a$a;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
