.class final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->showPicker()V
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u000c\u001a\u00020\t2\u0016\u0010\u0002\u001a\u0012\u0012\u0002\u0008\u0003 \u0001*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00000\u00002\u000e\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\n\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "Landroid/widget/AdapterView;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "<anonymous parameter 1>",
        "",
        "position",
        "",
        "<anonymous parameter 3>",
        "",
        "onItemClick",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
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
.field final synthetic $popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->$popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    invoke-static {p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->access$getData$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashMap;

    const-string p5, "title"

    invoke-virtual {p4, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    invoke-static {p5}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->access$getData$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/HashMap;

    const-string v0, "value"

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->access$getLeaveBlankTitle$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    new-instance p4, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getCustomField$beacon_release()Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v0

    invoke-direct {p4, v0, p5}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    :goto_0
    iget-object p4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;->$popupWindow:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p4}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
