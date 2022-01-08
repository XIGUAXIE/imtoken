.class final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDiscardClick$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "onClick",
        "(Landroid/content/DialogInterface;I)V",
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
.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDiscardClick$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDiscardClick$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
