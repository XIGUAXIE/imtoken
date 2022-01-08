.class final Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleChatCreationError(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0001\u001a\u00020\u00002!\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0086@\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "",
        "exception",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "viewState",
        "",
        "unrecoverableErrorAction",
        "Lkotlin/coroutines/Continuation;",
        "continuation",
        "",
        "handleChatCreationError",
        "(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.remote.chat.ChatErrorHandler"
    f = "ChatErrorHandler.kt"
    i = {}
    l = {
        0x36,
        0x38
    }
    m = "handleChatCreationError"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->label:I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler$handleChatCreationError$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;->handleChatCreationError(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
