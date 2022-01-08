.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;
.implements Lkotlinx/android/extensions/LayoutContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
        ">;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "Lkotlinx/android/extensions/LayoutContainer;"
    }
.end annotation


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Landroid/view/View;

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/helpscout/beacon/internal/presentation/common/m;

.field private h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/common/m;",
            ")V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenAttachment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUploadFailsListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throttler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->e:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->f:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->g:Lcom/helpscout/beacon/internal/presentation/common/m;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->c:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lcom/helpscout/beacon/internal/presentation/common/m;

    const-wide/16 p5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p4, p5, p6, v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/m;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/m;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->f:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final a()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemStatusText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->b()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final b()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->e:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$b;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$c;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)Lcom/helpscout/beacon/internal/presentation/common/m;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->g:Lcom/helpscout/beacon/internal/presentation/common/m;

    return-object p0
.end method

.method private final c(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$d;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "chatItemRootContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_chat_end_text_header_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a()V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method

.method private final d(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$e;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$f;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final e(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemStatusText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "chatItemRootContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_text_link_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->d(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->h:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lkotlinx/android/extensions/LayoutContainer;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "attachmentName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/l;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    :goto_0
    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->d:Landroid/view/View;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
