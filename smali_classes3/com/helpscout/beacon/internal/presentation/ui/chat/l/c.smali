.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;
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

.field private d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

.field private final e:Landroid/view/View;

.field private final f:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onImageTap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->e:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->f:Lkotlin/jvm/functions/Function2;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;
    .locals 1

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    if-nez p0, :cond_0

    const-string v0, "attachmentUi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageAgent:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "chatItemImageAgent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$c;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$d;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$e;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final b()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->c()V

    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$j;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$k;

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageAgent:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "chatItemImageAgent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$f;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$g;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$h;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final c()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemDownloadingContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemDownloadingContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemTapToRetry:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$i;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageErrorContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemImageErrorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->d()V

    return-void
.end method

.method private final d()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageErrorContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemImageErrorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemDownloadingContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemDownloadingContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->e()V

    return-void
.end method

.method private final e()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemDownloadingContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemDownloadingContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final f()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemTapToRetryText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemTapToRetryText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageDownloadFailed:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemImageDownloadFailed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemDownloadingText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemDownloadingText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageAgent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemImageAgent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    if-nez v1, :cond_0

    const-string v2, "attachmentUi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final a()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->f:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageAgent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$b;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageAgent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemImageAgent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageErrorContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemImageErrorContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemDownloadingContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "chatItemDownloadingContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->f()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->e:Landroid/view/View;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
