.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleMode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\n\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0007R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;",
        "",
        "component1",
        "()I",
        "",
        "component2",
        "()Ljava/lang/Float;",
        "itemLayoutRes",
        "avatarOverlapPercentage",
        "copy",
        "(ILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Float;",
        "getAvatarOverlapPercentage",
        "I",
        "getItemLayoutRes",
        "<init>",
        "(ILjava/lang/Float;)V",
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
.field private final avatarOverlapPercentage:Ljava/lang/Float;

.field private final itemLayoutRes:I


# direct methods
.method public constructor <init>(ILjava/lang/Float;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->avatarOverlapPercentage:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;-><init>(ILjava/lang/Float;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;ILjava/lang/Float;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->copy(ILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    return v0
.end method

.method public final component2()Ljava/lang/Float;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final copy(ILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;-><init>(ILjava/lang/Float;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    iget v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object p1

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

.method public getAvatarOverlapPercentage()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->avatarOverlapPercentage:Ljava/lang/Float;

    return-object v0
.end method

.method public final getItemLayoutRes()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v1

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

    const-string v1, "SimpleMode(itemLayoutRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->itemLayoutRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatarOverlapPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
