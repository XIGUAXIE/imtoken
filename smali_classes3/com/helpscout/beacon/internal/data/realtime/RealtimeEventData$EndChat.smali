.class public final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;
.super Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndChat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0007R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/helpscout/beacon/a/c/b/a$b;",
        "component2",
        "()Lcom/helpscout/beacon/a/c/b/a$b;",
        "chatId",
        "reason",
        "copy",
        "(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/helpscout/beacon/a/c/b/a$b;",
        "getReason",
        "Ljava/lang/String;",
        "getChatId",
        "<init>",
        "(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)V",
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

.field private final reason:Lcom/helpscout/beacon/a/c/b/a$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)V
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->copy(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/helpscout/beacon/a/c/b/a$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;
    .locals 1

    const-string v0, "chatId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/a/c/b/a$b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Lcom/helpscout/beacon/a/c/b/a$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndChat(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventData$EndChat;->reason:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
