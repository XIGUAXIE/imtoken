.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u0000 ^2\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008]\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J!\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0008J\'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0017J\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u001bJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u001eJ\u001b\u0010\u0005\u001a\u00020\u0004*\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010 J\u001d\u0010\u0005\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010$J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010%J\u000f\u0010&\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0008J\'\u0010+\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0017J7\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010.J=\u0010\u0005\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010/J\u0017\u00100\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008\u0005\u00101J\u001d\u00100\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0002\u00a2\u0006\u0004\u00080\u0010$J\'\u00100\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u00080\u0010\u0017J\u000f\u00102\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00082\u0010\u0008J\u000f\u00103\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00083\u0010\u0008J\u000f\u00104\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00084\u0010\u0008J\u000f\u00105\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00085\u0010\u0008J\u000f\u00106\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00086\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u00107\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0005\u00108J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010:J\u0019\u0010=\u001a\u00020\u00042\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0014\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0008J\u0019\u0010B\u001a\u00020\u00122\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020;H\u0014\u00a2\u0006\u0004\u0008E\u0010>J\u000f\u0010+\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010HJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008\u0005\u0010JJ)\u0010O\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u000c2\u0006\u0010L\u001a\u00020\u000c2\u0008\u0010N\u001a\u0004\u0018\u00010MH\u0014\u00a2\u0006\u0004\u0008O\u0010PR\u001d\u0010V\u001a\u00020Q8P@\u0010X\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u0016\u0010Y\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[\u00a8\u0006_"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "Lcom/helpscout/beacon/internal/presentation/ui/home/b;",
        "tab",
        "",
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V",
        "D",
        "()V",
        "v",
        "",
        "searchTerm",
        "",
        "page",
        "(Ljava/lang/String;I)V",
        "G",
        "C",
        "w",
        "",
        "showPreviousMessages",
        "showChatAgentsAvailable",
        "Lcom/helpscout/beacon/a/d/e/a/b;",
        "agents",
        "(ZZLcom/helpscout/beacon/a/d/e/a/b;)V",
        "Lcom/helpscout/beacon/a/d/b/e;",
        "searchResult",
        "messagesEnabled",
        "(Lcom/helpscout/beacon/a/d/b/e;Z)V",
        "activeTab",
        "pageTitle",
        "(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V",
        "Landroidx/viewpager/widget/ViewPager;",
        "(Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
        "suggestions",
        "(Ljava/util/List;)V",
        "(Lcom/helpscout/beacon/a/d/b/e;)V",
        "F",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;",
        "state",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V",
        "E",
        "c",
        "Lcom/helpscout/beacon/model/FocusMode;",
        "focusMode",
        "(Lcom/helpscout/beacon/a/d/b/e;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V",
        "(Ljava/util/List;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V",
        "b",
        "(Lcom/helpscout/beacon/model/FocusMode;)V",
        "B",
        "z",
        "A",
        "x",
        "y",
        "articleId",
        "(Ljava/lang/String;)V",
        "articleUI",
        "(Lcom/helpscout/beacon/internal/domain/model/ArticleUI;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "d",
        "Landroid/view/Menu;",
        "menu",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "outState",
        "onSaveInstanceState",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "g",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "viewModelLegacy",
        "h",
        "Z",
        "firstRun",
        "i",
        "Lcom/helpscout/beacon/internal/presentation/ui/home/b;",
        "previouslySelectedTab",
        "<init>",
        "k",
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
.field public static final k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private h:Z

.field private i:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "home"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->g:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    return-void
.end method

.method private final A()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->s()V

    return-void
.end method

