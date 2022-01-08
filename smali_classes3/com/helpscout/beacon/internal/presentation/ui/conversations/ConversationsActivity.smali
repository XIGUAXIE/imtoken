.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 B2\u00020\u0001:\u0001CB\u0007\u00a2\u0006\u0004\u0008A\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008 \u0010\u0004J)\u0010&\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010+\u001a\u00020*2\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010/J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u000200H\u0016\u00a2\u0006\u0004\u0008\u0007\u00101R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001d\u0010<\u001a\u0002088P@\u0010X\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00104\u001a\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u0010?\u00a8\u0006D"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "",
        "D",
        "()V",
        "",
        "email",
        "a",
        "(Ljava/lang/String;)V",
        "w",
        "A",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;",
        "state",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V",
        "E",
        "B",
        "Lcom/helpscout/beacon/a/d/c/h$f;",
        "(Lcom/helpscout/beacon/a/d/c/h$f;)V",
        "y",
        "Lcom/helpscout/beacon/a/d/c/h$b;",
        "(Lcom/helpscout/beacon/a/d/c/h$b;)V",
        "v",
        "C",
        "z",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        "message",
        "(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "d",
        "onDestroy",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;",
        "i",
        "Lkotlin/Lazy;",
        "x",
        "()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;",
        "conversationsAdapter",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "g",
        "n",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "viewModelLegacy",
        "Lcom/helpscout/beacon/internal/presentation/common/n/e;",
        "h",
        "Lcom/helpscout/beacon/internal/presentation/common/n/e;",
        "moreItemsScrollListener",
        "<init>",
        "k",
        "b",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final k:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

.field private final i:Lkotlin/Lazy;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "previous_conversations"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->i:Lkotlin/Lazy;

    return-void
.end method

.method private final A()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->g()V

    return-void
.end method

.method private final B()V
    .locals 5

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_0

    const-string v2, "moreItemsScrollListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_loading_more:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.hs_beacon_error_loading_more)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final C()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->v()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->renderMissingEmail()V

    return-void
.end method

.method private final D()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_0

    const-string v1, "moreItemsScrollListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->c()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/a/d/c/g$a;->a:Lcom/helpscout/beacon/a/d/c/g$a;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final E()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v1, "conversationsRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showLoading()V

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    const-string v1, "emailPrompt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/a/d/c/h$b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->d()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v1, "conversationsRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    const-string v1, "emailPrompt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    const-string v1, "conversationsDataView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/h$b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v1, :cond_0

    const-string v2, "moreItemsScrollListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/h$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showList()V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/c/h$f;)V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    const-string v1, "moreItemsScrollListener"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/h$f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b()V

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/h$f;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;

    invoke-virtual {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;->a(Landroid/app/Activity;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v1, "conversationsRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    const-string v1, "emailPrompt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$h;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showError(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    const-string v1, "emailPrompt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/a$a;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/c/a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->D()V

    return-void
.end method

.method private final v()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    const-string v1, "emailPrompt"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    const-string v1, "conversationsDataView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final w()V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$d;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversations/a;

    invoke-direct {v2, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$c;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;->setViewDelegate(Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/ViewDelegate;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/ListPaddingDecoration;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_card_list_item_gap:I

    sget v5, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_card_list_first_item_top_margin:I

    sget v6, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_card_list_last_item_bottom_margin:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/ListPaddingDecoration;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->bindAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$e;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v1, :cond_0

    const-string v2, "moreItemsScrollListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final x()Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;

    return-object v0
.end method

.method private final y()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationsDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->C0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showEmpty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final z()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->v()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->renderInvalidEmail()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->j:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/h$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/a/d/c/h$b;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->y()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/h$f;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/a/d/c/h$f;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$a;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->v()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$e;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->C()V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/h$d;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->z()V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->E()V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$f;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->A()V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$c;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->B()V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V

    goto :goto_0

    :cond_9
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->D()V

    :cond_a
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->E0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->D()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/c;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_conversations:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->g()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->w()V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->emailPrompt:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$g;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->setListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$menu;->hs_beacon_quit:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v1, :cond_0

    const-string v2, "moreItemsScrollListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
