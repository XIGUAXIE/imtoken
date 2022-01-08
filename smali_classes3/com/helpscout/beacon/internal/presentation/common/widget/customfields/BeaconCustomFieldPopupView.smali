.class public abstract Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B_\u0008\u0007\u0012\u0006\u00103\u001a\u000202\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u000104\u0012\u0008\u0008\u0002\u00107\u001a\u000206\u00126\u0010*\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u00040&\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0006J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u001b\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00070\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\u000c8\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010\u000fR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$RF\u0010*\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008(\r\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\'\u0012\u0008\u0008(\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u00040&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u001d\u00100\u001a\u00020,8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\"\u001a\u0004\u0008.\u0010/R\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u00101\u00a8\u0006:"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "applyStrings",
        "()V",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "customFieldValue",
        "bindValueLabel",
        "(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V",
        "resetError",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "field",
        "bindName",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V",
        "onFinishInflate",
        "bind",
        "bindValue",
        "",
        "getLabelFromValue",
        "(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Ljava/lang/String;",
        "showError",
        "showPicker",
        "Lkotlin/Pair;",
        "getFieldAndValuePair",
        "()Lkotlin/Pair;",
        "customField",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "getCustomField$beacon_release",
        "()Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "setCustomField$beacon_release",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "dataValueChangedListener",
        "Lkotlin/jvm/functions/Function2;",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors$delegate",
        "getColors",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
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

.field private final colors$delegate:Lkotlin/Lazy;

.field public customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

.field private customFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

.field private final dataValueChangedListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->dataValueChangedListener:Lkotlin/jvm/functions/Function2;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$$special$$inlined$inject$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->colors$delegate:Lkotlin/Lazy;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$$special$$inlined$inject$2;

    invoke-direct {p3, p0, p4, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$$special$$inlined$inject$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-static {}, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_custom_field_popup:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final applyStrings()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "customFieldInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final bindName(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "customFieldInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final bindValueLabel(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getLabelFromValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldPopupText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "customFieldPopupText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->resetError()V

    :cond_1
    return-void
.end method

.method private final getColors()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->colors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final resetError()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "customFieldInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_caret_down:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$1;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$2;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$2;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->customFieldPopupText:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$3;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView$bind$3;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-nez p1, :cond_0

    const-string v0, "customField"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindName(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V

    return-void
.end method

.method public bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 3

    const-string v0, "customFieldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bindValueLabel(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->dataValueChangedListener:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-nez v1, :cond_0

    const-string v2, "customField"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCustomField$beacon_release()Lcom/helpscout/beacon/internal/domain/model/CustomField;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-nez v0, :cond_0

    const-string v1, "customField"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getFieldAndValuePair()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    if-nez v1, :cond_0

    const-string v2, "customField"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getLabelFromValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Ljava/lang/String;
    .locals 1

    const-string v0, "customFieldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->applyStrings()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "customFieldInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_caret_down:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public final setCustomField$beacon_release(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->customField:Lcom/helpscout/beacon/internal/domain/model/CustomField;

    return-void
.end method

.method public showError()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->customFieldInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "customFieldInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_caret_down:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;)V

    return-void
.end method

.method public abstract showPicker()V
.end method
