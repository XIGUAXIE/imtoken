.class public final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$b;,
        Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 S2\u00020\u0001:\u0002$\u000bB\u0007\u00a2\u0006\u0004\u0008R\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J)\u0010\u0011\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0010\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0008J\u000f\u0010\"\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0008J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010(J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008$\u0010+J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010.J\u000f\u0010/\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0008J\u000f\u00100\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00080\u0010\u0008J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u000201H\u0002\u00a2\u0006\u0004\u0008\u001a\u00102J\u000f\u00103\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00083\u0010\u0008J\u000f\u00104\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00084\u0010\u0008J\u000f\u00105\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00085\u0010\u0008J\u000f\u00106\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00086\u0010\u0008J\u000f\u00107\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u00087\u0010\u0008J\u001f\u0010\u001a\u001a\u00020\u00042\u0006\u00109\u001a\u0002082\u0006\u0010;\u001a\u00020:H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010<J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010%J\u000f\u0010>\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008>\u0010\u0008J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020?H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010@J\'\u0010\u001a\u001a\u00020\u00042\u0006\u0010B\u001a\u00020A2\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010CH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010EJ\u000f\u0010F\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008F\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010G\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010+J\u000f\u0010H\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008H\u0010\u0008J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010G\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010+R\u0016\u0010K\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001d\u0010Q\u001a\u00020L8P@\u0010X\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\u00a8\u0006T"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onPause",
        "()V",
        "finish",
        "d",
        "c",
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
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "state",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "o",
        "()Z",
        "A",
        "v",
        "show",
        "b",
        "(Z)V",
        "Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;",
        "exception",
        "(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V",
        "",
        "fileName",
        "(Ljava/lang/String;)V",
        "Landroid/net/Uri;",
        "uri",
        "(Landroid/net/Uri;)V",
        "y",
        "B",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V",
        "z",
        "F",
        "G",
        "E",
        "D",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "field",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "value",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V",
        "showPreviousMessages",
        "w",
        "Lcom/helpscout/beacon/a/d/e/a/f;",
        "(Lcom/helpscout/beacon/a/d/e/a/f;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;",
        "error",
        "Lkotlin/Function0;",
        "retry",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;Lkotlin/jvm/functions/Function0;)V",
        "C",
        "title",
        "x",
        "h",
        "Z",
        "hasHeaderAlreadyBeenShown",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "g",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "viewModelLegacy",
        "<init>",
        "j",
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
.field public static final j:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private h:Z

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->j:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "message"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->g:Lkotlin/Lazy;

    invoke-static {}, Lcom/helpscout/beacon/a/d/e/a/g;->a()Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    return-void
.end method

.method private final A()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->j()Lcom/helpscout/beacon/internal/presentation/common/o/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/o/a;->b(Lcom/helpscout/beacon/internal/presentation/common/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final B()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSentView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    const-string v1, "messageSentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "beaconLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "errorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v1, "messageForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    const-string v1, "beaconBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final C()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v1, "messageForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final D()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final E()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$l;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final F()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$m;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final G()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$n;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/d/e/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/e/a/f;)V
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->renderMissingFields(Lcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v1, "messageForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;

    invoke-direct {v1, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$j;-><init>(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v1, "messageForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconSentContainer:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "beaconSentContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v2, "beaconLoading"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    const-string v1, "beaconBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;->a()Ljava/lang/Throwable;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$g;

    invoke-direct {v3, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$g;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p2, 0x1

    invoke-direct {v2, v1, v3, p2, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v2

    :cond_0
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    invoke-direct {p2, p1, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V

    invoke-virtual {v0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->x()V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->b(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V
    .locals 11

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->B()V

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->h:Z

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->b(Z)V

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->agentsHeader:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->renderAgents$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;Lcom/helpscout/beacon/a/d/e/a/b;Lkotlin/jvm/functions/Function1;ZZIILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$h;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$i;

    invoke-direct {v4, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$j;

    invoke-direct {v5, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$k;

    invoke-direct {v6, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v7, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$l;

    invoke-direct {v7, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$m;

    invoke-direct {v8, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v9, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;

    invoke-direct {v9, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->h()Z

    move-result v10

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->render(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$o;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$p;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$p;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;->render(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/a/d/e/a/f;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string v1, "collapsingToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "toolbarSubtitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle2:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "toolbarSubtitle2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->agentsHeader:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    const-string v0, "agentsHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->c(Landroid/view/View;)V

    return-void
.end method

.method private final a(Z)V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->appBarLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v1, "appBarLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/b;->a(Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->w()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSentView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    const-string v1, "messageSentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSentView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$q;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$r;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;->renderConversationSentSuccessfully(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageSentView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v0, "beaconLoading"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v0, "messageForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v0, "errorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->beaconBottomBar:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    const-string v0, "beaconBottomBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->z()V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->B()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final b(Z)V
    .locals 2

    const-string v0, "appBarLayout"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->toolbarExpandedContent:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "toolbarExpandedContent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->toolbarExpandedTitle:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "toolbarExpandedTitle"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->appBarLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/b;->b(Lcom/google/android/material/appbar/AppBarLayout;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->appBarLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/b;->a(Lcom/google/android/material/appbar/AppBarLayout;)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->D()V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->appBarLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$s;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string v1, "collapsingToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->E()V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->F()V

    return-void
.end method

.method public static final synthetic f(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->G()V

    return-void
.end method

.method private final v()V
    .locals 4

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->c()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->d()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->agentsHeader:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;->getHEADER()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->setConfig(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$d;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    invoke-static {p0, v0}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->setEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/n/b;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->messageScrollableContentShadow:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/helpscout/beacon/internal/presentation/common/n/b;-><init>(Landroid/view/View;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->scrollView:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method private final w()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string v1, "collapsingToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->m()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_toolbar_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->height:I

    sget v2, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final x()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string v1, "collapsingToolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle2:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->agentsHeader:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    const-string v1, "agentsHeader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method private final y()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "beaconLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSentView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/EndedView;

    const-string v2, "messageSentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    const-string v2, "messageForm"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v2, "errorView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    const-string v1, "beaconBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final z()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$i;-><init>(Lcom/helpscout/beacon/a/d/e/a/e;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->i:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->i:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->i:Ljava/util/HashMap;

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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$d;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->b(Landroid/app/Activity;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/c$a;->a()Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$e;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->C()V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$b;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->finish()V

    goto :goto_1

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/c$c;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->y()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$e;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Z)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$f;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$e;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$d;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$f;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$a;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/message/a$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/a$d;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarExpandedTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarExpandedTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle2:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->b(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setBackgroundColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->appBarLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->collapsingToolbar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->W0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarSubtitle2:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarSubtitle2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarExpandedTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "toolbarExpandedTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->W0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->a:Lcom/helpscout/beacon/internal/presentation/ui/home/c;

    invoke-virtual {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/c;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    return-object v0
.end method

.method public o()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FOR_RESULT_REQUEST_CODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->o()Z

    move-result v0

    :goto_0
    return v0
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

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/message/a$a;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/ui/message/a$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/a$b;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_send_message:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->W0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->e()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->v()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->A()V

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

.method protected onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageForm:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/message/a$h;-><init>(Lcom/helpscout/beacon/a/d/e/a/e;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method
