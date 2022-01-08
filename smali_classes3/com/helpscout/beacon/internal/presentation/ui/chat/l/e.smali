.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;
.source "SourceFile"

# interfaces
.implements Lkotlinx/android/extensions/LayoutContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;",
        ">;",
        "Lkotlinx/android/extensions/LayoutContainer;"
    }
.end annotation


# instance fields
.field private final c:Landroid/view/View;

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->c:Landroid/view/View;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    const-string v0, "chatItemRootContainer"

    const-string v1, "chatItemBubble"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_agent_chat_middle_bubble_bg:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_agent_chat_normal_bubble_bg:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final a(ZZ)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "chatItemRootContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e$a;

    invoke-direct {v1, p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;Z)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e$b;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;)V

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->d:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemUnfurledTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemUnfurledTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemUnfurledDescription:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemUnfurledDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->f()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(ZZ)V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->c:Landroid/view/View;

    return-object v0
.end method
