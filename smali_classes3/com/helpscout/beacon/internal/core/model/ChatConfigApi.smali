.class public final Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0003\u0010\t\u001a\u00020\u00022\u0008\u0008\u0003\u0010\n\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0004R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u001a\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u001b\u0010\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;",
        "",
        "",
        "component1",
        "()Z",
        "component2",
        "component3",
        "component4",
        "customFieldsEnabled",
        "emailTranscriptEnabled",
        "ratingsEnabled",
        "requireEmail",
        "copy",
        "(ZZZZ)Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;",
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
        "getRequireEmail",
        "getRatingsEnabled",
        "getCustomFieldsEnabled",
        "getEmailTranscriptEnabled",
        "<init>",
        "(ZZZZ)V",
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
.field private final customFieldsEnabled:Z

.field private final emailTranscriptEnabled:Z

.field private final ratingsEnabled:Z

.field private final requireEmail:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "customFieldsEnabled"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "emailTranscriptEnabled"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "ratingsEnabled"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "requireEmail"
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    iput-boolean p4, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;ZZZZILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->copy(ZZZZ)Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    return v0
.end method

.method public final copy(ZZZZ)Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;
    .locals 1
    .param p1    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "customFieldsEnabled"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "emailTranscriptEnabled"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "ratingsEnabled"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "requireEmail"
        .end annotation
    .end param

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;-><init>(ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    iget-boolean p1, p1, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

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

.method public final getCustomFieldsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    return v0
.end method

.method public final getEmailTranscriptEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    return v0
.end method

.method public final getRatingsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    return v0
.end method

.method public final getRequireEmail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatConfigApi(customFieldsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->customFieldsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emailTranscriptEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->emailTranscriptEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ratingsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->ratingsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requireEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->requireEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
