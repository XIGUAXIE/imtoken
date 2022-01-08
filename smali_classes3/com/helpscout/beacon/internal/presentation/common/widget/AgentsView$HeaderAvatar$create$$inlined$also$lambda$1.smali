.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar;->create(Landroid/view/ViewGroup;IFII)Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "",
        "run",
        "()V",
        "com/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$$special$$inlined$doOnPreDraw$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $overlapPercentage$inlined:F

.field final synthetic $position$inlined:I

.field final synthetic $relativeElevationPosition$inlined:I

.field final synthetic $this_doOnPreDraw:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FII)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$this_doOnPreDraw:Landroid/view/View;

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$overlapPercentage$inlined:F

    iput p3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$position$inlined:I

    iput p4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$relativeElevationPosition$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$this_doOnPreDraw:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$overlapPercentage$inlined:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$position$inlined:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$position$inlined:I

    mul-int v4, v4, v1

    sub-int/2addr v4, v2

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$HeaderAvatar$create$$inlined$also$lambda$1;->$relativeElevationPosition$inlined:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->access$Companion()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Companion;

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->setAvatarElevation(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.helpscout.beacon.internal.presentation.common.widget.AvatarView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
