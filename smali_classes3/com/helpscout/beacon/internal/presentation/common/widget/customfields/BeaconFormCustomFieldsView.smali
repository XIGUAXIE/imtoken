.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;
.super Landroid/widget/LinearLayout;
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
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u00104\u001a\u000203\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u000105\u0012\u0008\u0008\u0002\u00107\u001a\u00020\n\u00a2\u0006\u0004\u00088\u00109J\u007f\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t26\u0010\u0014\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J1\u0010\u0018\u001a\u00020\u00132\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019Ji\u0010\u001a\u001a\u00020\u00132\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000526\u0010\u0014\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\r2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010 \u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008 \u0010!JY\u0010#\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000626\u0010\u0014\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\r2\u0008\u0010\"\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u001d\u0010%\u001a\u00020\u00132\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0003\u00a2\u0006\u0004\u0008)\u0010*JM\u0010-\u001a\u00020\u00132\u0006\u0010,\u001a\u00020+26\u0010\u0014\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\r\u00a2\u0006\u0004\u0008-\u0010.R\"\u00100\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001c0/8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\"\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00110/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00101\u00a8\u0006:"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "customFieldsEnabled",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "customFields",
        "missingFields",
        "",
        "",
        "",
        "preFilledValues",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "field",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "value",
        "",
        "dataValueChanged",
        "renderCustomFields",
        "(ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V",
        "hidden",
        "cacheHiddenCustomViewsWithTheirPrefilledValue",
        "(Ljava/util/List;Ljava/util/Map;)V",
        "initViews",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;",
        "fieldView",
        "customFieldId",
        "prefilledValue",
        "addPrefilled",
        "(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;ILjava/lang/String;)V",
        "prefilValue",
        "addCustomFieldView",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V",
        "renderMissingRequiredFields",
        "(Ljava/util/List;)V",
        "values",
        "()Ljava/util/Map;",
        "areCustomFieldsValid",
        "()Z",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/d;",
        "state",
        "render",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/d;Lkotlin/jvm/functions/Function2;)V",
        "",
        "childViews",
        "Ljava/util/Map;",
        "hiddenPrefilledCustomFields",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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

.field private final childViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenPrefilledCustomFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->hiddenPrefilledCustomFields:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final addCustomFieldView(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getType()Lcom/helpscout/beacon/internal/domain/model/CustomFieldType;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "context"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v2, v1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldSingleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v2, v1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v2, v1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

    :goto_0
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;->bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result p2

    invoke-direct {p0, v0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->addPrefilled(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final addPrefilled(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;ILjava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-direct {v0, p2, p3}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;->bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    :cond_2
    return-void
.end method

.method private final cacheHiddenCustomViewsWithTheirPrefilledValue(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->hiddenPrefilledCustomFields:Ljava/util/Map;

    new-instance v3, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final initViews(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->addCustomFieldView(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final renderCustomFields(ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p5, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->initViews(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/util/Map;)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->cacheHiddenCustomViewsWithTheirPrefilledValue(Ljava/util/List;Ljava/util/Map;)V

    invoke-direct {p0, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->renderMissingRequiredFields(Ljava/util/List;)V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->hiddenPrefilledCustomFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final renderMissingRequiredFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;->showError()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final areCustomFieldsValid()Z
    .locals 4

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->values()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    return v2
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final render(Lcom/helpscout/beacon/internal/presentation/ui/message/d;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/d;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataValueChanged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getCustomFieldsEnabled()Z

    move-result v2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/d/e/a/f;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getCustomFieldValues()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->d()Ljava/util/Map;

    move-result-object p1

    :goto_0
    move-object v5, p1

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->renderCustomFields(ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    :cond_1
    return-void
.end method

.method public final values()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->childViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;

    invoke-interface {v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;->getFieldAndValuePair()Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->hiddenPrefilledCustomFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method
