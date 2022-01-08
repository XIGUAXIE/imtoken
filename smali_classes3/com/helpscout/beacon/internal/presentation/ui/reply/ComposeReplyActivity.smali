.class public final Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;
.super Lcom/helpscout/beacon/internal/presentation/common/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 Q2\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008P\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0011J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0014J\u001f\u0010\r\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ?\u0010\r\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u001bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u001fJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008\r\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0007J\u000f\u0010$\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0007J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u001aJ\u000f\u0010%\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0007J\u000f\u0010&\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0007J\u0019\u0010\u0019\u001a\u00020\u00052\u0008\u0008\u0002\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0011J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008\r\u0010*J\u000f\u0010+\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0007J\u0019\u0010.\u001a\u00020\u00052\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0014\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00080\u0010\u0007J)\u00106\u001a\u00020\u00052\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u0002012\u0008\u00105\u001a\u0004\u0018\u000104H\u0014\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\u000f2\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0007J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=H\u0016\u00a2\u0006\u0004\u0008\r\u0010?J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008\r\u0010AR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\"\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001c0F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u001d\u0010O\u001a\u00020J8P@\u0010X\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\u00a8\u0006R"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;",
        "Lcom/helpscout/beacon/internal/presentation/common/c;",
        "",
        "y",
        "()Ljava/lang/String;",
        "",
        "w",
        "()V",
        "v",
        "E",
        "x",
        "Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;",
        "exception",
        "a",
        "(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V",
        "",
        "isDraft",
        "(Z)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;",
        "state",
        "(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;)V",
        "message",
        "draft",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "text",
        "b",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function1;",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "itemClick",
        "deleteClick",
        "(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/net/Uri;",
        "uri",
        "(Landroid/net/Uri;)V",
        "D",
        "C",
        "B",
        "z",
        "show",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;",
        "error",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V",
        "A",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "d",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "onBackPressed",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Landroid/text/TextWatcher;",
        "i",
        "Landroid/text/TextWatcher;",
        "validationWatcher",
        "",
        "h",
        "Ljava/util/Map;",
        "currentAttachments",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "g",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;",
        "viewModelLegacy",
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
.field public static final k:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;


# instance fields
.field private final g:Lkotlin/Lazy;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/text/TextWatcher;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;-><init>()V

    const-string v0, "compose_reply"

    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->g:Lkotlin/Lazy;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->h:Ljava/util/Map;

    return-void
.end method

.method private final A()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->x()V

    return-void
.end method

.method private final B()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;ZILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "errorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "beaconLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private final C()V
    .locals 7

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->B()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyMessageInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "replyMessageInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final D()V
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentContainerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    const-string v1, "attachmentContainerView"

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

.method private final E()V
    .locals 5

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/d$b;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->y()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/helpscout/beacon/ui/R$id;->replyMessage:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v4, "replyMessage"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/helpscout/beacon/a/d/c/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentContainerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    const-string v1, "attachmentContainerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V
    .locals 6

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;->a()Ljava/lang/Throwable;

    move-result-object p1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$d;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, p1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;-><init>(Ljava/lang/Throwable;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v0, "beaconLoading"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->b(Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->b(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;)V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->b()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$e;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$f;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;->render(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$g;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->B()V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->h:Ljava/util/Map;

    sget p1, Lcom/helpscout/beacon/ui/R$id;->attachmentContainerView:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->h:Ljava/util/Map;

    invoke-virtual {p1, v0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;->render(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/a/d/c/d$f;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->y()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/helpscout/beacon/ui/R$id;->attachmentContainerView:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/helpscout/beacon/a/d/c/d$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->x()V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->toSpannableStringBuilder(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$id;->replyMessage:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "replyMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    sget v1, Lcom/helpscout/beacon/ui/R$id;->replyMessage:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyMessage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->i:Landroid/text/TextWatcher;

    const-string v2, "validationWatcher"

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->i:Landroid/text/TextWatcher;

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    return-void
.end method

.method private final b(Z)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyMessageInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replyMessageInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentContainerView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    const-string v1, "attachmentContainerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyBottomBar:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconComposerBottomBar;

    const-string v1, "replyBottomBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private final v()V
    .locals 4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->replyMessage:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "replyMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->replyMessageInputLayout:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "replyMessageInputLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$c;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->i:Landroid/text/TextWatcher;

    return-void
.end method

.method private final w()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyMessageInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replyMessageInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->v()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->d()V

    return-void
.end method

.method private final x()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private final y()Ljava/lang/String;
    .locals 1

    const-string v0, "com.helpscout.beacon.ui.EXTRA_MESSAGE"

    invoke-static {p0, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final z()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    const-string v1, "beaconLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->beaconLoading:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/BeaconLoadingView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorView:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    const-string v1, "errorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->j:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->j:Ljava/util/HashMap;

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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$b;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->C()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$d;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$a;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$a;->a()Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$e;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->D()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/b$a;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$d;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->A()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$c;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->z()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$b;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$b;)V

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$d;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/a/d/c/d$d;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->y()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/a/d/c/d$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->replyMessageInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "replyMessageInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->l()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

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

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->n()Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/a/d/c/d$a;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/a/d/c/d$a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/e;->a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->E()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_activity_compose_reply:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/c;->g()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->w()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyActivity;->E()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    return v0
.end method
