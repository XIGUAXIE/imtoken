.class final Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0096@\u00a2\u0006\u0004\u0008\u000b\u0010\u000c"
    }
    d2 = {
        "",
        "chatId",
        "messageId",
        "message",
        "",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "attachments",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
        "continuation",
        "",
        "addMessage",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.remote.chat.MockChatApiClient"
    f = "MockChatApiClient.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x50
    }
    m = "addMessage"
    n = {
        "this",
        "chatId"
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

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->this$0:Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
