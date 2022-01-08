.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;
.super Landroidx/constraintlayout/motion/widget/TransitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TransitionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;I)Z

    move-result p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "ratingFeedbackEditMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a()I

    move-result p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b()I

    move-result p1

    if-ne p2, p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->k(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->c()I

    move-result p1

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object p1

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$a;

    invoke-virtual {p1, p2}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;I)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    :cond_1
    return-void
.end method
