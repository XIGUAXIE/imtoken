.class final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u00072\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Landroid/widget/DatePicker;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 0>",
        "",
        "year",
        "monthOfYear",
        "dayOfMonth",
        "",
        "onDateSet",
        "(Landroid/widget/DatePicker;III)V",
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "00"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_custom_field_date:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026beacon_custom_field_date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    add-int/2addr p3, p2

    int-to-long v3, p3

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p2

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    new-instance p3, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getCustomField$beacon_release()Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object p4

    invoke-virtual {p4}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result p4

    invoke-direct {p3, p4, p1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    return-void
.end method
