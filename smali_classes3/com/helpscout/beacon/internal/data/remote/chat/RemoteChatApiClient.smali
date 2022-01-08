.class public final Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 I2\u00020\u0001:\u0001IB\'\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010?\u001a\u00020>\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008G\u0010HJ\'\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJQ\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ9\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00022\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J#\u0010#\u001a\u00020\"2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u001dH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u0013\u0010%\u001a\u00020\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010\u000eJ\u001b\u0010\'\u001a\u00020\"2\u0006\u0010&\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010\u001aJ\u0019\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010\u000eJ/\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000b2\u0006\u0010*\u001a\u00020)2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\"0+H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.J+\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020/0\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0013\u00103\u001a\u000202H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u0010\u000eJ\u0013\u00105\u001a\u000204H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010\u000eJ%\u00109\u001a\u0002082\u0006\u00106\u001a\u00020)2\u0008\u00107\u001a\u0004\u0018\u00010\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:R\u0016\u0010<\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010?\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010B\u001a\u00020A8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010F\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006J"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;",
        "",
        "socketId",
        "channelName",
        "Lokhttp3/MultipartBody;",
        "kotlin.jvm.PlatformType",
        "createRealtimeAuthRequestBody",
        "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody;",
        "createChatAuthHeader",
        "()Ljava/lang/String;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "getAvailableAgents",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "chatId",
        "firstMessage",
        "Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;",
        "events",
        "deviceId",
        "",
        "sessionAttributes",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEnvelopeApi;",
        "startChat",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChat",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "messageId",
        "message",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;",
        "attachments",
        "addMessage",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "attachmentApi",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
        "addAttachment",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "endChat",
        "eventId",
        "getChatEvent",
        "getAllChatEvents",
        "",
        "page",
        "",
        "totalResults",
        "getChatEventsWithPagination",
        "(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
        "pusherAuth",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "sendBeaconClosedEvent",
        "",
        "getMessageEventCount",
        "rating",
        "comments",
        "",
        "rateChat",
        "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/a/b/c/b/a;",
        "chatDatastore",
        "Lcom/helpscout/beacon/a/b/c/b/a;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;",
        "chatApiService",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "attachmentHelper",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "<init>",
        "(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/internal/presentation/common/a;)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$Companion;

.field private static final FIRST_PAGE:I = 0x1


# instance fields
.field private final attachmentHelper:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

.field private final chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final datastore:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->Companion:Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/internal/presentation/common/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatApiService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->datastore:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->attachmentHelper:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-void
.end method

.method private final createChatAuthHeader()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v1}, Lcom/helpscout/beacon/a/b/c/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final createRealtimeAuthRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody;
    .locals 2

    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    const-string v1, "socket_id"

    invoke-virtual {v0, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string v0, "channel_name[0]"

    invoke-virtual {p1, v0, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->attachmentHelper:Lcom/helpscout/beacon/internal/presentation/common/a;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentApi;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Lcom/helpscout/beacon/internal/presentation/common/a;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addAttachment$1;->label:I

    invoke-interface {p3, v2, p1, p2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->addAttachments(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lretrofit2/Response;

    invoke-static {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p5, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;

    invoke-direct {v0, p0, p5}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p5, v6, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object p5

    new-instance v5, Lcom/helpscout/beacon/internal/data/remote/chat/AddMessageRequestBodyApi;

    invoke-direct {v5, p2, p3, p4}, Lcom/helpscout/beacon/internal/data/remote/chat/AddMessageRequestBodyApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput v2, v6, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$addMessage$1;->label:I

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->addMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/AddMessageRequestBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p5, Lretrofit2/Response;

    invoke-static {p5}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public endChat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v4}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$endChat$1;->label:I

    invoke-interface {p1, v2, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->endChat(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllChatEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getChatEventsWithPagination(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableAgents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->datastore:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->datastore:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v4}, Lcom/helpscout/beacon/BeaconDatastore;->getInstallId()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getAvailableAgents$1;->label:I

    invoke-interface {p1, v2, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->availableAgents(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/AgentsApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/AgentsApi;->getAgents()Ljava/util/List;

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

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChat$1;->label:I

    invoke-interface {p2, v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->getChat(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-static {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChatEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v4}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEvent$1;->label:I

    invoke-interface {p2, v2, v4, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->getChatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;

    invoke-static {p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic getChatEventsWithPagination(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v5}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v5

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    invoke-interface {p3, v2, v5, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->getChatEvents(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Lretrofit2/Response;

    invoke-static {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventsResponseApi;

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventsResponseApi;->getResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventsResponseApi;->getPagination()Lcom/helpscout/beacon/internal/data/remote/chat/ChatPaginationApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatPaginationApi;->getHasMore()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventsResponseApi;->getPagination()Lcom/helpscout/beacon/internal/data/remote/chat/ChatPaginationApi;

    move-result-object p3

    invoke-virtual {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatPaginationApi;->getPage()I

    move-result p3

    add-int/2addr p3, v4

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getChatEventsWithPagination$1;->label:I

    invoke-virtual {p1, p3, p2, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->getChatEventsWithPagination(ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    move-object p2, p3

    check-cast p2, Ljava/util/List;

    :cond_6
    return-object p2
.end method

.method public getMessageEventCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v4}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v4

    iput-object p0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$getMessageEventCount$1;->label:I

    invoke-interface {p1, v2, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->getCount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatCountApi;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatCountApi;->getResults()Ljava/util/Map;

    move-result-object p1

    iget-object v0, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public pusherAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    const-string v0, "socketId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createRealtimeAuthRequestBody(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody;

    move-result-object p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestBody"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->pusherAuth(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    const-string p2, "chatApiService.pusherAut\u2026), requestBody).execute()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "chatApiService.pusherAut\u2026y).execute().getOrThrow()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public rateChat(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p3, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v4}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-direct {v5, p2, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;-><init>(Ljava/lang/String;I)V

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$rateChat$1;->label:I

    invoke-interface {p3, v2, v4, v5, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->rateChat(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p3, Lretrofit2/Response;

    invoke-static {p3}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public sendBeaconClosedEvent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;

    iget v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatDatastore:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v4}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v4

    iput v3, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$sendBeaconClosedEvent$1;->label:I

    invoke-interface {p1, v2, v4, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->sendBeaconClosedEvent(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public startChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiThrowable;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;

    iget v3, v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;

    invoke-direct {v2, p0, v1}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v1, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent;->Companion:Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;

    move-object v4, p3

    invoke-virtual {v1, p3}, Lcom/helpscout/beacon/internal/domain/model/TimelineEvent$Companion;->convertTimelineEventListForApi(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/StartChatRequestBodyApi;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v6, v1

    move-object v7, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/helpscout/beacon/internal/data/remote/chat/StartChatRequestBodyApi;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v4, v0, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->chatApiService:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient;->createChatAuthHeader()Ljava/lang/String;

    move-result-object v6

    iput v5, v2, Lcom/helpscout/beacon/internal/data/remote/chat/RemoteChatApiClient$startChat$1;->label:I

    move-object v5, p1

    invoke-interface {v4, v6, p1, v1, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiService;->startChat(Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/StartChatRequestBodyApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lretrofit2/Response;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/data/remote/chat/ApiErrorHandlerKt;->getOrThrow(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
