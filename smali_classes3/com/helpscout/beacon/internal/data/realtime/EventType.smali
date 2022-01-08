.class public final enum Lcom/helpscout/beacon/internal/data/realtime/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/data/realtime/EventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0087\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0004j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/EventType;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "eventName",
        "Ljava/lang/String;",
        "getEventName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "EVENT_ADDED",
        "MESSAGE_ADDED",
        "MESSAGE_UPDATED",
        "CHAT_ENDED",
        "CHAT_ENDED_INACTIVE",
        "AGENT_JOINED",
        "AGENT_LEFT",
        "USER_TYPING",
        "USER_STOPPED_TYPING",
        "CUSTOMER_INACTIVE",
        "Unsupported",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum AGENT_JOINED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum AGENT_LEFT:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum CHAT_ENDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum CHAT_ENDED_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum CUSTOMER_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final Companion:Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;

.field public static final enum EVENT_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

.field public static final enum Unsupported:Lcom/helpscout/beacon/internal/data/realtime/EventType;


# instance fields
.field private final eventName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/helpscout/beacon/internal/data/realtime/EventType;

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x0

    const-string v3, "EVENT_ADDED"

    const-string v4, "event-added"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->EVENT_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x1

    const-string v3, "MESSAGE_ADDED"

    const-string v4, "message-added"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x2

    const-string v3, "MESSAGE_UPDATED"

    const-string v4, "message-updated"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x3

    const-string v3, "CHAT_ENDED"

    const-string v4, "chat-ended"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x4

    const-string v3, "CHAT_ENDED_INACTIVE"

    const-string v4, "chat-ended-inactive"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x5

    const-string v3, "AGENT_JOINED"

    const-string v4, "client-agent-joined-chat"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_JOINED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x6

    const-string v3, "AGENT_LEFT"

    const-string v4, "client-agent-left-chat"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_LEFT:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/4 v2, 0x7

    const-string v3, "USER_TYPING"

    const-string v4, "client-user-typing"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/16 v2, 0x8

    const-string v3, "USER_STOPPED_TYPING"

    const-string v4, "client-user-typing-stopped"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/16 v2, 0x9

    const-string v3, "CUSTOMER_INACTIVE"

    const-string v4, "customer-inactive"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CUSTOMER_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    const/16 v2, 0xa

    const-string v3, "Unsupported"

    const-string v4, ""

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->Unsupported:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->$VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventType;

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->Companion:Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->eventName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventType;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/data/realtime/EventType;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/data/realtime/EventType;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->$VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/data/realtime/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/data/realtime/EventType;

    return-object v0
.end method


# virtual methods
.method public final getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->eventName:Ljava/lang/String;

    return-object v0
.end method
