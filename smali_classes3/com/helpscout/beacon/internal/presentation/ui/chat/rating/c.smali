.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/common/mvi/MviView;
.implements Lkotlinx/android/extensions/LayoutContainer;
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpscout/common/mvi/MviView<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f;",
        ">;",
        "Lkotlinx/android/extensions/LayoutContainer;",
        "Lcom/helpscout/beacon/a/d/a/a;"
    }
.end annotation


# static fields
.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field public static final s:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/helpscout/common/lifecycle/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/common/lifecycle/SingleLiveEvent<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private j:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->s:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_chat_ended_rate:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->k:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_rate_chat_on_add_feedback:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->l:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_rate_chat_on_add_feedback_landscape:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->m:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_rate_chat_on_rating_selected:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->n:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_rate_chat_on_rating_sent:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->o:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_rate_chat_on_skip_rating:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->p:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->transition_chat_header_rate_chat:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->q:I

    sget v0, Lcom/helpscout/beacon/ui/R$id;->transition_chat_header_rate_chat_add_feedback:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->r:I

    return-void
.end method

.method private constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string p1, "CV_CHAT_RATING"

    invoke-static {p1}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p1

    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$b;

    invoke-direct {v0, p0, v2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$b;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$c;

    invoke-direct {v0, p0, v2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$c;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-direct {p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->d:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->h:Lkotlin/Lazy;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->r()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->g()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->E()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    return-void
.end method

.method private final A()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "ratingFeedbackEditMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$k;

    sget v3, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final B()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_positive_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->neutralRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_neutral_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_negative_on:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method private final C()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_positive_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->neutralRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_neutral_on:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_negative_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method private final D()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_positive_on:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->neutralRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_neutral_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_rating_negative_off:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    return-void
.end method

.method private final E()V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->positiveRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$h;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->neutralRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$i;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->negativeRating:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$j;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackReadOnly:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ratingFeedbackReadOnly"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackReadOnly:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$k;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnNoThanks:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$m;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnDone:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$n;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingConfirmationButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$o;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    const-string v0, "ratingFeedbackEditMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;

    invoke-direct {v4, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$p;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/text/TextWatcher;

    return-void
.end method

.method private final F()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_discard_changes_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_discard_changes_button_positive:I

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$q;

    invoke-direct {v2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_discard_changes_button_negative:I

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$r;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$r;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private final G()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackReadOnly:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ratingFeedbackReadOnly"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->n:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    return-void
.end method

.method private final H()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "ratingFeedbackEditMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->c(Landroid/widget/EditText;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method private final I()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->o:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    return-void
.end method

.method private final J()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->p:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->l:I

    return v0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Z)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->d:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-virtual {v0, p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->r:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnable(Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->m:I

    return v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private final b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V
    .locals 3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatRatingAssignedAgent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderAvatarOrInitials(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingViewTitle:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ratingViewTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->p()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final b(Z)V
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatHistoryRecycler:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->n()Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->o()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->n()Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->o()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method private final b(I)Z
    .locals 1

    sget v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->l:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->m:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->n:I

    return v0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->q()V

    return-void
.end method

.method private final c(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->e(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->d(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V

    return-void
.end method

.method private final d()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->s()V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Z)V

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->k:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->q:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->u()V

    return-void
.end method

.method private final d(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V
    .locals 9

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnDone:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btnDone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackCharCount:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->b()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;ZLjava/lang/Long;JFILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Ljava/lang/Long;JZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void
.end method

.method private final e()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnDone:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btnDone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingConfirmationButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "ratingConfirmationButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->i()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->v()V

    return-void
.end method

.method private final e(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->d()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->d()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/d;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->B()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->C()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->D()V

    :cond_4
    :goto_0
    return-void
.end method

.method private final f()V
    .locals 3

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->p()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackReadOnly:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "ratingFeedbackReadOnly"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "ratingFeedbackEditMode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->btnNoThanks:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "btnNoThanks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->btnDone:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "btnDone"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingConfirmationTitle:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "ratingConfirmationTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingConfirmationMessage:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "ratingConfirmationMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/helpscout/beacon/ui/R$id;->ratingConfirmationButton:I

    invoke-virtual {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "ratingConfirmationButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic f(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->w()V

    return-void
.end method

.method private final g()V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->f()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->e()V

    return-void
.end method

.method public static final synthetic g(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->x()V

    return-void
.end method

.method private final h()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Z)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->l:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    return-void
.end method

.method public static final synthetic h(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->y()V

    return-void
.end method

.method private final i()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method public static final synthetic i(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->z()V

    return-void
.end method

.method public static final synthetic j(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->A()V

    return-void
.end method

.method private final k()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "containerView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic k(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->H()V

    return-void
.end method

.method private final l()Z
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->k()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final n()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method private final o()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$g$a;

    return-object v0
.end method

.method private final p()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final q()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "ratingFeedbackEditMode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->b(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->ratingFeedbackEditMode:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->b(Landroid/widget/EditText;)V

    return-void
.end method

.method private final r()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->k()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V

    invoke-static {v0, v1}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->setEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V

    :cond_1
    return-void
.end method

.method private final s()V
    .locals 3

    const-string v0, "RatingMotion"

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "observeTransitionChanges"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->e:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$s;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V

    return-void
.end method

.method private final u()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$d;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final v()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$c;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final w()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$f;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final x()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$g;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$g;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final y()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$i;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final z()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$l;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$l;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-interface {p0}, Lkotlinx/android/extensions/LayoutContainer;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->restoreViewState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 2

    const-string v0, "assignedAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$j;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f$a;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f$c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->F()V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f$b;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->s()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->c(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->g()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->J()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->I()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->h()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->G()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->d()V

    :goto_0
    :pswitch_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lcom/helpscout/beacon/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->saveViewState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/MviView$DefaultImpls;->bindLifecycleOwner(Lcom/helpscout/common/mvi/MviView;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic getContainerView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->j()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/helpscout/common/mvi/MviViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/common/mvi/MviViewModel<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/common/mvi/MviViewModel;

    return-object v0
.end method

.method public j()Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/g;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->d:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-virtual {v0}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->getEvent()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reactTo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/f;)V

    return-void
.end method

.method public bridge synthetic render(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;)V

    return-void
.end method

.method public final t()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$h;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$h;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method
