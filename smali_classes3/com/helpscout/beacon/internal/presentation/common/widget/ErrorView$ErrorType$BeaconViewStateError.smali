.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeaconViewStateError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;",
        "",
        "component1",
        "()Ljava/lang/Throwable;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;",
        "component2",
        "()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;",
        "throwable",
        "errorAction",
        "copy",
        "(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Throwable;",
        "getThrowable",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;",
        "getErrorAction",
        "<init>",
        "(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V",
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
.field private final errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->copy(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final component2()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    return-object v0
.end method

.method public final copy(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

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

.method public final getErrorAction()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

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

    const-string v1, "BeaconViewStateError(throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->errorAction:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
