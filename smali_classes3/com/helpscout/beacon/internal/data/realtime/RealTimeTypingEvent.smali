.class public final Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\t\u0010\u0007R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;",
        "",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "component1",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "",
        "component2",
        "()Z",
        "user",
        "isNote",
        "copy",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "getUser",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V",
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
.field private final isNote:Z

.field private final user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;ZILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->copy(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    return v0
.end method

.method public final copy(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getUser()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealTimeTypingEvent(user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->user:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealTimeTypingEvent;->isNote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
