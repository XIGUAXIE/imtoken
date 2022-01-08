.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptiveMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\'\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J0\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0003\u0010\t\u001a\u00020\u00022\u0008\u0008\u0003\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0008R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0017\u001a\u0004\u0008\u001b\u0010\u0004\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;",
        "",
        "component1",
        "()I",
        "component2",
        "",
        "component3",
        "()Ljava/lang/Float;",
        "singleLayoutRes",
        "evenOddLayoutRes",
        "avatarOverlapPercentage",
        "copy",
        "(IILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getEvenOddLayoutRes",
        "Ljava/lang/Float;",
        "getAvatarOverlapPercentage",
        "getSingleLayoutRes",
        "<init>",
        "(IILjava/lang/Float;)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

.field private static final HEADER:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;


# instance fields
.field private final avatarOverlapPercentage:Ljava/lang/Float;

.field private final evenOddLayoutRes:I

.field private final singleLayoutRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    sget v3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_avatar_single:I

    sget v4, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_avatar_even_odd:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;-><init>(IILjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->HEADER:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Float;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->avatarOverlapPercentage:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;-><init>(IILjava/lang/Float;)V

    return-void
.end method

.method public static final synthetic access$getHEADER$cp()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->HEADER:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;IILjava/lang/Float;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object p3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->copy(IILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    return v0
.end method

.method public final component3()Ljava/lang/Float;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final copy(IILjava/lang/Float;)Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    invoke-direct {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;-><init>(IILjava/lang/Float;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    iget v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    iget v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->avatarOverlapPercentage:Ljava/lang/Float;

    return-object v0
.end method

.method public final getEvenOddLayoutRes()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    return v0
.end method

.method public final getSingleLayoutRes()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

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

    const-string v1, "AdaptiveMode(singleLayoutRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->singleLayoutRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evenOddLayoutRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->evenOddLayoutRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avatarOverlapPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getAvatarOverlapPercentage()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
