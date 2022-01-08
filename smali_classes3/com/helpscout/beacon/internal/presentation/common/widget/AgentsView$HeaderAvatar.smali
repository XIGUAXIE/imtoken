.class final Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderAvatar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J?\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ5\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;",
        "",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "layoutRes",
        "",
        "overlapPercentage",
        "position",
        "relativeElevationPosition",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;",
        "create",
        "(Landroid/view/ViewGroup;IFII)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;",
        "config",
        "regular",
        "(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;IFI)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;",
        "single",
        "(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;",
        "<init>",
        "()V",
        "Type",
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
.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final create(Landroid/view/ViewGroup;IFII)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;-><init>(Landroid/view/View;FII)V

    invoke-static {p1, p2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    move-result-object p2

    const-string p3, "OneShotPreDrawListener.add(this) { action(this) }"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The layout provided to AgentsView must be an AvatarView"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic create$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;Landroid/view/ViewGroup;IFIIILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;->create(Landroid/view/ViewGroup;IFII)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final regular(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;IFI)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;->getItemLayoutRes()I

    move-result p2

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getEvenOddLayoutRes()I

    move-result p2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;->create(Landroid/view/ViewGroup;IFII)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final single(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;
    .locals 9

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->getSingleLayoutRes()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;->create$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;Landroid/view/ViewGroup;IFIIILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    move-result-object p1

    return-object p1
.end method
