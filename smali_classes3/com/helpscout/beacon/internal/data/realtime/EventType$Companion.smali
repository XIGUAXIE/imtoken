.class public final Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/realtime/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;",
        "",
        "",
        "eventName",
        "Lcom/helpscout/beacon/internal/data/realtime/EventType;",
        "fromEventName",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventType;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/EventType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromEventName(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventType;
    .locals 2

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_JOINED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_LEFT:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->EVENT_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CUSTOMER_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventType;->Unsupported:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    :goto_0
    return-object v0
.end method
