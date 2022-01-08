.class public final Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008C\u0010DJ-\u0010\u0007\u001a\u0004\u0018\u00018\u0000\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0013\u0010\u0012\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013JQ\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u0014\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001aH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010!\u001a\u00020 2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008!\u0010\"J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J9\u0010(\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u00032\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)J\u0013\u0010*\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010\u0013J\u001b\u0010,\u001a\u00020 2\u0006\u0010+\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010$J\u0019\u0010-\u001a\u0008\u0012\u0004\u0012\u00020 0\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010\u0013J\u0019\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010\u0013J+\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002020\u001a2\u0006\u00100\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0013\u00105\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u0013J\u0013\u00107\u001a\u000206H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u0010\u0013J%\u0010;\u001a\u00020\u00112\u0006\u00109\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010A\u001a\u00020@8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006E"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;",
        "T",
        "",
        "file",
        "Ljava/lang/Class;",
        "type",
        "readFileAs",
        "(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "id",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
        "mockChatEnvelope",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "mockCustomer",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "sampleAgentAuthor",
        "",
        "waitABit",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "chatId",
        "firstMessage",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
        "events",
        "deviceId",
        "",
        "sessionAttributes",
        "startChat",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "attachmentApi",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
        "addAttachment",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChat",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messageId",
        "message",
        "attachments",
        "addMessage",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "endChat",
        "eventId",
        "getChatEvent",
        "getAllChatEvents",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "getAvailableAgents",
        "socketId",
        "channelName",
        "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
        "pusherAuth",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;",
        "sendBeaconClosedEvent",
        "",
        "getMessageEventCount",
        "",
        "rating",
        "comments",
        "rateChat",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/content/res/AssetManager;",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "Lcom/helpscout/beacon/a/a/a;",
        "parser",
        "Lcom/helpscout/beacon/a/a/a;",
        "<init>",
        "(Landroid/content/res/AssetManager;Lcom/helpscout/beacon/a/a/a;)V",
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
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final parser:Lcom/helpscout/beacon/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/helpscout/beacon/a/a/a;)V
    .locals 1

    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->parser:Lcom/helpscout/beacon/a/a/a;

    return-void
.end method

.method private final mockChatEnvelope(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;
    .locals 9

    new-instance v8, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTCFormattedToApi()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTCFormattedToApi()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->mockCustomer()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v6

    const-string v0, "pusher-private-55494"

    const-string v1, "pusher-presence-55494"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;)V

    return-object v8
.end method

.method private final mockCustomer()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 7

    new-instance v6, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    const-wide/16 v0, 0xd5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->customer:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const-string v3, "Boom broom"

    const-string v4, "PH"

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private final readFileAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->assetManager:Landroid/content/res/AssetManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "assetManager.open(\"json/$file.json\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->parser:Lcom/helpscout/beacon/a/a/a;

    invoke-interface {v1, p2}, Lcom/helpscout/beacon/a/a/a;->a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/helpscout/beacon/a/a/b;->a(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Lokio/BufferedSource;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    throw p2

    :catch_2
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_1

    :goto_3
    :try_start_3
    invoke-interface {p1}, Lokio/BufferedSource;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0
.end method

.method private final sampleAgentAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 7

    new-instance v6, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const-string v3, "foo"

    const-string v4, "SA"

    const-string v5, "https://d33v4339jhl8k0.cloudfront.net/users/145996.175833.jpg"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An operation is not implemented: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "AddAttachment not mocked!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p5, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;

    if-eqz p2, :cond_0

    move-object p2, p5

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;

    iget p4, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    const/high16 v0, -0x80000000

    and-int v1, p4, v0

    if-eqz v1, :cond_0

    sub-int/2addr p4, v0

    iput p4, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;

    invoke-direct {p2, p0, p5}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p5

    iget v0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-object p1, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uploading message: \""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x22

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->L$1:Ljava/lang/Object;

    iput v1, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$addMessage$1;->label:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->waitABit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_3

    return-object p5

    :cond_3
    move-object p2, p0

    :goto_1
    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->mockChatEnvelope(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    move-result-object p1

    return-object p1
.end method

.method public endChat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "Ending chat on server"

    invoke-static {v2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$endChat$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->waitABit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    const-string p1, "FOOBAR"

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->mockChatEnvelope(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    move-result-object v1

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTCFormattedToApi()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x77

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;->copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    move-result-object p1

    return-object p1
.end method

.method public getAllChatEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableAgents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->sampleAgentAuthor()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getInitials()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "MK"

    :goto_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getPhoto()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getChat(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$getChat$1;->label:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->waitABit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->mockChatEnvelope(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    move-result-object p1

    return-object p1
.end method

.method public getChatEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    const-string v0, "event"

    invoke-direct {p0, v0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->readFileAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;->copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object p1

    return-object p1
.end method

.method public getMessageEventCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public pusherAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
            ">;"
        }
    .end annotation

    const-string v0, "socketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "channelName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    const-class v0, Ljava/lang/String;

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-class v0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    aput-object v0, p1, p2

    const-class p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lcom/squareup/moshi/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public rateChat(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public sendBeaconClosedEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;->customer:Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;-><init>(Ljava/lang/Long;Lcom/helpscout/beacon/internal/data/remote/chat/AuthorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public startChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p6, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;

    if-eqz p1, :cond_0

    move-object p1, p6

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;

    iget p3, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->label:I

    const/high16 p4, -0x80000000

    and-int p5, p3, p4

    if-eqz p5, :cond_0

    sub-int/2addr p3, p4

    iput p3, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;

    invoke-direct {p1, p0, p6}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p4

    iget p5, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->label:I

    const/4 p6, 0x1

    if-eqz p5, :cond_2

    if-ne p5, p6, :cond_1

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Uploading chat with subject: \""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->L$0:Ljava/lang/Object;

    iput p6, p1, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient$startChat$1;->label:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->waitABit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p4, :cond_3

    return-object p4

    :cond_3
    move-object p1, p0

    :goto_1
    const-class p2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;

    const-string p3, "chat_envelope"

    invoke-direct {p1, p3, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/MockChatApiClient;->readFileAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method final synthetic waitABit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
