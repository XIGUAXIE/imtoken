.class public final Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0003\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0007R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
        "",
        "",
        "component1",
        "()I",
        "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;",
        "component2",
        "()Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;",
        "status",
        "data",
        "copy",
        "(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;",
        "getData",
        "I",
        "getStatus",
        "<init>",
        "(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)V",
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
.field private final data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

.field private final status:I


# direct methods
.method public constructor <init>(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "status"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "data"
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->copy(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    return v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    return-object v0
.end method

.method public final copy(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "status"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "data"
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;-><init>(ILcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    iget v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

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

.method public final getData()Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealtimeChannelApi(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelApi;->data:Lcom/helpscout/beacon/internal/data/remote/chat/RealtimeChannelDataApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
