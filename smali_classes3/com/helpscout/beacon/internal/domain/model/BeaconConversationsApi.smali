.class public final Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u000e\u0008\u0001\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u000e\u0008\u0003\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0003\u0010\n\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0005R\u0019\u0010\n\u001a\u00020\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;",
        "",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        "component1",
        "()Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/core/model/PagingApi;",
        "component2",
        "()Lcom/helpscout/beacon/internal/core/model/PagingApi;",
        "items",
        "paging",
        "copy",
        "(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getItems",
        "Lcom/helpscout/beacon/internal/core/model/PagingApi;",
        "getPaging",
        "<init>",
        "(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)V",
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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;"
        }
    .end annotation
.end field

.field private final paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "items"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/core/model/PagingApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "paging"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;",
            "Lcom/helpscout/beacon/internal/core/model/PagingApi;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paging"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->copy(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/core/model/PagingApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "items"
        .end annotation
    .end param
    .param p2    # Lcom/helpscout/beacon/internal/core/model/PagingApi;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "paging"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;",
            "Lcom/helpscout/beacon/internal/core/model/PagingApi;",
            ")",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paging"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;-><init>(Ljava/util/List;Lcom/helpscout/beacon/internal/core/model/PagingApi;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

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

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPaging()Lcom/helpscout/beacon/internal/core/model/PagingApi;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

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

    const-string v1, "BeaconConversationsApi(items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/BeaconConversationsApi;->paging:Lcom/helpscout/beacon/internal/core/model/PagingApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
