.class public final synthetic Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->values()[Lcom/helpscout/beacon/internal/data/realtime/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_JOINED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x5

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->EVENT_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x6

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CUSTOMER_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x7

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v3, 0x8

    aput v3, v0, v1

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v3, 0x9

    aput v3, v0, v1

    invoke-static {}, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->values()[Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventParser$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->AGENT_DISCONNECTED:Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
