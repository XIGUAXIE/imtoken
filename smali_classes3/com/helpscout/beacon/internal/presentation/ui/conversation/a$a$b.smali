.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;
.super Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/helpscout/beacon/internal/presentation/common/d;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/presentation/common/d;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hyperlinkClicked"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkedArticleIds"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->e:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->f:Ljava/util/Map;

    return-void
.end method

.method private final a()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messagedReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "messagedReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->R0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->b1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/a$a;)V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messagedReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "messagedReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderAvatarOrInitials(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ownerImage.apply {\n     \u2026.image)\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/a$a;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerLabel:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "ownerLabel.apply {\n     \u2026ame\n                    }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->ownerLabel:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "ownerLabel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->threadDate:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "threadDate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->relativeTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget p1, Lcom/helpscout/beacon/ui/R$id;->threadBody:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "threadBody"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/helpscout/beacon/ui/R$id;->threadBody:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Landroid/widget/TextView;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$b;

    invoke-direct {v1, p1, p3, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$b;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V

    const-string p1, "threadBody.apply {\n     \u2026 })\n                    }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final a(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "attachmentsContainer"

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->attachmentsContainer:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentsContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_conversation_attachment:I

    sget v4, Lcom/helpscout/beacon/ui/R$id;->attachmentsContainer:I

    invoke-virtual {p0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;

    invoke-direct {v3, v0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;-><init>(Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentsContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p1, Lcom/helpscout/beacon/ui/R$id;->attachmentsContainer:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v1, "ownerImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerLabel:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ownerLabel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->d:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->f1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messagedReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "messagedReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private final b()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messagedReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "messagedReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    const-string v1, "ownerImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ownerLabel:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ownerLabel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    const-string v0, "unreadIndicator"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->unreadIndicator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->unreadIndicator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;->a()Lcom/helpscout/beacon/a/d/b/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->b()Lcom/helpscout/beacon/a/d/b/a;

    move-result-object p2

    instance-of v0, p2, Lcom/helpscout/beacon/a/d/b/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->g()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/helpscout/beacon/a/d/b/a$a;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/helpscout/beacon/a/d/b/a$a;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Lcom/helpscout/beacon/a/d/b/a$a;)V

    goto :goto_0

    :cond_1
    instance-of p2, p2, Lcom/helpscout/beacon/a/d/b/a$c;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->b()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->e()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->b(Z)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p2, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/b;->a()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->b:Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
