.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0016\u0017B\'\u0008\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\r\u001a\u00020\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;",
        "errorType",
        "setErrorType$beacon_release",
        "(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;",
        "setErrorType",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "ErrorAction",
        "ErrorType",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final stringResolver$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$inject$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->stringResolver$delegate:Lkotlin/Lazy;

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_error:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;
    .locals 7

    const-string v0, "errorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_error_blocks:I

    instance-of v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$MisconfigurationError;

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->S()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->R()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_config_error:I

    move v1, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->d()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;->getDescription()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_article_error:I

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$ArticleDetailError;->getErrorAction()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    move-result-object p1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;->getDescription()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_search_empty:I

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$NoResults;->getErrorAction()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    move-result-object p1

    goto :goto_1

    :cond_2
    instance-of v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$GeneralError;->getErrorAction()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    move-result-object p1

    :goto_0
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_3
    instance-of v1, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType$BeaconViewStateError;->getErrorAction()Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    move-result-object p1

    goto :goto_0

    :goto_1
    sget v4, Lcom/helpscout/beacon/ui/R$id;->errorTitle:I

    invoke-virtual {p0, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "errorTitle.apply { text = title }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-static {v4, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    sget v3, Lcom/helpscout/beacon/ui/R$id;->errorDescription:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "errorDescription.apply { text = description }"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorImage:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_8

    sget v0, Lcom/helpscout/beacon/ui/R$id;->errorActionButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    move-object v2, v1

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->Y0()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "errorActionButton.apply \u2026oke() }\n                }"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    sget p1, Lcom/helpscout/beacon/ui/R$id;->errorActionButton:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "errorActionButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_4
    return-object p0

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
