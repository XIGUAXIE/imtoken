.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/common/mvi/MviView;
.implements Lkotlinx/android/extensions/LayoutContainer;
.implements Lcom/helpscout/beacon/a/d/a/a;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpscout/common/mvi/MviView<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        ">;",
        "Lkotlinx/android/extensions/LayoutContainer;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \r2\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001j\u0002`\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\u0001!B\u0019\u0008\u0002\u0012\u0006\u0010=\u001a\u00020:\u0012\u0006\u0010\'\u001a\u00020$\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\u0015\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u001b\u0010\u000c\u001a\u00020\t2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u000c\u0010\u0016J\u0015\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0012\u0010\u0019J\u001b\u0010\u0012\u001a\u00020\t2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u0012\u0010\u0016J\r\u0010\u001a\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001a\u0010\u000bJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u001cJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u001eR\u001e\u0010#\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R6\u0010/\u001a\u0016\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\t\u0018\u00010(j\u0004\u0018\u0001`*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008\u0012\u0010.R\u001d\u00105\u001a\u0002008B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R6\u00106\u001a\u0016\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\t\u0018\u00010(j\u0004\u0018\u0001`*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010+\u001a\u0004\u0008%\u0010-\"\u0004\u0008\u000c\u0010.R\u001d\u00109\u001a\u0002078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u00102\u001a\u0004\u00081\u00108R\u001c\u0010=\u001a\u00020:8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010;\u001a\u0004\u0008!\u0010<R3\u0010B\u001a\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040>j\u0002`?8V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00102\u001a\u0004\u0008@\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;",
        "Lcom/helpscout/common/mvi/MviView;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderCustomView;",
        "Lkotlinx/android/extensions/LayoutContainer;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "",
        "d",
        "()V",
        "b",
        "j",
        "k",
        "Landroid/os/Bundle;",
        "bundle",
        "(Landroid/os/Bundle;)V",
        "a",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
        "agents",
        "(Ljava/util/List;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;",
        "assignedAgent",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V",
        "c",
        "state",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V",
        "event",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;)V",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "f",
        "Landroid/content/Context;",
        "context",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/c;",
        "h",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/c;",
        "motionSceneDelegate",
        "Lkotlin/Function1;",
        "Landroid/view/View;",
        "Lcom/helpscout/beacon/internal/presentation/common/OnClick;",
        "Lkotlin/jvm/functions/Function1;",
        "g",
        "()Lkotlin/jvm/functions/Function1;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onBackButtonClick",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "e",
        "Lkotlin/Lazy;",
        "i",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "onExitButtonClick",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "beaconColors",
        "Landroidx/constraintlayout/motion/widget/MotionLayout;",
        "Landroidx/constraintlayout/motion/widget/MotionLayout;",
        "()Landroidx/constraintlayout/motion/widget/MotionLayout;",
        "containerView",
        "Lcom/helpscout/common/mvi/MviViewModel;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderViewModel;",
        "getViewModel",
        "()Lcom/helpscout/common/mvi/MviViewModel;",
        "viewModel",
        "<init>",
        "(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V",
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
.field public static final j:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;


# instance fields
.field private a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroid/content/Context;

.field private final g:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private final h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->j:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$f;

    return-void
.end method

.method private constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    const-string p1, "CV_CHAT_HEADER"

    invoke-static {p1}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p1

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$c;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->c:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$d;

    invoke-direct {p2, p0, v1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$d;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->d:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$e;

    invoke-direct {p2, p0, v1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$e;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->f()Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->f:Landroid/content/Context;

    sget p1, Lcom/helpscout/beacon/ui/R$id;->btnBack:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/d;->h0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$a;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->btnExit:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/d;->h0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$b;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->headerAvatars:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode$Companion;->getHEADER()Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config$AdaptiveMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->setConfig(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView$Config;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->k()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->j()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->d()V

    return-void
.end method

.method private final b()V
    .locals 3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->subtitle1:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "subtitle1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->assignedAgentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "assignedAgentName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->toolbarHeader:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->headerCollapsibleSection:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->headerCurvedSection:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "headerCurvedSection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/internal/presentation/common/b;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnBack:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_back:I

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;II)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->btnExit:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnExit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_exit:I

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/presentation/common/b;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method private final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$e;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method private final e()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final i()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final j()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->f:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/a;->a(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->d()V

    :cond_1
    return-void
.end method

.method private final k()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->f:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$g;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V

    invoke-static {v0, v1}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->setEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->i:Ljava/util/HashMap;

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

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->restoreViewState(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$a;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$b;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->a(Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$e;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->b()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$f;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->f()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$c;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->c()V

    goto :goto_0

    :cond_4
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c$d;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h:Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;->d()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V
    .locals 10

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->d()Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const-string v2, "title"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/helpscout/beacon/ui/R$id;->assignedAgentName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "assignedAgentName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->b()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    if-eqz p1, :cond_4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->assignedAgent:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderAvatarOrInitials(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/helpscout/beacon/ui/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->subtitle1:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "subtitle1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;->a()Lcom/helpscout/beacon/a/d/e/a/b;

    move-result-object v3

    if-eqz v3, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$id;->headerAvatars:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;->renderAgents$default(Lcom/helpscout/beacon/internal/presentation/common/widget/AgentsView;Lcom/helpscout/beacon/a/d/e/a/b;Lkotlin/jvm/functions/Function1;ZZIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ChatHeaderViewState ignored as it was invalid"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V
    .locals 2

    const-string v0, "assignedAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$a;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "agents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$b;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->saveViewState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/BeaconAgent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "agents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$c;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/MviView$DefaultImpls;->bindLifecycleOwner(Lcom/helpscout/common/mvi/MviView;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b$d;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Landroidx/constraintlayout/motion/widget/MotionLayout;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic getContainerView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->f()Landroidx/constraintlayout/motion/widget/MotionLayout;

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
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/b;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/common/mvi/MviViewModel;

    return-object v0
.end method

.method public final h()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public bridge synthetic reactTo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/c;)V

    return-void
.end method

.method public bridge synthetic render(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/d;)V

    return-void
.end method
