.class public final Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
        "component1",
        "()Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
        "status",
        "copy",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;",
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
        "Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;",
        "getStatus",
        "<init>",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)V",
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
.field private final status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)V
    .locals 1
    .param p1    # Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "status"
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->copy(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-object v0
.end method

.method public final copy(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;
    .locals 1
    .param p1    # Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "status"
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;-><init>(Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

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

.method public final getStatus()Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

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

    const-string v1, "CustomerStatusApi(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/domain/model/CustomerStatusApi;->status:Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
