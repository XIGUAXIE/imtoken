.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->c(Landroid/widget/EditText;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
