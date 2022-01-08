.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/common/mvi/MviView;
.implements Lcom/helpscout/beacon/internal/presentation/ui/chat/j$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "Lcom/helpscout/common/mvi/MviView<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/f;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/g;",
        ">;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/j$c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b7\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001`\u0008\u0000\u0018\u0000 i2\u00020\u00012\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002j\u0002`\u00062\u00020\u0007:\u0001#B\u0007\u00a2\u0006\u0004\u0008h\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u001cJ\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010!J\u0017\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010&\u001a\u00020\n2\u0008\u0008\u0002\u0010%\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008&\u0010$J\u000f\u0010\'\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\'\u0010\u000eJ\u0017\u0010#\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0014J\u000f\u0010(\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008(\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0014J\u000f\u0010)\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008)\u0010\u000eJ\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010-J\u000f\u0010.\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008.\u0010\u000eJ\u000f\u0010/\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008/\u0010\u000eJ\u000f\u00100\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00080\u0010\u000eJ\u0019\u00103\u001a\u00020\n2\u0008\u00102\u001a\u0004\u0018\u000101H\u0014\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\n2\u0006\u00105\u001a\u000201H\u0014\u00a2\u0006\u0004\u00086\u00104J\u0017\u00107\u001a\u00020\n2\u0006\u00102\u001a\u000201H\u0014\u00a2\u0006\u0004\u00087\u00104J)\u0010=\u001a\u00020\n2\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u0002082\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0014\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010#\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008#\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0014J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010?\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010@J\u000f\u0010A\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008A\u0010\u000eJ\u000f\u0010&\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008&\u0010\u000eJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u000f\u0010B\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008B\u0010\u000eR\u001d\u0010H\u001a\u00020C8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u001d\u0010M\u001a\u00020I8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010E\u001a\u0004\u0008K\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0016\u0010Y\u001a\u00020V8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR3\u0010_\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050Zj\u0002`[8V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010E\u001a\u0004\u0008]\u0010^R\u0016\u0010c\u001a\u00020`8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008e\u0010f\u00a8\u0006j"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "Lcom/helpscout/common/mvi/MviView;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/f;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/g;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatMviView;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/j$c;",
        "Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;",
        "attachmentUploadException",
        "",
        "a",
        "(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V",
        "v",
        "()V",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
        "chatMediaUi",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V",
        "state",
        "d",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V",
        "e",
        "",
        "throwable",
        "(Ljava/lang/Throwable;)V",
        "B",
        "Landroid/net/Uri;",
        "uri",
        "(Landroid/net/Uri;)V",
        "",
        "inputText",
        "",
        "emailRequired",
        "(Ljava/lang/String;Z)V",
        "isTyping",
        "c",
        "(Z)V",
        "fromBack",
        "b",
        "E",
        "w",
        "z",
        "url",
        "Landroid/view/View;",
        "transitionView",
        "(Ljava/lang/String;Landroid/view/View;)V",
        "D",
        "C",
        "A",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "outState",
        "onSaveInstanceState",
        "onRestoreInstanceState",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/g;)V",
        "onBackPressed",
        "finish",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;",
        "h",
        "Lkotlin/Lazy;",
        "x",
        "()Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;",
        "chatActivityForegroundStatusMonitor",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/c;",
        "i",
        "y",
        "()Lcom/helpscout/beacon/internal/presentation/ui/chat/c;",
        "chatMotionSceneDelegate",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;",
        "l",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;",
        "chatRatingView",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;",
        "k",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;",
        "chatHeaderView",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/j;",
        "m",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/j;",
        "endChatBottomDialogFragment",
        "Lcom/helpscout/common/mvi/MviViewModel;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatViewModel;",
        "g",
        "getViewModel",
        "()Lcom/helpscout/common/mvi/MviViewModel;",
        "viewModel",
        "com/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p",
        "n",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;",
        "scrollToEndOnInsertAdapterDataObserver",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;",
        "j",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;",
        "chatAdapter",
        "<init>",
        "p",
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
.field public static final p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;

.field private k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

.field private l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

.field private m:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

.field private final n:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;

