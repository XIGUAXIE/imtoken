.class final Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;->setErrorType$beacon_release(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorType;)Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "com/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$apply$lambda$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $action$inlined:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

.field final synthetic $this_apply$inlined:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;->$action$inlined:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;->$this_apply$inlined:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$$special$$inlined$let$lambda$1;->$action$inlined:Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ErrorView$ErrorAction;->getOnButtonClick()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
