.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B_\u0008\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e\u00126\u0010\'\u001a2\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110%\u00a2\u0006\u000c\u0008\"\u0012\u0008\u0008#\u0012\u0004\u0008\u0008(&\u0012\u0004\u0012\u00020\u00030 \u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u00020\u000c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0019\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000e\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "showPicker",
        "()V",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "onDateSet",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "onDiscardClick",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Landroid/app/DatePickerDialog;",
        "datePickerDialog",
        "Landroid/app/DatePickerDialog;",
        "Lcom/helpscout/beacon/internal/core/util/DeviceTime;",
        "deviceTime$delegate",
        "getDeviceTime",
        "()Lcom/helpscout/beacon/internal/core/util/DeviceTime;",
        "deviceTime",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "Lkotlin/Function2;",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "Lkotlin/ParameterName;",
        "name",
        "field",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "value",
        "dataValueChangedListener",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V",
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

.field private datePickerDialog:Landroid/app/DatePickerDialog;

.field private final deviceTime$delegate:Lkotlin/Lazy;

.field private final onDateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private final onDiscardClick:Landroid/content/DialogInterface$OnClickListener;

.field private final stringResolver$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataValueChangedListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$$special$$inlined$inject$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->stringResolver$delegate:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$$special$$inlined$inject$2;

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$$special$$inlined$inject$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->deviceTime$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDateSet$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->onDateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDiscardClick$1;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView$onDiscardClick$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->onDiscardClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final getDeviceTime()Lcom/helpscout/beacon/internal/core/util/DeviceTime;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->deviceTime$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public showPicker()V
    .locals 9

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->getDeviceTime()Lcom/helpscout/beacon/internal/core/util/DeviceTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/core/util/DeviceTime;->getNow()Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    new-instance v8, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/helpscout/beacon/ui/R$style;->hs_beacon_Theme_DatePickerDialogTheme:I

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->onDateSet:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v5

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getMonthValue()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getDayOfMonth()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v8, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->datePickerDialog:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/d;->Z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->onDiscardClick:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {v8, v2, v0, v1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;->datePickerDialog:Landroid/app/DatePickerDialog;

    if-nez v0, :cond_0

    const-string v1, "datePickerDialog"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method
