.class public final Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u001a\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;",
        "",
        "",
        "component1",
        "()I",
        "count",
        "copy",
        "(I)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getCount",
        "<init>",
        "(I)V",
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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "count"
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;IILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->copy(I)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    return v0
.end method

.method public final copy(I)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "count"
        .end annotation
    .end param

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    iget p1, p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

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

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconConversationsCountApi(count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsCountApi;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
