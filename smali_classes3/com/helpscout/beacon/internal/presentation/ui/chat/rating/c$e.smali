.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->r()V
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object p1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b()I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object p1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
