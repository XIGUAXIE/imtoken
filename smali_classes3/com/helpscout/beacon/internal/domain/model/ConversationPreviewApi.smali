.class public final Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0001\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0012\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JX\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u0012\u001a\u00020\u00052\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\t2\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0003\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u0007J\u001a\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001f\u001a\u0004\u0008 \u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010!\u001a\u0004\u0008\"\u0010\u0007R\u001f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010#\u001a\u0004\u0008$\u0010\u0010R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001f\u001a\u0004\u0008%\u0010\u0004R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010&\u001a\u0004\u0008\'\u0010\u000bR\u001b\u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010&\u001a\u0004\u0008(\u0010\u000b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()I",
        "component3",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
        "component4",
        "()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
        "component5",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
        "component6",
        "()Ljava/util/List;",
        "id",
        "threadCount",
        "subject",
        "firstThread",
        "lastThread",
        "agents",
        "copy",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getSubject",
        "I",
        "getThreadCount",
        "Ljava/util/List;",
        "getAgents",
        "getId",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
        "getLastThread",
        "getFirstThread",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)V",
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
.field private final agents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

.field private final id:Ljava/lang/String;

.field private final lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

.field private final subject:Ljava/lang/String;

.field private final threadCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "threadCount"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "subject"
        .end annotation
    .end param
    .param p4    # Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "firstThread"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "lastThread"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "agents"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agents"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    iput p2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    iput-object p3, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->copy(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    return-object v0
.end method

.method public final component5()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "threadCount"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "subject"
        .end annotation
    .end param
    .param p4    # Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "firstThread"
        .end annotation
    .end param
    .param p5    # Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "lastThread"
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "agents"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
            ">;)",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agents"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    iget v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

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

.method public final getAgents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    return-object v0
.end method

.method public final getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadCount()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationPreviewApi(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->threadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firstThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->firstThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->lastThread:Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", agents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->agents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
