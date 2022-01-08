.class final Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getChatEventsWithPagination(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0001\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00060\u0005H\u0082@\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "",
        "page",
        "",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
        "totalResults",
        "Lkotlin/coroutines/Continuation;",
        "",
        "continuation",
        "",
        "getChatEventsWithPagination",
        "(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.remote.chat.RemoteChatApiClient"
    f = "RemoteChatApiClient.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x6c,
        0x73
    }
    m = "getChatEventsWithPagination"
    n = {
        "this",
        "totalResults"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getChatEventsWithPagination(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
