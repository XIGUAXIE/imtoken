.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;
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
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010c\u001a\u00020b\u0012\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010d\u0012\u0008\u0008\u0002\u0010g\u001a\u00020f\u00a2\u0006\u0004\u0008h\u0010iJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ?\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00030\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013JW\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0018H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ%\u0010!\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00162\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0018H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J%\u0010#\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0018H\u0002\u00a2\u0006\u0004\u0008#\u0010\"J5\u0010&\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u00102\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0018H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008*\u0010)J\u000f\u0010+\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008+\u0010)J\u000f\u0010,\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008,\u0010)J\u0017\u0010.\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00081\u0010/J\u0017\u00103\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00083\u0010/J\u0017\u00105\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00085\u0010/J\u000f\u00106\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u00086\u0010\u0005J\r\u00108\u001a\u000207\u00a2\u0006\u0004\u00088\u00109J\u00b5\u0001\u0010B\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030\r2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00030\r2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001826\u0010A\u001a2\u0012\u0013\u0012\u00110;\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(>\u0012\u0013\u0012\u00110?\u00a2\u0006\u000c\u0008<\u0012\u0008\u0008=\u0012\u0004\u0008\u0008(@\u0012\u0004\u0012\u00020\u00030:2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010F\u001a\u00020\u00032\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\r\u0010H\u001a\u00020\u0016\u00a2\u0006\u0004\u0008H\u0010)R\u0016\u0010I\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001d\u0010P\u001a\u00020K8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\"\u0010R\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u001d\u0010X\u001a\u00020T8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010M\u001a\u0004\u0008V\u0010WR\u0016\u0010Y\u001a\u00020D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u001d\u0010_\u001a\u00020[8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010M\u001a\u0004\u0008]\u0010^R\u0016\u0010`\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010a\u00a8\u0006j"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "",
        "initInputLayoutState",
        "()V",
        "applyStrings",
        "Lcom/helpscout/beacon/model/PreFilledForm;",
        "prefill",
        "renderPreFill",
        "(Lcom/helpscout/beacon/model/PreFilledForm;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
        "state",
        "Lkotlin/Function1;",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "itemClick",
        "",
        "deleteClick",
        "renderAttachments",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "contactFormConfigApi",
        "",
        "isVisitor",
        "Lkotlin/Function0;",
        "nameDataChanged",
        "subjectDataChanged",
        "messageDataChanged",
        "emailDataChanged",
        "renderFormOptions",
        "(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "showSubject",
        "subjectDataChangedListener",
        "setupSubjectField",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "setupEmailEditText",
        "showName",
        "nameValue",
        "setupNameTextField",
        "(ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "isNameValid",
        "()Z",
        "isSubjectValid",
        "isMessageValid",
        "isEmailValid",
        "isNameMissing",
        "checkNameFieldMissing",
        "(Z)V",
        "isSubjectMissing",
        "checkSubjectFieldMissing",
        "isMessageMissing",
        "checkMessageFieldMissing",
        "isEmailMissing",
        "checkEmailFieldMissing",
        "onFinishInflate",
        "Lcom/helpscout/beacon/a/d/e/a/e;",
        "formFieldValues",
        "()Lcom/helpscout/beacon/a/d/e/a/e;",
        "Lkotlin/Function2;",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "Lkotlin/ParameterName;",
        "name",
        "field",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "value",
        "customFieldsDataChanged",
        "render",
        "(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Z)V",
        "Lcom/helpscout/beacon/a/d/e/a/f;",
        "missingFields",
        "renderMissingFields",
        "(Lcom/helpscout/beacon/a/d/e/a/f;)V",
        "areFieldsValid",
        "currentPreFilledForm",
        "Lcom/helpscout/beacon/model/PreFilledForm;",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "Lkotlin/Lazy;",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "",
        "currentAttachments",
        "Ljava/util/Map;",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors$delegate",
        "getColors",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors",
        "currentMissingFields",
        "Lcom/helpscout/beacon/a/d/e/a/f;",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore$delegate",
        "getDatastore",
        "()Lcom/helpscout/beacon/BeaconDatastore;",
        "datastore",
        "currentFormConfig",
        "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
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

.field private final colors$delegate:Lkotlin/Lazy;

.field private currentAttachments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

.field private currentMissingFields:Lcom/helpscout/beacon/a/d/e/a/f;

.field private currentPreFilledForm:Lcom/helpscout/beacon/model/PreFilledForm;

.field private final datastore$delegate:Lkotlin/Lazy;

