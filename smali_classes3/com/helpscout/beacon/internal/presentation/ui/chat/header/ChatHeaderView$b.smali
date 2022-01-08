.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/helpscout/beacon/internal/presentation/ui/chat/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/ChatHeaderView;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
