.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;,
        Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0003<;=B\'\u0008\u0007\u0012\u0006\u00105\u001a\u000204\u0012\n\u0008\u0002\u00107\u001a\u0004\u0018\u000106\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0016\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010 \u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00162\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0017\u00a2\u0006\u0004\u0008\"\u0010\u0007J/\u0010$\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008$\u0010\u001bJ\u0017\u0010&\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u0018\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010+\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R$\u0010.\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u0006>"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "wasClearIconTouched",
        "(Landroid/view/MotionEvent;)Z",
        "show",
        "",
        "showClearIcon",
        "(Z)V",
        "applyCurvedCorners",
        "()V",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "",
        "s",
        "",
        "start",
        "before",
        "count",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "focused",
        "direction",
        "Landroid/graphics/Rect;",
        "previouslyFocusedRect",
        "onFocusChanged",
        "(ZILandroid/graphics/Rect;)V",
        "onTouchEvent",
        "after",
        "beforeTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "Landroid/graphics/drawable/Drawable;",
        "clearIconDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "isClearIconShown",
        "Z",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;",
        "onClearListener",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;",
        "getOnClearListener",
        "()Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;",
        "setOnClearListener",
        "(Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "ClearIconSavedState",
        "OnClearListener",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$Companion;

.field private static final DEFAULT_CLEAR_ICON_RES_ID:I


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private clearIconDrawable:Landroid/graphics/drawable/Drawable;

.field private isClearIconShown:Z

.field private onClearListener:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$Companion;

    sget v0, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_close_dark:I

    sput v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->DEFAULT_CLEAR_ICON_RES_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->DEFAULT_CLEAR_ICON_RES_ID:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->clearIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->applyCurvedCorners()V

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

    const p3, 0x101006e

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final applyCurvedCorners()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$dimen;->hs_beacon_card_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    const-string v1, "ShapeAppearanceModel()\n \u2026ize)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/helpscout/beacon/ui/R$color;->hs_beacon_white:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final showClearIcon(Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "compoundDrawablesRelative"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aget-object v3, v0, v3

    aget-object v2, v0, v2

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->clearIconDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {p0, v3, v2, v4, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    aget-object v3, v0, v3

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v2, v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->isClearIconShown:Z

    return-void
.end method

.method private final wasClearIconTouched(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->isClearIconShown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getCompoundPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getOnClearListener()Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->onClearListener:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->showClearIcon(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatEditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->isClearIconShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->isClearIconShown:Z

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->showClearIcon(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->isClearIconShown:Z

    invoke-direct {v1, v0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->showClearIcon(Z)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->wasClearIconTouched(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->showClearIcon(Z)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->onClearListener:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;->didClearText()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final setOnClearListener(Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;->onClearListener:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$OnClearListener;

    return-void
.end method
