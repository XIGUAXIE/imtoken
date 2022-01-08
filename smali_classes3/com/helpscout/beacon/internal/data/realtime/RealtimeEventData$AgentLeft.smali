.class public final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;
.super Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentLeft"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "chatId",
        "copy",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getChatId",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field private final chatId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;Ljava/lang/String;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->copy(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getChatId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentLeft(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentLeft;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
