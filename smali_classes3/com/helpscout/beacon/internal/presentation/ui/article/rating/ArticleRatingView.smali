.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;,
        Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;,
        Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003!+\u001cB\'\u0008\u0007\u0012\u0006\u00109\u001a\u000208\u0012\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:\u0012\u0008\u0008\u0002\u0010=\u001a\u00020<\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0008\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0004\u0010\u0010J\u001d\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0004\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\tJ\r\u0010\u0017\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0005R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0019R\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010#\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001d\u001a\u0004\u0008\"\u0010\u001fR\u0018\u0010%\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u0019R+\u0010\u0011\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000b8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\'\u001a\u0004\u0008(\u0010\u000c\"\u0004\u0008)\u0010*R\u001d\u0010-\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u001d\u001a\u0004\u0008,\u0010\u001fR\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010.R\u001d\u00102\u001a\u00020/8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001d\u001a\u0004\u00080\u00101R\u001d\u00105\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\u001d\u001a\u0004\u00084\u0010\u001fR\u0016\u00107\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u00106\u00a8\u0006@"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "a",
        "()V",
        "Lkotlin/Function0;",
        "onDismissFinished",
        "b",
        "(Lkotlin/jvm/functions/Function0;)V",
        "d",
        "",
        "()Z",
        "onFinishInflate",
        "Landroid/view/ViewGroup;",
        "container",
        "(Landroid/view/ViewGroup;)V",
        "docsOnly",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;",
        "clickHandlers",
        "(ZLcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;)V",
        "e",
        "()Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;",
        "c",
        "Landroid/view/ViewPropertyAnimator;",
        "Landroid/view/ViewPropertyAnimator;",
        "positiveButtonAnimator",
        "",
        "j",
        "Lkotlin/Lazy;",
        "getRevertAnimInDelay",
        "()J",
        "revertAnimInDelay",
        "h",
        "getThanksFeedbackAnimOutDuration",
        "thanksFeedbackAnimOutDuration",
        "f",
        "negativeButtonAnimator",
        "<set-?>",
        "Lkotlin/properties/ReadWriteProperty;",
        "getDocsOnly",
        "setDocsOnly",
        "(Z)V",
        "i",
        "getThanksFeedbackAnimInDelay",
        "thanksFeedbackAnimInDelay",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "g",
        "getThanksFeedbackAnimOutDelay",
        "thanksFeedbackAnimOutDelay",
        "Z",
        "shouldBeDismissed",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
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


# static fields
.field static final synthetic l:[Lkotlin/reflect/KProperty;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;

.field private final c:Lkotlin/properties/ReadWriteProperty;

.field private d:Z

.field private e:Landroid/view/ViewPropertyAnimator;

.field private f:Landroid/view/ViewPropertyAnimator;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;

    const/4 v3, 0x0

    const-string v4, "docsOnly"

    const-string v5, "getDocsOnly()Z"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->l:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$g;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$g;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a:Lkotlin/Lazy;

    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {p2}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->c:Lkotlin/properties/ReadWriteProperty;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$q;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->g:Lkotlin/Lazy;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$r;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$r;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->h:Lkotlin/Lazy;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$p;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$p;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->i:Lkotlin/Lazy;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$l;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->j:Lkotlin/Lazy;

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_article_rating_bar:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    sget p2, Lcom/helpscout/beacon/ui/R$id;->positiveLottieRatingAnimation:I

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string p3, "positiveLottieRatingAnimation"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->b(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$b;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    sget p3, Lcom/helpscout/beacon/ui/R$id;->negativeLottieRatingAnimation:I

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "negativeLottieRatingAnimation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$d;

    invoke-direct {p3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$d;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->b(Lkotlin/jvm/functions/Function0;)V

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;

    invoke-direct {p3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$f;

    invoke-direct {p3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lkotlin/jvm/functions/Function0;)V

    sget p3, Lcom/helpscout/beacon/ui/R$id;->btnPositiveRating:I

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->btnNegativeRating:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    invoke-direct {p3, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)J
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getRevertAnimInDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private final a()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingBarText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ratingBarText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_feedbackText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "hs_beacon_feedbackText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->f:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->e:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final b(Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getThanksFeedbackAnimOutDelay()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getThanksFeedbackAnimOutDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Long;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private final b()Z
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveLottieRatingAnimation:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "positiveLottieRatingAnimation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeLottieRatingAnimation:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "negativeLottieRatingAnimation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

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
    return v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->d:Z

    return p0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->d()V

    return-void
.end method

.method private final d()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getDocsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;

    const-string v2, "clickHandlers"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;->c()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$o;

    invoke-direct {v3, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/a;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private final getDocsOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->l:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getRevertAnimInDelay()J
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final getThanksFeedbackAnimInDelay()J
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getThanksFeedbackAnimOutDelay()J
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getThanksFeedbackAnimOutDuration()J
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final setDocsOnly(Z)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->l:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->k:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->animationSpace:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$k;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$k;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onDismissFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->d:Z

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(ZLcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;)V
    .locals 6

    const-string v0, "clickHandlers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->setDocsOnly(Z)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->d:Z

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->c()V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->btnPositiveRating:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const-string p1, "btnPositiveRating"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$m;

    invoke-direct {v3, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->btnNegativeRating:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const-string p1, "btnNegativeRating"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$n;

    invoke-direct {v3, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$j;)V

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveLottieRatingAnimation:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeLottieRatingAnimation:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->e:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingViewContent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    const-string v1, "ratingViewContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnPositiveRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "btnPositiveRating"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnNegativeRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "btnNegativeRating"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->escalationFeedbackThanks:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "escalationFeedbackThanks"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->d(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingViewContent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->d(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->escalationFeedbackThanks:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->d(Landroid/view/View;)V

    return-void
.end method

.method public final e()Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;
    .locals 5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->escalationFeedbackThanks:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "escalationFeedbackThanks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingViewContent:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    const-string v2, "ratingViewContent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->getThanksFeedbackAnimInDelay()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Landroid/view/View;ZJ)V

    return-object p0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;->a()V

    return-void
.end method