.field private o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "CHAT_SCREEN"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$b;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->g:Lkotlin/Lazy;

    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$a;

    invoke-direct {v1, p0, v3, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->n:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;

    return-void
.end method

.method private final A()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$b;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final B()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "chatHistoryRecycler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    const-string v1, "chatBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    return-void
.end method

.method private final C()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatSnackCoordinator:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v1, "chatSnackCoordinator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->E()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final D()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatSnackCoordinator:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v1, "chatSnackCoordinator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final E()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->m:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    const-string v1, "endChatBottomDialogFragment"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->m:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "EndChatBottomDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V
    .locals 5

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/FileTooLarge;

    const/4 v1, 0x2

    const-string v2, "chatSnackCoordinator"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatSnackCoordinator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, v4, v1, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/InvalidExtension;

    if-eqz v0, :cond_3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatSnackCoordinator:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;->getDocumentFileCompat()La/a/a/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->extension(La/a/a/a/a/a;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    invoke-virtual {v2, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v4, v1, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/internal/domain/model/NetworkException;

    if-eqz p1, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatSnackCoordinator:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->M()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_3
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-virtual {p1, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->showLoading(Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->z()V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->b(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$j;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->l()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroidx/core/util/Pair;

    const-string v1, "VIEW_FULL_SCREEN_IMAGE_NAME"

    invoke-direct {v0, p2, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroidx/core/util/Pair;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroidx/core/util/Pair;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    const-string v0, "ActivityOptionsCompat.ma\u2026ttachmentImageTransition)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity;->d:Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity$c;

    invoke-virtual {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/FullScreenImageActivity$c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$l;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$l;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$m;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$m;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->B()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatMessageErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final a(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->o()Z

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->finish()V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->A()V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->c(Z)V

    return-void
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->e()Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$e;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    if-nez v2, :cond_0

    const-string v3, "chatHeaderView"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->c()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->B()V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->chatMessageErrorView:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v3, "chatMessageErrorView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :cond_1
    instance-of v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$d;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$d;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$d;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    instance-of v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$a;

    if-eqz v2, :cond_3

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatEndedView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$l;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;->renderChatWasNotAssigned(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$b;

    if-eqz v2, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatEndedView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$m;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;->renderAgentNotAssignedUserLeft(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$e;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$e;->a()Z

    move-result p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Z)V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatEndedView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->a()Z

    move-result v1

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;->b()Z

    move-result v0

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$n;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$o;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;->renderChatEndedSuccessfully(ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lcom/helpscout/beacon/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    return-void
.end method

.method private final b(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$e;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$e;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final c(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    const-string v1, "chatBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    if-nez v0, :cond_0

    const-string v1, "chatHeaderView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->c()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    if-nez v0, :cond_1

    const-string v1, "chatRatingView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Assigned agent should not be null. Only previously assigned chats can be rated"

    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$o;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$o;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$p;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$p;

    :goto_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final d(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    const-string v1, "chatHeaderView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f()Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    move-result-object v2

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->b()Ljava/util/List;

    move-result-object p1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private final e(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 8

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatMessageErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "chatMessageErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatEndedView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    const-string v1, "chatEndedView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "chatHistoryRecycler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->h()Z

    move-result v2

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->g()Z

    move-result v4

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$r;

    invoke-direct {v5, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$r;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;

    invoke-direct {v6, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$s;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    new-instance v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$t;

    invoke-direct {v7, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$t;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual/range {v1 .. v7}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->show(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final v()V
    .locals 9

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->c()V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->y()Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$d;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$e;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/j;->d:Lcom/helpscout/beacon/internal/presentation/ui/chat/j$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/j$b;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->m:Lcom/helpscout/beacon/internal/presentation/ui/chat/j;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$f;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$g;

    invoke-direct {v4, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$h;

    invoke-direct {v5, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$i;

    invoke-direct {v6, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->n:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$p;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ListAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "chatHistoryRecycler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;

    if-nez v1, :cond_0

    const-string v2, "chatAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->s:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    if-nez v0, :cond_1

    const-string v1, "chatRatingView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->m()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/lifecycle/EventObserver;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V

    invoke-direct {v1, v2}, Lcom/helpscout/common/lifecycle/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private final w()V
    .locals 0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->h()V

    return-void
.end method

.method private final x()Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    return-object v0
.end method

.method private final y()Lcom/helpscout/beacon/internal/presentation/ui/chat/c;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    return-object v0
.end method

.method private final z()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$d;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/g;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$f;

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->clearInput()V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$i;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$d;

    if-eqz v0, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->showLoading(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;

    if-eqz v0, :cond_3

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatBottomBar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$b;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$b;->a()Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$g;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$g;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$a;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->D()V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$e;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->C()V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$j;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->E()V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$h;

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    if-nez p1, :cond_9

    const-string v0, "chatRatingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->t()V

    goto :goto_0

    :cond_a
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$k;

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->z()V

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lcom/helpscout/beacon/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;

    if-nez v0, :cond_0

    const-string v1, "chatAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->f()Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->d(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lcom/helpscout/beacon/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/f$f;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->w()V

    return-void
.end method

.method public bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/MviView$DefaultImpls;->bindLifecycleOwner(Lcom/helpscout/common/mvi/MviView;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->c()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "chatHistoryRecycler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/n/a;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/n/a;-><init>(Lcom/helpscout/beacon/internal/presentation/common/b;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public getViewModel()Lcom/helpscout/common/mvi/MviViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/common/mvi/MviViewModel<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/f;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/common/mvi/MviViewModel;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/c;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-static {p3}, Lcom/helpscout/beacon/internal/presentation/extensions/AttachmentExtensionsKt;->getDataUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->b(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_chat:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.helpscout.beacon.ui.EXTRA_NOTIFICATION_CHAT_ENDED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->x()Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;->a(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->e()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->v()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    if-nez v0, :cond_0

    const-string v1, "chatHeaderView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    if-nez v0, :cond_1

    const-string v1, "chatRatingView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    if-nez v0, :cond_0

    const-string v1, "chatHeaderView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    if-nez v0, :cond_1

    const-string v1, "chatRatingView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic reactTo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/g;)V

    return-void
.end method

.method public bridge synthetic render(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    return-void
.end method
