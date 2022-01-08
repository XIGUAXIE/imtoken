.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 Y2\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008X\u0010\u000cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u000f\u0010\u0016\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000cJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u000f\u0010\u001d\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000cJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\t\u0010 J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\t\u0010#J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010%\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008\t\u0010&J\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0018J\u000f\u0010(\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008(\u0010\u000cJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008\t\u0010*J\u000f\u0010+\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008+\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020$2\u0006\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010.J\u001f\u0010\t\u001a\u00020$2\u0006\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\t\u0010.J\u000f\u0010/\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008/\u0010\u000cJ\u000f\u00100\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00080\u0010\u000cJ\u0019\u00103\u001a\u00020\u00082\u0008\u00102\u001a\u0004\u0018\u000101H\u0014\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00085\u0010\u000cJ\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u001f\u00109\u001a\u00020\u00082\u0006\u00106\u001a\u0002012\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010;\u001a\u00020\u00082\u0006\u00102\u001a\u000201H\u0014\u00a2\u0006\u0004\u0008;\u00104J\u000f\u0010<\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008<\u0010\u000cJ\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010>\u001a\u00020=H\u0016\u00a2\u0006\u0004\u0008\t\u0010?J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008\t\u0010AJ)\u0010D\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e2\u0008\u0010C\u001a\u0004\u0018\u00010BH\u0014\u00a2\u0006\u0004\u0008D\u0010ER\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010L\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001d\u0010R\u001a\u00020M8P@\u0010X\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010QR\u001d\u0010W\u001a\u00020S8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010O\u001a\u0004\u0008U\u0010V\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "",
        "y",
        "()Ljava/lang/String;",
        "",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
        "threads",
        "",
        "a",
        "(Ljava/util/List;)V",
        "A",
        "()V",
        "B",
        "",
        "page",
        "b",
        "(I)V",
        "Ljava/io/File;",
        "downloadedFile",
        "(Ljava/io/File;)V",
        "w",
        "v",
        "articleId",
        "(Ljava/lang/String;)V",
        "filename",
        "d",
        "c",
        "E",
        "D",
        "Lcom/helpscout/beacon/a/d/c/f$c;",
        "state",
        "(Lcom/helpscout/beacon/a/d/c/f$c;)V",
        "Lcom/helpscout/beacon/a/d/b/c;",
        "conversationUi",
        "(Lcom/helpscout/beacon/a/d/b/c;)V",
        "",
        "hasDraft",
        "(Z)V",
        "threadId",
        "G",
        "Lcom/helpscout/beacon/a/d/c/f$b;",
        "(Lcom/helpscout/beacon/a/d/c/f$b;)V",
        "F",
        "requestCode",
        "resultCode",
        "(II)Z",
        "z",
        "C",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "outState",
        "Landroid/os/PersistableBundle;",
        "outPersistentState",
        "onSaveInstanceState",
        "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V",
        "onRestoreInstanceState",
        "onBackPressed",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lcom/helpscout/beacon/internal/presentation/common/n/e;",
        "h",
        "Lcom/helpscout/beacon/internal/presentation/common/n/e;",
        "moreItemsScrollListener",
        "i",
        "Z",
        "isLoadingConversations",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "g",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "viewModelLegacy",
        "Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;",
        "j",
        "x",
        "()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;",
        "conversationAdapter",
        "<init>",
        "l",
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
.field public static final l:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

.field private i:Z

.field private final j:Lkotlin/Lazy;

.field private k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "conversation"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->j:Lkotlin/Lazy;

    return-void
.end method

.method private final A()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->B()V

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->i:Z

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_2

    const-string v1, "moreItemsScrollListener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->c()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/e$b;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/a/d/c/e$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final C()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->B()V

    return-void
.end method

.method private final D()V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->g()V

    return-void
.end method

.method private final E()V
    .locals 5

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Lcom/helpscout/beacon/internal/presentation/common/n/d;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_0

    const-string v3, "moreItemsScrollListener"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "recyclerView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/presentation/common/d;->v0()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final F()V
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private final G()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v1, "conversationRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showLoading()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->i:Z

    sget v1, Lcom/helpscout/beacon/ui/R$id;->conversationRefreshLayout:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v2, "conversationRefreshLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->conversationTitle:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "conversationTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v1, :cond_0

    const-string v2, "moreItemsScrollListener"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/c;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->a(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/c;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showList()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->getItemCount()I

    move-result v1

    if-lez v1, :cond_2

    sget v1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationScrollableContentShadow:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "conversationScrollableContentShadow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/c;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/c/f$b;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    const-string v1, "conversationRefreshLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->i:Z

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$m;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->showError(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;Lkotlin/jvm/functions/Function0;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    const-string v0, "conversationDataView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->conversationOpenReplyButton:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "conversationOpenReplyButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->conversationOpenDraftReplyButton:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "conversationOpenDraftReplyButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/c/f$c;)V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Lcom/helpscout/beacon/internal/presentation/common/n/d;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    const-string v1, "moreItemsScrollListener"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a()V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/f$c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b()V

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/f$c;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->b(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-static {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->openFile(Landroid/app/Activity;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;

    invoke-virtual {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/conversation/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;->a()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenDraftReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "conversationOpenDraftReplyButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "conversationOpenReplyButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private final a(II)Z
    .locals 1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    const/16 p1, 0x65

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/e$c;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/helpscout/beacon/a/d/c/e$c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/e$f;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/c/e$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final b(II)Z
    .locals 1

    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->B()V

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->F()V

    return-void
.end method

.method private final v()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationCloseImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$c;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$d;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenDraftReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$e;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final w()V
    .locals 6

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationRefreshLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$f;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$g;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/DelegatedSwipeRefreshLayout;->setViewDelegate(Lcom/helpscout/beacon/internal/presentation/common/widget/refreshlayout/ViewDelegate;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;->bindAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "recyclerView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$j;

    invoke-direct {v1, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->recyclerView:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez v2, :cond_0

    const-string v3, "moreItemsScrollListener"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;

    invoke-direct {v2, v0, p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$h;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/n/b;

    sget v3, Lcom/helpscout/beacon/ui/R$id;->conversationScrollableContentShadow:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4, v5}, Lcom/helpscout/beacon/internal/presentation/common/n/b;-><init>(Landroid/view/View;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3, p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$i;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_conversation_divider_horizontal_spacing:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->setHorizontalSpacing(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "conversationOpenReplyButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    return-object v0
.end method

.method private final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.helpscout.beacon.ui.EXTRA_MESSAGE"

    invoke-static {p0, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final z()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationDataView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconDataView;

    const-string v1, "conversationDataView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->T0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->C()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->k:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$d;

    const-string v1, "moreItemsScrollListener"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a(Z)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$a;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->h:Lcom/helpscout/beacon/internal/presentation/common/n/e;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$b;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$c;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$f;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$f;->a()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$e;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$e;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/e$e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/f$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/f$a;->a()Lcom/helpscout/beacon/a/d/b/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/a/d/b/c;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/f$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/f$c;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/a/d/c/f$c;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/f$b;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/f$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/a/d/c/f$b;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->G()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$f;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->D()V

    goto :goto_0

    :cond_4
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$c;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->E()V

    :cond_5
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "conversationOpenReplyButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->conversationOpenDraftReplyButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "conversationOpenDraftReplyButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->z()V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Z)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/c;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_conversation:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->w()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->v()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.helpscout.beacon.ui.SAVE_CONVERSATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->A()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPersistentState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/conversation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "com.helpscout.beacon.ui.SAVE_CONVERSATION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
