.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;
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
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
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

    const-string v0, "attachmentUploadFailsListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onImageTap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->e:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->f:Lkotlin/jvm/functions/Function2;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemStatusText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->d()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->e()V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q()Z

    move-result p1

    const-string v0, "chatItemImageCustomer"

    if-eqz p1, :cond_0

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$h;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/k;->a(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$i;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/k;->b(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result p1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$c;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$d;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final c(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a()V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method

.method private final d()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final d(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    :goto_0
    return-void
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final e(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->q()Z

    move-result v1

    const-string v2, "chatItemImageCustomer"

    if-eqz v1, :cond_0

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$f;

    invoke-direct {v5, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/helpscout/beacon/internal/presentation/common/k;->a(Lcom/helpscout/beacon/internal/presentation/common/k;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/helpscout/beacon/internal/presentation/common/k;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, Lcom/helpscout/beacon/internal/presentation/common/k;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->o()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$g;

    invoke-direct {v12, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xc

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/helpscout/beacon/internal/presentation/common/k;->b(Lcom/helpscout/beacon/internal/presentation/common/k;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final f(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result p1

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$j;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$k;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final g(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemStatusText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "chatItemStatusText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->f(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemImageCustomer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemImageCustomer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->d(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->c()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/n;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->g(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    :goto_0
    return-void
.end method

.method public final b()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->e:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final c()Lkotlin/jvm/functions/Function2;
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

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->f:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->d:Landroid/view/View;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
