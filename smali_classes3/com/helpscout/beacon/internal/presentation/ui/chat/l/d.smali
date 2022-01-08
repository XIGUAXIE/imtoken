.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;
.source "SourceFile"

# interfaces
.implements Lkotlinx/android/extensions/LayoutContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;",
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->c:Landroid/view/View;

    return-void
.end method

.method private final a()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemMessage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemLoadingDots:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemLoadingDots"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemLoadingDots:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_loading_dots:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemAuthorName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderAvatarOrInitials(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemLoadingDots:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemLoadingDots"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemMessage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemMessage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->linkifyWithoutFromHtml(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemMessage:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    const-string v0, "chatItemRootContainer"

    const-string v1, "chatItemBubble"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_agent_chat_initial_bubble_bg:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

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

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v0, "chatItemAuthorAvatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->b(Z)V

    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "chatItemAuthorName"

    if-eqz v0, :cond_2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderInitials(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V
    .locals 9

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->k()Z

    move-result v0

    const-string v1, "chatItemRootContainer"

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v0, "chatItemAuthorAvatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d$a;

    invoke-direct {v2, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d$b;

    invoke-direct {v3, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final b(Z)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chatItemAuthorName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v1, "chatItemAuthorAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    const-string v0, "chatItemRootContainer"

    const-string v1, "chatItemBubble"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_agent_chat_middle_bubble_bg:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

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


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->d:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemLoadingDots:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatItemLoadingDots"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->c:Landroid/view/View;

    return-object v0
.end method
