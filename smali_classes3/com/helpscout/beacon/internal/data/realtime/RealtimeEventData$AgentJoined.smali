.class public final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;
.super Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentJoined"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "component1",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "agent",
        "copy",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "getAgent",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V",
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
.field private final agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V
    .locals 1

    const-string v0, "agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->copy(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public final copy(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;
    .locals 1

    const-string v0, "agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

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

.method public final getAgent()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

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

    const-string v1, "AgentJoined(agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$AgentJoined;->agent:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
