.class final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/text/Editable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/text/Editable;",
        "input",
        "",
        "invoke",
        "(Landroid/text/Editable;)V",
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
.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/text/Editable;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->invoke(Landroid/text/Editable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/text/Editable;)V
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$getCustomField$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$setCustomFieldValue$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldText:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "customFieldText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isNotNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$resetError(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)V

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$getDataValueChangedListener$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$getCustomField$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)Lcom/helpscout/beacon/internal/domain/model/CustomField;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView$bind$2;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;->access$getCustomFieldValue$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;)Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
