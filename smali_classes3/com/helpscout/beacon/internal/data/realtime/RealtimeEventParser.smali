.class public final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J\u001d\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;",
        "",
        "",
        "data",
        "Lcom/helpscout/beacon/internal/data/realtime/EventType;",
        "type",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "parseChatEnded",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/realtime/EventType;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "parseRealTimeEventForChatId",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "startedTyping",
        "parseTypingEvent",
        "(Ljava/lang/String;Z)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "parseEventAdded",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "parseAgentJoined",
        "parseMessage",
        "eventName",
        "parse",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "Lcom/helpscout/beacon/a/a/b;",
        "Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;",
        "realTimeTypingEventParser",
        "Lcom/helpscout/beacon/a/a/b;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "userApiParser",
        "Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;",
        "realTimeEventParser",
        "Lcom/helpscout/beacon/a/a/a;",
        "parser",
        "<init>",
        "(Lcom/helpscout/beacon/a/a/a;)V",
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
.field private final realTimeEventParser:Lcom/helpscout/beacon/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/beacon/a/a/b<",
            "Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final realTimeTypingEventParser:Lcom/helpscout/beacon/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/beacon/a/a/b<",
            "Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final userApiParser:Lcom/helpscout/beacon/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/beacon/a/a/b<",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/a/a;)V
    .locals 1

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/a/a;->a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeEventParser:Lcom/helpscout/beacon/a/a/b;

    const-class v0, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/a/a;->a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->userApiParser:Lcom/helpscout/beacon/a/a/b;

    const-class v0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/a/a/a;->a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeTypingEventParser:Lcom/helpscout/beacon/a/a/b;

    return-void
.end method

.method private final parseAgentJoined(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->userApiParser:Lcom/helpscout/beacon/a/a/b;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getId()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    :goto_1
    return-object v0
.end method

.method private final parseChatEnded(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/realtime/EventType;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseRealTimeEventForChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    if-ne p2, v0, :cond_3

    sget-object p2, Lcom/helpscout/beacon/a/c/b/a$b;->STALE_USER_ACTIVITY:Lcom/helpscout/beacon/a/c/b/a$b;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    :goto_2
    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)V

    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method private final parseEventAdded(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeEventParser:Lcom/helpscout/beacon/a/a/b;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;->getData()Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;->getData()Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;->getChatId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->Companion:Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;

    invoke-virtual {p1, v1}, Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;->fromActionName(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    move-result-object p1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    invoke-direct {p1, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    :goto_1
    return-object p1
.end method

.method private final parseMessage(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/realtime/EventType;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeEventParser:Lcom/helpscout/beacon/a/a/b;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;->getData()Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;->getEventId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;->getChatId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_a

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 p1, 0x1

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    if-ne p2, p1, :cond_8

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;

    invoke-direct {p1, v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AddMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    if-ne p2, p1, :cond_9

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;

    invoke-direct {p1, v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$UpdateMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;

    goto :goto_5

    :cond_a
    :goto_4
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    :goto_5
    return-object p1
.end method

.method private final parseRealTimeEventForChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeEventParser:Lcom/helpscout/beacon/a/a/b;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventApiWrapper;->getData()Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventDataApi;->getChatId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final parseTypingEvent(Ljava/lang/String;Z)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->realTimeTypingEventParser:Lcom/helpscout/beacon/a/a/b;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->getUser()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTyping;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote()Z

    move-result p1

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTyping;-><init>(Z)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTypingStopped;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote()Z

    move-result p1

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentTypingStopped;-><init>(Z)V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    :goto_1
    return-object p2
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
    .locals 3

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->Companion:Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;->fromEventName(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventType;

    move-result-object p1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$Unsupported;

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseTypingEvent(Ljava/lang/String;Z)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseTypingEvent(Ljava/lang/String;Z)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$InactivityCustomer;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$InactivityCustomer;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseEventAdded(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseChatEnded(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/realtime/EventType;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseAgentJoined(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser;->parseMessage(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/realtime/EventType;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing the JSON from realtime event "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;->INSTANCE:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$ParsingError;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