.field private final stringResolver$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->colors$delegate:Lkotlin/Lazy;

    invoke-static {}, Lcom/helpscout/beacon/internal/core/model/ApiModelsKt;->getInvalidContactFormConfig()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-static {}, Lcom/helpscout/beacon/a/d/e/a/g;->b()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentMissingFields:Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentAttachments:Ljava/util/Map;

    invoke-static {}, Lcom/helpscout/beacon/model/ModelsKt;->getEMPTY_PREFILLED_FORM()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentPreFilledForm:Lcom/helpscout/beacon/model/PreFilledForm;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$2;

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->stringResolver$delegate:Lkotlin/Lazy;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$3;

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$$special$$inlined$inject$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->datastore$delegate:Lkotlin/Lazy;

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_form:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final applyStrings()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageNameInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->z0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageSubjectInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->X0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBodyInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageBodyInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageEmailInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final checkEmailFieldMissing(Z)V
    .locals 10

    const-string v0, "messageEmail"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    sget v3, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    sget v3, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, "messageEmailInputLayout"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    :goto_4
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final checkMessageFieldMissing(Z)V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBodyInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "messageBodyInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "messageBody"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final checkNameFieldMissing(Z)V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "messageNameInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "messageName"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final checkSubjectFieldMissing(Z)V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "messageSubjectInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "messageSubject"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final getColors()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->colors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final getDatastore()Lcom/helpscout/beacon/BeaconDatastore;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->datastore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/BeaconDatastore;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final initInputLayoutState()V
    .locals 4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageNameInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageSubjectInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBodyInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageBodyInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "messageEmailInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final isEmailValid()Z
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getDatastore()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageEmail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final isMessageValid()Z
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageBody"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isNotNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private final isNameValid()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getDatastore()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isNotNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method private final isSubjectValid()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageSubject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->isNotNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final renderAttachments(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentAttachments:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentAttachments:Ljava/util/Map;

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageAttachments:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentAttachments:Ljava/util/Map;

    invoke-virtual {p1, v0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;->render(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private final renderFormOptions(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentFormConfig:Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getDatastore()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {p0, p2, p6}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->setupEmailEditText(ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowName()Z

    move-result p6

    invoke-direct {p0, p6, p2, v0, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->setupNameTextField(ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getShowSubject()Z

    move-result p1

    invoke-direct {p0, p1, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->setupSubjectField(ZLkotlin/jvm/functions/Function0;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;

    sget p3, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/TextInputEditText;

    const-string p4, "messageBody"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p4, Lcom/helpscout/beacon/ui/R$id;->messageBodyInputLayout:I

    invoke-virtual {p0, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p6, "messageBodyInputLayout"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p4, p5}, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method private final renderPreFill(Lcom/helpscout/beacon/model/PreFilledForm;)V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/helpscout/beacon/model/PreFilledForm;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupEmailEditText(ZLkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageEmailInputLayout"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->getDatastore()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedEmailTextWatcher;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "messageEmail"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedEmailTextWatcher;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageEmailInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final setupNameTextField(ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;

    invoke-direct {v0, p0, p4}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView$setupNameTextField$1;->invoke()V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageNameInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string p2, "messageNameInputLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private final setupSubjectField(ZLkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageSubjectInputLayout"

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->e(Landroid/view/View;)V

    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "messageSubject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/FocusBasedTextWatcher;-><init>(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$id;->messageSubjectInputLayout:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final areFieldsValid()Z
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->isNameValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->isSubjectValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->isMessageValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->isEmailValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageCustomFields:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->areCustomFieldsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final formFieldValues()Lcom/helpscout/beacon/a/d/e/a/e;
    .locals 8

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageSubject:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageSubject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageBody:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageBody"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageEmail:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "messageEmail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageCustomFields:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->values()Ljava/util/Map;

    move-result-object v6

    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageAttachments:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentsContainerView;->getAttachments()Ljava/util/List;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/a/d/e/a/d;

    invoke-virtual {v1}, Lcom/helpscout/beacon/a/d/e/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/d/e/a/e;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/helpscout/beacon/a/d/e/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->applyStrings()V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->initInputLayoutState()V

    return-void
.end method

.method public final render(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "-",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p8

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    move-object v10, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteClick"

    move-object v11, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameDataChanged"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subjectDataChanged"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDataChanged"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emailDataChanged"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFieldsDataChanged"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->c()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v1

    move-object v0, p0

    move/from16 v2, p9

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->renderFormOptions(Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v7, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentPreFilledForm:Lcom/helpscout/beacon/model/PreFilledForm;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->renderPreFill(Lcom/helpscout/beacon/model/PreFilledForm;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->g()Lcom/helpscout/beacon/model/PreFilledForm;

    move-result-object v0

    iput-object v0, v7, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentPreFilledForm:Lcom/helpscout/beacon/model/PreFilledForm;

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->messageCustomFields:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;

    invoke-virtual {v0, p1, v9}, Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconFormCustomFieldsView;->render(Lcom/helpscout/beacon/internal/presentation/ui/message/d;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;->f()Lcom/helpscout/beacon/a/d/e/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->renderMissingFields(Lcom/helpscout/beacon/a/d/e/a/f;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->renderAttachments(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final renderMissingFields(Lcom/helpscout/beacon/a/d/e/a/f;)V
    .locals 1

    const-string v0, "missingFields"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentMissingFields:Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->currentMissingFields:Lcom/helpscout/beacon/a/d/e/a/f;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->checkNameFieldMissing(Z)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->checkSubjectFieldMissing(Z)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->checkMessageFieldMissing(Z)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/f;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/MessageFormView;->checkEmailFieldMissing(Z)V

    :cond_0
    return-void
.end method
