.class public final Lcom/helpscout/common/mvi/MviViewState;
.super Ljava/lang/Object;
.source "MviViewState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u00032\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J(\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/MviViewState;",
        "S",
        "",
        "Lcom/helpscout/common/mvi/ViewState;",
        "viewState",
        "updateUi",
        "",
        "(Ljava/lang/Object;Z)V",
        "getUpdateUi",
        "()Z",
        "getViewState",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Object;Z)Lcom/helpscout/common/mvi/MviViewState;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "android-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final updateUi:Z

.field private final viewState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/common/mvi/MviViewState;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/common/mvi/MviViewState;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/helpscout/common/mvi/MviViewState;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/mvi/MviViewState;->copy(Ljava/lang/Object;Z)Lcom/helpscout/common/mvi/MviViewState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    return v0
.end method

.method public final copy(Ljava/lang/Object;Z)Lcom/helpscout/common/mvi/MviViewState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/common/mvi/MviViewState;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/common/mvi/MviViewState;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/common/mvi/MviViewState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/common/mvi/MviViewState;

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    iget-object v1, p1, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    iget-boolean p1, p1, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

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

.method public final getUpdateUi()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    return v0
.end method

.method public final getViewState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MviViewState(viewState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/common/mvi/MviViewState;->viewState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updateUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/helpscout/common/mvi/MviViewState;->updateUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
