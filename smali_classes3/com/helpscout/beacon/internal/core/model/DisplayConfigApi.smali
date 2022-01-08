.class public final Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00052\u0008\u0008\u0003\u0010\r\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u000c\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001b\u001a\u0004\u0008\u001c\u0010\n\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()Z",
        "Lcom/helpscout/beacon/model/FocusMode;",
        "component3",
        "()Lcom/helpscout/beacon/model/FocusMode;",
        "color",
        "showPoweredBy",
        "focusMode",
        "copy",
        "(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getShowPoweredBy",
        "Ljava/lang/String;",
        "getColor",
        "Lcom/helpscout/beacon/model/FocusMode;",
        "getFocusMode",
        "<init>",
        "(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)V",
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
.field private final color:Ljava/lang/String;

.field private final focusMode:Lcom/helpscout/beacon/model/FocusMode;

.field private final showPoweredBy:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "color"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "showPoweredBy"
        .end annotation
    .end param
    .param p3    # Lcom/helpscout/beacon/model/FocusMode;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "focusMode"
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    iput-object p3, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->copy(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    return v0
.end method

.method public final component3()Lcom/helpscout/beacon/model/FocusMode;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "color"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "showPoweredBy"
        .end annotation
    .end param
    .param p3    # Lcom/helpscout/beacon/model/FocusMode;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "focusMode"
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    invoke-direct {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;-><init>(Ljava/lang/String;ZLcom/helpscout/beacon/model/FocusMode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    iget-boolean v1, p1, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

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

.method public final getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getFocusMode()Lcom/helpscout/beacon/model/FocusMode;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    return-object v0
.end method

.method public final getShowPoweredBy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayConfigApi(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showPoweredBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->showPoweredBy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/DisplayConfigApi;->focusMode:Lcom/helpscout/beacon/model/FocusMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
