.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010#\u001a\u00020\"\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ0\u0010\u0013\u001a\u00020\u00072!\u0010\u0012\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00070\r\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ\r\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u000bR\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0019\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;",
        "Landroid/widget/LinearLayout;",
        "Lcom/helpscout/beacon/a/d/a/a;",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "textInputLayout",
        "Landroid/text/Editable;",
        "text",
        "",
        "resetError",
        "(Lcom/google/android/material/textfield/TextInputLayout;Landroid/text/Editable;)V",
        "applyStrings",
        "()V",
        "onFinishInflate",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "email",
        "onSaveEmail",
        "setListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "renderMissingEmail",
        "renderInvalidEmail",
        "Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors$delegate",
        "Lkotlin/Lazy;",
        "getColors",
        "()Lcom/helpscout/beacon/internal/presentation/common/b;",
        "colors",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver$delegate",
        "getStringResolver",
        "()Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$$special$$inlined$inject$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$$special$$inlined$inject$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->stringResolver$delegate:Lkotlin/Lazy;

    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$$special$$inlined$inject$2;

    invoke-direct {p3, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$$special$$inlined$inject$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->colors$delegate:Lkotlin/Lazy;

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_email_prompt:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/helpscout/beacon/ui/R$id;->emailPromptEditText:I

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string p2, "emailPromptEditText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$1;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;)V

    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$resetError(Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->resetError(Lcom/google/android/material/textfield/TextInputLayout;Landroid/text/Editable;)V

    return-void
.end method

.method private final applyStrings()V
    .locals 2

    sget v0, Lcom/helpscout/beacon/ui/R$id;->saveEmailButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "saveEmailButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPromptInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "emailPromptInputLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPromptText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "emailPromptText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getColors()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->colors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final getStringResolver()Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->stringResolver$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object v0
.end method

.method private final resetError(Lcom/google/android/material/textfield/TextInputLayout;Landroid/text/Editable;)V
    .locals 6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->saveEmailButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "saveEmailButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/c;->a(Landroid/widget/Button;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->applyStrings()V

    return-void
.end method

.method public final renderInvalidEmail()V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPromptInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "emailPromptInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public final renderMissingEmail()V
    .locals 7

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPromptInputLayout:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v0, "emailPromptInputLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->getColors()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/k;->a(Lcom/google/android/material/textfield/TextInputLayout;ZLcom/helpscout/beacon/internal/presentation/common/b;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public final setListener(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSaveEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->saveEmailButton:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    const-string v0, "saveEmailButton"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$setListener$1;

    invoke-direct {v4, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$setListener$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;Lkotlin/jvm/functions/Function1;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->emailPromptEditText:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "emailPromptEditText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$setListener$2;

    invoke-direct {v4, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView$setListener$2;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/EmailPromptView;Lkotlin/jvm/functions/Function1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lcom/helpscout/beacon/internal/presentation/extensions/a/e;->a(Landroid/widget/EditText;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
