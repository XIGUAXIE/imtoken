.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;
.super Lcom/helpscout/beacon/internal/presentation/common/n/d$c;
.source "SourceFile"

# interfaces
.implements Lkotlinx/android/extensions/LayoutContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/common/n/d$c<",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        ">;",
        "Lkotlinx/android/extensions/LayoutContainer;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 2

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d$c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    sget p1, Lcom/helpscout/beacon/ui/R$id;->participants:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_avatar_participant:I

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$SimpleMode;-><init>(ILjava/lang/Float;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->setConfig(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;)V

    return-void
.end method

.method private final a()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->R0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->b1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->lastUpdatedLabel:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "lastUpdatedLabel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 9

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getAgents()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;

    invoke-static {v1}, Lcom/helpscout/beacon/a/d/e/a/c;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationParticipant;)Lcom/helpscout/beacon/a/d/e/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->participants:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    new-instance v2, Lcom/helpscout/beacon/a/d/e/a/b;

    invoke-direct {v2, v0}, Lcom/helpscout/beacon/a/d/e/a/b;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->renderAgents$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;Lcom/helpscout/beacon/a/d/e/a/b;Lkotlin/jvm/functions/Function1;ZZIILjava/lang/Object;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->lastThread:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "lastThread.apply {\n     \u2026preview\n                }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->lastThread:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "lastThread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result p1

    const-string v0, "itemReceived"

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v1

    if-nez v1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->c(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->firstThread:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getPreview()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getSubject()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final c(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemReceived"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private final d(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 5

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object p1

    const-string v0, "lastThread"

    const-string v1, "infoLayout"

    if-eqz p1, :cond_0

    sget v2, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "itemReceived"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->lastThread:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->infoLayout:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Group;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;)V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->lastUpdated:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v4}, Lcom/helpscout/beacon/internal/presentation/common/d;->t0()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->relativeTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->infoLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->lastThread:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final e(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getFirstThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->itemReceived:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "itemReceived"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final f(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->totalThreads:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getThreadCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "totalThreads.apply {\n   \u2026tring()\n                }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->totalThreads:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "totalThreads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->unreadIndicator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "unreadIndicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final g(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getLastThread()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;

    move-result-object p1

    const-string v0, "unreadIndicator"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCreatedBy()Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/PreviousMessageCreatedBy;->isSelf()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/helpscout/beacon/ui/R$id;->unreadIndicator:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;->getCustomerViewed()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->unreadIndicator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->c:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->c:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a()V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->b(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->d(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->f(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->e(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->g(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->getContainerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$id;->itemRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "containerView.itemRoot"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;

    invoke-direct {v4, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a$a;-><init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;->a:Landroid/view/View;

    return-object v0
.end method
