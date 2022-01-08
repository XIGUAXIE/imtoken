.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;
.super Landroidx/constraintlayout/motion/widget/TransitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TransitionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 3

    const-string v0, "ml"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transition completed. State: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->UNKNOWN:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-static {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    move-result-object p2

    instance-of p2, p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-static {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-static {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;FILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-static {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V

    :cond_2
    :goto_0
    return-void
.end method
