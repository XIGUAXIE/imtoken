.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemBubble:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "chatItemBubble"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "chatItemRootContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_agent_chat_initial_bubble_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderAvatarOrInitials(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatItemAuthorAvatar:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v1, "chatItemAuthorAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b$c;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
