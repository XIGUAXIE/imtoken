.class public final Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\n\u001a\u00020\u00002\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0003\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()I",
        "comments",
        "code",
        "copy",
        "(Ljava/lang/String;I)Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getComments",
        "I",
        "getCode",
        "<init>",
        "(Ljava/lang/String;I)V",
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
.field private final code:I

.field private final comments:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "comments"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "code"
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    iput p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;Ljava/lang/String;IILjava/lang/Object;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->copy(Ljava/lang/String;I)Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "comments"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "code"
        .end annotation
    .end param

    new-instance v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    iget p1, p1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

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

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    return v0
.end method

.method public final getComments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatRatingRequestBodyApi(comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->comments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatRatingRequestBodyApi;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
