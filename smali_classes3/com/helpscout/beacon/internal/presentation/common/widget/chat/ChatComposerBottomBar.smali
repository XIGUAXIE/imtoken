.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 92\u00020\u00012\u00020\u0002:\u00019B1\u0008\u0007\u0012\u0006\u00101\u001a\u000200\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u000102\u0012\u0008\u0008\u0002\u00105\u001a\u000204\u0012\u0008\u0008\u0002\u00106\u001a\u000204\u00a2\u0006\u0004\u00087\u00108J%\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ9\u0010\u000c\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\n2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\tJa\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00032\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\n2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u001d\u00a2\u0006\u0004\u0008#\u0010$R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001d\u0010/\u001a\u00020+8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\'\u001a\u0004\u0008-\u0010.\u00a8\u0006:"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "emailRequired",
        "Lkotlin/Function0;",
        "",
        "sendClick",
        "renderInputText",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "Lkotlin/Function1;",
        "isTyping",
        "renderSendButton",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V",
        "sendClickIfThereIsAMessage",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Landroid/text/Editable;",
        "editable",
        "afterSendTextChanged",
        "(Landroid/text/Editable;)V",
        "allowAttachments",
        "attachmentClick",
        "renderAttachmentButton",
        "Landroid/net/Uri;",
        "mediaSelected",
        "show",
        "(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "showLoading",
        "(Z)V",
        "",
        "getMessageInput",
        "()Ljava/lang/String;",
        "clearInput",
        "()V",
        "errorMessage",
        "showError",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors$delegate",
        "Lkotlin/Lazy;",
        "getColors",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Companion",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$Companion;

.field public static final SECONDS_TO_RENDER_FINISH_TYPING:J = 0x7d0L


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final colors$delegate:Lkotlin/Lazy;

.field private final stringResolver$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$$special$$inlined$inject$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->stringResolver$delegate:Lkotlin/Lazy;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$$special$$inlined$inject$2;

    invoke-direct {p3, p0, p4, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$$special$$inlined$inject$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->colors$delegate:Lkotlin/Lazy;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_composer_chat_bottom_bar:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$afterSendTextChanged(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->afterSendTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public static final synthetic access$sendClickIfThereIsAMessage(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->sendClickIfThereIsAMessage(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final afterSendTextChanged(Landroid/text/Editable;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->composeSend:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "composeSend"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method private final getColors()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->colors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final renderAttachmentButton(ZLkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatAttachmentIcon:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "chatAttachmentIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatAttachmentIcon:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderAttachmentButton$$inlined$apply$lambda$1;

    invoke-direct {v0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderAttachmentButton$$inlined$apply$lambda$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatAttachmentIcon:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final renderInputText(ZLkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->y0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x2c001

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setInputType(I)V

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setMaxLines(I)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$3;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string p1, "chatComposeMessageInput"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;

    invoke-direct {v3, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderInputText$4;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderSendButton(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    sget p3, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$$inlined$apply$lambda$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/text/TextWatcher;

    const-wide/16 v0, 0x7d0

    invoke-static {p3, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;JLkotlin/jvm/functions/Function1;)V

    :cond_0
    sget p2, Lcom/helpscout/beacon/ui/R$id;->composeSend:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;

    invoke-direct {p3, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$renderSendButton$2;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final sendClickIfThereIsAMessage(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string v1, "chatComposeMessageInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final clearInput()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string v1, "chatComposeMessageInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageInput()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string v1, "chatComposeMessageInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final show(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attachmentClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isTyping"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendClick"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSelected"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p5}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderInputText(ZLkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderAttachmentButton(ZLkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, p5, p4, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->renderSendButton(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V

    sget p2, Lcom/helpscout/beacon/ui/R$id;->chatComposeProgress:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    const-string p3, "chatComposeProgress"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/ProgressBar;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget p2, Lcom/helpscout/beacon/ui/R$id;->composeSend:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    const-string p3, "composeSend"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget p2, Lcom/helpscout/beacon/ui/R$id;->composeSend:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$show$1;

    invoke-direct {p2, p6}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar$show$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->setMediaListener(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;)V

    :cond_0
    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeMessageInput:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string v1, "chatComposeMessageInput"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->toSpannableStringBuilder(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatComposeProgress:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatComposerBottomBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "chatComposeProgress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    return-void
.end method
