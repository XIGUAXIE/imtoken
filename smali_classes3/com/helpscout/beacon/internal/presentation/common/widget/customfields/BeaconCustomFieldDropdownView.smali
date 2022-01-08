.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;
.super Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 32\u00020\u00012\u00020\u0002:\u00013B_\u0008\u0007\u0012\u0006\u0010&\u001a\u00020%\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0008\u0002\u0010*\u001a\u00020)\u00126\u00100\u001a2\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(.\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020\u00060+\u00a2\u0006\u0004\u00081\u00102J\u001d\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\nJ\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R(\u0010\u001b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001a0\u00190\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001cR\u001d\u0010\"\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0016\u0010#\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u00064"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
        "options",
        "",
        "bindOptions",
        "(Ljava/util/List;)V",
        "addClearItem",
        "()V",
        "option",
        "addItem",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;)V",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "customField",
        "bind",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V",
        "showPicker",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "customFieldValue",
        "",
        "getLabelFromValue",
        "(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Ljava/lang/String;",
        "",
        "Ljava/util/HashMap;",
        "",
        "data",
        "Ljava/util/List;",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "leaveBlankTitle",
        "Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "field",
        "value",
        "dataValueChangedListener",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V",
        "Companion",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$Companion;

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final leaveBlankTitle:Ljava/lang/String;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;"
        }
    .end annotation
.end field

.field private final stringResolver$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$Companion;

    return-void
.end method

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

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$$special$$inlined$inject$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->X()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->leaveBlankTitle:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->options:Ljava/util/List;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLeaveBlankTitle$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->leaveBlankTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setData$p(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    return-void
.end method

.method private final addClearItem()V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->leaveBlankTitle:Ljava/lang/String;

    const-string v3, "title"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "value"

    const-string v3, ""

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final addItem(Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "value"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final bindOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->options:Ljava/util/List;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->addClearItem()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->addItem(Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
    .locals 1

    const-string v0, "customField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldPopupView;->bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomField;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->bindOptions(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getLabelFromValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)Ljava/lang/String;
    .locals 5

    const-string v0, "customFieldValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;

    invoke-virtual {v3}, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/CustomFieldOption;->getLabel()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method public showPicker()V
    .locals 9

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;->data:Ljava/util/List;

    sget v5, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_custom_field_dropdown_item:I

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [I

    sget v2, Lcom/helpscout/beacon/ui/R$id;->customFieldDropdownItemText:I

    const/4 v8, 0x0

    aput v2, v7, v8

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_custom_field_popup_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;

    invoke-direct {v1, p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView$showPicker$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldDropdownView;Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method
