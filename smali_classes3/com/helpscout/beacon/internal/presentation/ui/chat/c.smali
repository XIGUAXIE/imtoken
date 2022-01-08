.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field private b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;

.field private final e:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    const-string v0, "motionLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$c;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$c;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$a;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/c$b;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    return-object p0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->f:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$d;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$d;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$e;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$e;

    :goto_0
    return-object p1
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Nothing to do."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatTransition set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result p1

    :goto_1
    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;Z)V
    .locals 4

    if-eqz p1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatTransition request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (Reversed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "ChatTransition request rejected. We\'re in landscape and it\'s not a collapsing transition"

    invoke-static {p2, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;F)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v2, p1

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->b()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->c()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v2

    if-eq v0, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Transitioning to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;->a(I)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    goto :goto_2

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NOT executing transition: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". We\'re already in the final state."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object p0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->e:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$d;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$d;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$e;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$e;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;

    :goto_0
    return-object p1
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V

    return-void
.end method

.method private final c(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentState updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    return-void
.end method

.method private final e()Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentAssigned. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->c:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$k;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$k;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$i;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$i;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$g;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$g;

    :goto_0
    invoke-static {p0, v0, v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentLeft. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->d:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$b;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$k;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$k;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$a;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$i;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$i;

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/e;Z)V

    return-void
.end method

.method public final b()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgentsLoaded. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$j;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$j;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$f;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$f;

    :goto_0
    invoke-static {p0, v0, v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatEnded. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->CHAT_ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v2

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    return-void
.end method

.method public final d()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collapse. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/k;)Lcom/helpscout/beacon/internal/presentation/ui/chat/e;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;ZILjava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoAgentsFound. CurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/b;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$a;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;

    :goto_0
    invoke-static {p0, v0, v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/e;ZILjava/lang/Object;)V

    return-void
.end method
