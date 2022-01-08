.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
.super Lcom/helpscout/beacon/internal/presentation/common/n/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/common/n/d<",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Lkotlin/jvm/functions/Function2;
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

.field private final h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final j:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/helpscout/beacon/internal/presentation/common/d;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
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
            ">;)V"
        }
    .end annotation

    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showMoreClicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hyperlinkClicked"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversation/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->g:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->h:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->i:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->j:Lkotlin/jvm/functions/Function2;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->e:Ljava/util/Map;

    return-void
.end method

.method private final c(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_conversation:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_conversation_show_more:I

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/common/n/d$c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/helpscout/beacon/internal/presentation/common/n/d$c<",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "inflater.inflate(getItem\u2026viewType), parent, false)"

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eq p2, v3, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->c(I)I

    move-result p2

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->g:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->i:Lcom/helpscout/beacon/internal/presentation/common/d;

    iget-object v9, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->j:Lkotlin/jvm/functions/Function2;

    iget-object v10, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->e:Ljava/util/Map;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lcom/helpscout/beacon/internal/presentation/common/d;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ViewType \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\" received"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->c(I)I

    move-result p2

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->h:Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->i:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-direct {v3, p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$a;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/helpscout/beacon/internal/presentation/common/d;)V

    :goto_0
    return-object v3
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a()V

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->e:Ljava/util/Map;

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemRemoved(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemRemoved(I)V

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemRangeChanged(II)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->e:Ljava/util/Map;

    return-void
.end method

.method public b(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$b;

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/b$a;

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    :goto_0
    return p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
