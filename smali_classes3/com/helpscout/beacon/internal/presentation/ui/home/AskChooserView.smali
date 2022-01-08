.class public final Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010&\u001a\u00020%\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\u001f\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u001f\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0005J7\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e\u00a2\u0006\u0004\u0008\u0006\u0010\u0012J-\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0006\u0010\u0019R\u001d\u0010\u001e\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010 R\u001d\u0010$\u001a\u00020\t8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001b\u001a\u0004\u0008\"\u0010#\u00a8\u0006,"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "c",
        "()V",
        "a",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "beaconColors",
        "(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;)V",
        "b",
        "onFinishInflate",
        "Lkotlin/Function0;",
        "messageOnClick",
        "chatOnClick",
        "previousMessageOnClick",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "",
        "showChat",
        "showPreviousMessage",
        "Lcom/helpscout/beacon/a/d/e/a/b;",
        "agents",
        "shouldAnimate",
        "(ZZLcom/helpscout/beacon/a/d/e/a/b;Z)V",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "",
        "I",
        "fiftyPercentAlphaForBackground",
        "getColors",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:I

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$b;

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$b;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->b:Lkotlin/Lazy;

    const/16 p1, 0x80

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "homeAskChooseEmailImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseChatImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "homeAskChooseChatImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskToolBarExtension:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "homeAskToolBarExtension"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskToolBarExtensionBehindMessage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "homeAskToolBarExtensionBehindMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskSubTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskSubTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->b(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    return-void
.end method

.method private final a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;)V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/ImageView;Lcom/helpscout/beacon/internal/presentation/common/b;ZILjava/lang/Object;)V

    invoke-interface {p2}, Lcom/helpscout/beacon/internal/presentation/common/b;->c()I

    move-result p2

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->c:I

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final b()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->d1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskSubTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskSubTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->e1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskPreviousMessagesButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "homeAskPreviousMessagesButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->E0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseChatTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskChooseChatTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseChatDescription:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskChooseChatDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseChatImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "homeAskChooseChatImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskChooseEmailTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailDescription:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "homeAskChooseEmailDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->B0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "homeAskChooseEmailImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final c()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->b()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskAgents:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;->getHEADER()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->setConfig(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;)V

    return-void
.end method

.method private final getColors()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->d:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageOnClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatOnClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousMessageOnClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->homeAskPreviousMessagesButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$c;

    invoke-direct {v1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p3, Lcom/helpscout/beacon/ui/R$id;->homeAskChatChooseChat:I

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$d;

    invoke-direct {v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$d;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmail:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$e;

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$e;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(ZZLcom/helpscout/beacon/a/d/e/a/b;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "agents"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->c()V

    sget v2, Lcom/helpscout/beacon/ui/R$id;->homeAskAgents:I

    invoke-virtual {v0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    new-instance v5, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$f;

    invoke-direct {v5, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView$f;-><init>(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->renderAgents$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;Lcom/helpscout/beacon/a/d/e/a/b;Lkotlin/jvm/functions/Function1;ZZIILjava/lang/Object;)V

    const-string v2, "homeAskPreviousMessagesButton"

    const-string v3, "homeAskChatChooseChatContainer"

    const-string v4, "homeAskChooseEmailContainer"

    const-string v5, "homeAskSubTitle"

    const-string v6, "homeAskTitle"

    if-eqz v1, :cond_0

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskTitle:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v15, 0x12c

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v8, 0x0

    const-wide/16 v10, 0x12c

    const/4 v12, 0x0

    const/16 v13, 0x9

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskSubTitle:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    const-wide/16 v9, 0x12c

    const/4 v11, 0x0

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "resources"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v5, 0xf

    int-to-float v5, v5

    mul-float v1, v1, v5

    sget v5, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailContainer:I

    invoke-virtual {v0, v5}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/cardview/widget/CardView;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v9, 0x190

    const/4 v12, 0x1

    move v11, v1

    invoke-static/range {v6 .. v13}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    sget v4, Lcom/helpscout/beacon/ui/R$id;->homeAskChatChooseChatContainer:I

    invoke-virtual {v0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/cardview/widget/CardView;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v9, 0x1f4

    move/from16 v7, p1

    invoke-static/range {v6 .. v11}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JF)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskPreviousMessagesButton:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/Button;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x2bc

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move/from16 v4, p2

    invoke-static/range {v3 .. v10}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskTitle:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskSubTitle:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskChooseEmailContainer:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskChatChooseChatContainer:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-static {v1, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->homeAskPreviousMessagesButton:I

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, p2

    invoke-static {v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_ask_chooser:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/home/AskChooserView;->c()V

    return-void
.end method