.method private final B()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsActivity$b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private final C()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    const-string v3, "BeaconActivity.KEY_SIGNATURE"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/h;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SEARCH_TERM"

    invoke-static {v2, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/h;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v2

    new-instance v3, Lcom/helpscout/beacon/a/d/c/j$h;

    invoke-direct {v3, v0, v1}, Lcom/helpscout/beacon/a/d/c/j$h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SCREEN_ASK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v2

    new-instance v3, Lcom/helpscout/beacon/a/d/c/j$d;

    invoke-direct {v3, v0, v1}, Lcom/helpscout/beacon/a/d/c/j$d;-><init>(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v2, v3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final D()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarExitButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$c;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooserView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$e;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$f;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$g;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$h;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$i;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;

    invoke-direct {v4, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final E()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "homeAppBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "homeLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "homeErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    const-string v1, "homeViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final F()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "homeLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    const-string v1, "homeViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "homeAppBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final G()V
    .locals 10

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_tab_selected_indicator:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(I)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    const-string v1, "homeTabs"

    if-eqz v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v3, 0x0

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    :goto_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$n;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$o;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private final a(Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/e;)V
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/a/d/b/e;Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/e;Z)V
    .locals 3

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/b/e$b;

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$l;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(ZLkotlin/jvm/functions/Function0;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/b/e$f;

    if-eqz v0, :cond_1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    check-cast p1, Lcom/helpscout/beacon/a/d/b/e$f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/e$f;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/e$f;->a()Z

    move-result p1

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Ljava/util/List;ZZZ)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/b/e$i;

    if-eqz v0, :cond_2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    check-cast p1, Lcom/helpscout/beacon/a/d/b/e$i;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/e$i;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/e$i;->a()Z

    move-result p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Ljava/util/List;ZZ)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/b/e$g;

    if-eqz p2, :cond_3

    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    check-cast p1, Lcom/helpscout/beacon/a/d/b/e$g;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/b/e$g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/b/e$h;

    if-eqz p2, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->d()V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/b/e$c;

    if-eqz p2, :cond_5

    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Lcom/helpscout/beacon/a/d/b/e;)V

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/b/e$d;

    if-eqz p2, :cond_6

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->e()V

    goto :goto_0

    :cond_6
    instance-of p2, p1, Lcom/helpscout/beacon/a/d/b/e$e;

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_7
    instance-of p1, p1, Lcom/helpscout/beacon/a/d/b/e$a;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->i:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    :cond_8
    :goto_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/b/e;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V
    .locals 0

    invoke-direct {p0, p5}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/model/FocusMode;)V

    const/4 p5, 0x1

    invoke-direct {p0, p1, p5}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/a/d/b/e;Z)V

    invoke-direct {p0, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->c(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/ArticleUI;)V
    .locals 2

    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/j$g;

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/c/j$g;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/j$f;

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleDocUI;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/d/c/j$f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V
    .locals 6

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "homeLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;->a()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$k;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, p1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    const-string v0, "homeViewPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "homeAppBarContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->v()V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Lcom/helpscout/beacon/internal/domain/model/ArticleUI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/domain/model/ArticleUI;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V
    .locals 9

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "homeLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "homeErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "homeTabs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "homeAppBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeNoTabsTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    const-string v0, "homeNoTabsTitle"

    if-eqz p2, :cond_0

    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeNoTabsTitle:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x0

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeNoTabsTitle:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    :goto_0
    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;->setHorizontalScrollEnabled(Z)V

    invoke-static {p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/model/FocusMode;)V
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->G()V

    sget-object v0, Lcom/helpscout/beacon/model/FocusMode;->SELF_SERVICE:Lcom/helpscout/beacon/model/FocusMode;

    if-ne p1, v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeNoTabsTitle:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "homeNoTabsTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "baseContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/AppCompatActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/j$c;

    invoke-direct {v1, p1, p2}, Lcom/helpscout/beacon/a/d/c/j$c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->s0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/List;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            ">;ZZ",
            "Lcom/helpscout/beacon/a/d/e/a/b;",
            "Lcom/helpscout/beacon/model/FocusMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->b(Lcom/helpscout/beacon/model/FocusMode;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->b(Ljava/util/List;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->c(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    return-void
.end method

.method private final a(ZZLcom/helpscout/beacon/a/d/e/a/b;)V
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->b(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->y()V

    return-void
.end method

.method private final b(Lcom/helpscout/beacon/model/FocusMode;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->i:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    if-nez v0, :cond_0

    sget-object v1, Lcom/helpscout/beacon/model/FocusMode;->SELF_SERVICE:Lcom/helpscout/beacon/model/FocusMode;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->s0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/helpscout/beacon/model/FocusMode;->ASK_FIRST:Lcom/helpscout/beacon/model/FocusMode;

    if-eq p1, v1, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->G()V

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->G()V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    const-string v0, "homeViewPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Landroidx/viewpager/widget/ViewPager;Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    :goto_1
    return-void
.end method

.method private final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/domain/model/ArticleUI;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAnswersView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AnswersView;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private final b(ZZLcom/helpscout/beacon/a/d/e/a/b;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooserView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(ZZLcom/helpscout/beacon/a/d/e/a/b;Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->z()V

    return-void
.end method

.method private final c(ZZLcom/helpscout/beacon/a/d/e/a/b;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeErrorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "homeErrorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "homeLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "homeAppBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeViewPager:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/StaticViewPager;

    const-string v1, "homeViewPager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->b(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->d()V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->B()V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->C()V

    return-void
.end method

.method private final v()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/a/d/c/j$b;->a:Lcom/helpscout/beacon/a/d/c/j$b;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    return-void
.end method

.method private final x()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->s()V

    return-void
.end method

.method private final y()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->p:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$c;->a(Landroid/app/Activity;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private final z()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;->a(Landroid/app/Activity;)V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->j:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->j:Ljava/util/HashMap;

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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/d$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/d$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/d$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/home/d$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/d$c;->a()Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/home/d$b;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->x()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 7

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->c()V

    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$c$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->a()Lcom/helpscout/beacon/a/d/c/k$a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$a$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->c()Z

    move-result v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->b()Z

    move-result v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$b;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Ljava/util/List;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V

    :goto_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->w()V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$c$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$c$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;->a()Lcom/helpscout/beacon/a/d/c/k$a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$a$a;->a()Lcom/helpscout/beacon/a/d/b/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->c()Z

    move-result v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->b()Z

    move-result v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;->b()Lcom/helpscout/beacon/a/d/c/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/c/k$b;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$c$a;->c()Lcom/helpscout/beacon/model/FocusMode;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/a/d/b/e;ZZLcom/helpscout/beacon/a/d/e/a/b;Lcom/helpscout/beacon/model/FocusMode;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$b;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$b;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$b;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$b;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(ZZLcom/helpscout/beacon/a/d/e/a/b;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$d;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->A()V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$a$b;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$a$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$a$b;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$a$a;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/helpscout/beacon/a/d/c/k$a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/k$a$a;->a()Lcom/helpscout/beacon/a/d/b/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/a/d/b/e;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/a/d/c/k$e;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->F()V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->E()V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    invoke-super {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->c()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAppBarContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "homeAppBarContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/view/ViewGroup;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_close_light:I

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/d;->a(Landroid/graphics/drawable/Drawable;I)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAppBarExitButton:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "homeTabs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Lcom/google/android/material/tabs/TabLayout;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeNoTabsTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeNoTabsTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    return-void
.end method

.method public d()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ANSWER:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->ASK:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    :cond_1
    return-void
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;

    invoke-virtual {p1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/ArticleActivity$b;->a(Landroid/content/Intent;)Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/a/d/c/j$a;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/a/d/c/j$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/home/b;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    goto :goto_4

    :cond_0
    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_1

    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->h()V

    goto :goto_4

    :cond_1
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    sget p1, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const-string p2, "homeTabs"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->values()[Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget v5, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v5}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iput-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->i:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    :cond_6
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    sget-object p2, Lcom/helpscout/beacon/a/d/c/j$e;->a:Lcom/helpscout/beacon/a/d/c/j$e;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    goto :goto_4

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/c;->onActivityResult(IILandroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_home:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->f()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->C()V

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    const-string v1, "EXTRA_IS_FIRST_RUN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    const/4 v1, -0x1

    const-string v2, "EXTRA_CURRENT_TAB"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/home/b;->values()[Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v6, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-object v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->i:Lcom/helpscout/beacon/internal/presentation/ui/home/b;

    :goto_3
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->D()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->c()V

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

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->h:Z

    const-string v1, "EXTRA_IS_FIRST_RUN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeTabs:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "homeTabs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    const-string v1, "EXTRA_CURRENT_TAB"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
