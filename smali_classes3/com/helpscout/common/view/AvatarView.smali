.class public final Lcom/helpscout/common/view/AvatarView;
.super Landroid/widget/FrameLayout;
.source "AvatarView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/view/AvatarView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAvatarView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AvatarView.kt\ncom/helpscout/common/view/AvatarView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ImageViews.kt\ncoil/ImageViews\n+ 4 Contexts.kt\ncoil/Contexts\n+ 5 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n+ 6 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n295#2,2:298\n253#2,2:300\n295#2,2:302\n22#3:304\n24#3:306\n97#3,5:307\n102#3:322\n12#4:305\n443#5,10:312\n232#6:323\n233#6,2:325\n1#7:324\n*E\n*S KotlinDebug\n*F\n+ 1 AvatarView.kt\ncom/helpscout/common/view/AvatarView\n*L\n224#1,2:298\n234#1,2:300\n257#1,2:302\n264#1:304\n264#1:306\n264#1,5:307\n264#1:322\n264#1:305\n265#1,10:312\n123#1:323\n123#1,2:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 82\u00020\u0001:\u00018B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010)\u001a\u00020*H\u0014J0\u0010+\u001a\u00020*2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u000101J0\u0010+\u001a\u00020*2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010-2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u000101J \u00103\u001a\u00020*2\u0006\u0010,\u001a\u00020-2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u000101J \u00104\u001a\u00020*2\u0006\u0010.\u001a\u00020/2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u000101J \u00104\u001a\u00020*2\u0006\u00102\u001a\u00020-2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020*\u0018\u000101J\u0018\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u0007H\u0002R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0017\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00078\u0006@FX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\"\u0004\u0008\u0019\u0010\u0014R$\u0010\u001a\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R$\u0010\u001d\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R$\u0010 \u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0012\"\u0004\u0008\"\u0010\u0014R&\u0010#\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00078\u0006@FX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0012\"\u0004\u0008%\u0010\u0014R$\u0010&\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0012\"\u0004\u0008(\u0010\u0014\u00a8\u00069"
    }
    d2 = {
        "Lcom/helpscout/common/view/AvatarView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "Landroid/graphics/drawable/Drawable;",
        "avatarBackground",
        "getAvatarBackground",
        "()Landroid/graphics/drawable/Drawable;",
        "setAvatarBackground",
        "(Landroid/graphics/drawable/Drawable;)V",
        "avatarElevation",
        "getAvatarElevation",
        "()I",
        "setAvatarElevation",
        "(I)V",
        "binding",
        "Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;",
        "borderColor",
        "getBorderColor",
        "setBorderColor",
        "borderWidth",
        "getBorderWidth",
        "setBorderWidth",
        "initialsMaxTextSize",
        "getInitialsMaxTextSize",
        "setInitialsMaxTextSize",
        "initialsMinTextSize",
        "getInitialsMinTextSize",
        "setInitialsMinTextSize",
        "initialsTextColor",
        "getInitialsTextColor",
        "setInitialsTextColor",
        "initialsTextSize",
        "getInitialsTextSize",
        "setInitialsTextSize",
        "onFinishInflate",
        "",
        "render",
        "imageUrl",
        "",
        "fullName",
        "Lcom/helpscout/common/utils/FullName;",
        "onError",
        "Lkotlin/Function0;",
        "initials",
        "renderImageAvatar",
        "renderInitials",
        "updateInitialsAutoSizeTextType",
        "minSize",
        "maxSize",
        "Companion",
        "android-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_GRANULARITY:I = 0x1

.field private static final Companion:Lcom/helpscout/common/view/AvatarView$Companion;

.field public static final DEFAULT_BORDER_COLOR:I = -0x1

.field public static final DEFAULT_BORDER_WIDTH:I = 0x0

.field public static final DEFAULT_ELEVATION:I = 0x0

.field private static final DEFAULT_INITIALS_MIN_TEXT_SIZE:I

.field public static final DEFAULT_INITIALS_TEXT_COLOR:I = -0x1

.field private static final DEFAULT_INITIALS_TEXT_SIZE:I


# instance fields
.field private avatarBackground:Landroid/graphics/drawable/Drawable;

.field private avatarElevation:I

.field private final binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

.field private borderColor:I

.field private borderWidth:I

.field private initialsMaxTextSize:I

.field private initialsMinTextSize:I

.field private initialsTextColor:I

.field private initialsTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/common/view/AvatarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/common/view/AvatarView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/common/view/AvatarView;->Companion:Lcom/helpscout/common/view/AvatarView$Companion;

    const/16 v0, 0x14

    .line 292
    invoke-static {v0}, Lcom/helpscout/common/extensions/ViewExtensionsKt;->getDp(I)I

    move-result v0

    sput v0, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_TEXT_SIZE:I

    const/16 v0, 0x8

    .line 293
    invoke-static {v0}, Lcom/helpscout/common/extensions/ViewExtensionsKt;->getDp(I)I

    move-result v0

    sput v0, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_MIN_TEXT_SIZE:I

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/common/view/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/common/view/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    move-result-object v0

    const-string v1, "HsCommonViewAvatarBindin\u2026ater.from(context), this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/helpscout/common/view/AvatarView;->borderColor:I

    .line 76
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x333334

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/helpscout/common/view/AvatarView;->avatarBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    iput v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextColor:I

    .line 96
    sget v1, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_TEXT_SIZE:I

    iput v1, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    .line 105
    sget v2, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_MIN_TEXT_SIZE:I

    iput v2, p0, Lcom/helpscout/common/view/AvatarView;->initialsMinTextSize:I

    .line 115
    iput v1, p0, Lcom/helpscout/common/view/AvatarView;->initialsMaxTextSize:I

    .line 122
    sget-object v1, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "context.obtainStyledAttr\u2026tarView, defStyleAttr, 0)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget p3, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_borderColor:I

    .line 124
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/helpscout/common/view/AvatarView;->setBorderColor(I)V

    .line 130
    sget p3, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_strokeWidth:I

    .line 129
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/helpscout/common/view/AvatarView;->setBorderWidth(I)V

    .line 135
    sget p3, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_avatarElevation:I

    .line 134
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/helpscout/common/view/AvatarView;->setAvatarElevation(I)V

    .line 141
    sget p3, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_avatarBackground:I

    .line 140
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    sget p3, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_avatarBackground:I

    .line 147
    sget v0, Lcom/helpscout/common/R$attr;->colorPrimary:I

    invoke-static {p1, v0}, Lcom/helpscout/common/extensions/ContextExtensionsKt;->getThemeAttr(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 145
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 324
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 148
    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p3}, Lcom/helpscout/common/view/AvatarView;->setAvatarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    sget p1, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_initialsTextSize:I

    .line 152
    sget p3, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_TEXT_SIZE:I

    .line 150
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/common/view/AvatarView;->setInitialsTextSize(I)V

    .line 156
    sget p1, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_initialsMaxTextSize:I

    .line 157
    iget p3, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    .line 155
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/common/view/AvatarView;->setInitialsMaxTextSize(I)V

    .line 161
    sget p1, Lcom/helpscout/common/R$styleable;->hs_common_AvatarView_hs_common_initialsMinTextSize:I

    .line 162
    iget p3, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    .line 160
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/helpscout/common/view/AvatarView;->setInitialsMinTextSize(I)V

    .line 164
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 325
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 36
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/common/view/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/helpscout/common/view/AvatarView;)Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    return-object p0
.end method

.method public static final synthetic access$getDEFAULT_INITIALS_MIN_TEXT_SIZE$cp()I
    .locals 1

    .line 34
    sget v0, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_MIN_TEXT_SIZE:I

    return v0
.end method

.method public static final synthetic access$getDEFAULT_INITIALS_TEXT_SIZE$cp()I
    .locals 1

    .line 34
    sget v0, Lcom/helpscout/common/view/AvatarView;->DEFAULT_INITIALS_TEXT_SIZE:I

    return v0
.end method

.method public static synthetic render$default(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 209
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 210
    move-object p2, v0

    check-cast p2, Lcom/helpscout/common/utils/FullName;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 211
    move-object p3, v0

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/common/view/AvatarView;->render(Ljava/lang/String;Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic render$default(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 186
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 187
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 188
    move-object p3, v0

    check-cast p3, Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/common/view/AvatarView;->render(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic renderImageAvatar$default(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 256
    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/view/AvatarView;->renderImageAvatar(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic renderInitials$default(Lcom/helpscout/common/view/AvatarView;Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 245
    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/view/AvatarView;->renderInitials(Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic renderInitials$default(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 223
    check-cast p2, Lkotlin/jvm/functions/Function0;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/view/AvatarView;->renderInitials(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final updateInitialsAutoSizeTextType(II)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 276
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    return-void
.end method


# virtual methods
.method public final getAvatarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->avatarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getAvatarElevation()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->avatarElevation:I

    return v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->borderColor:I

    return v0
.end method

.method public final getBorderWidth()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->borderWidth:I

    return v0
.end method

.method public final getInitialsMaxTextSize()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsMaxTextSize:I

    return v0
.end method

.method public final getInitialsMinTextSize()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsMinTextSize:I

    return v0
.end method

.method public final getInitialsTextColor()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextColor:I

    return v0
.end method

.method public final getInitialsTextSize()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/helpscout/common/view/AvatarView;->setClipToPadding(Z)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/helpscout/common/view/AvatarView;->setClipChildren(Z)V

    const/16 v0, 0x11

    .line 172
    invoke-virtual {p0, v0}, Lcom/helpscout/common/view/AvatarView;->setForegroundGravity(I)V

    return-void
.end method

.method public final render(Ljava/lang/String;Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/common/utils/FullName;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p2}, Lcom/helpscout/common/utils/FullName;->getInitials()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/common/view/AvatarView;->render(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final render(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    if-eqz p3, :cond_c

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_6

    .line 192
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    const/4 p1, 0x2

    const/4 p3, 0x0

    invoke-static {p0, p2, p3, p1, p3}, Lcom/helpscout/common/view/AvatarView;->renderInitials$default(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 193
    :cond_8
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p0, p1, p3}, Lcom/helpscout/common/view/AvatarView;->renderImageAvatar(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 194
    :cond_b
    new-instance v0, Lcom/helpscout/common/view/AvatarView$render$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/helpscout/common/view/AvatarView$render$1;-><init>(Lcom/helpscout/common/view/AvatarView;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, v0}, Lcom/helpscout/common/view/AvatarView;->renderImageAvatar(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public final renderImageAvatar(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.avatarInitials"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 260
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "binding.avatarImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 304
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-static {v1}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v1

    .line 307
    new-instance v3, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v3, p1}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 309
    invoke-virtual {p1, v0}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p1

    .line 316
    new-instance v0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;-><init>(Lcom/helpscout/common/view/AvatarView;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcoil/request/ImageRequest$Listener;

    invoke-virtual {p1, v0}, Lcoil/request/ImageRequest$Builder;->listener(Lcoil/request/ImageRequest$Listener;)Lcoil/request/ImageRequest$Builder;

    const/4 p2, 0x1

    new-array p2, p2, [Lcoil/transform/Transformation;

    const/4 v0, 0x0

    .line 271
    new-instance v2, Lcoil/transform/CircleCropTransformation;

    invoke-direct {v2}, Lcoil/transform/CircleCropTransformation;-><init>()V

    check-cast v2, Lcoil/transform/Transformation;

    aput-object v2, p2, v0

    invoke-virtual {p1, p2}, Lcoil/request/ImageRequest$Builder;->transformations([Lcoil/transform/Transformation;)Lcoil/request/ImageRequest$Builder;

    .line 311
    invoke-virtual {p1}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p1

    .line 322
    invoke-interface {v1, p1}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    return-void
.end method

.method public final renderInitials(Lcom/helpscout/common/utils/FullName;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/utils/FullName;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fullName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lcom/helpscout/common/utils/FullName;->getInitials()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/view/AvatarView;->renderInitials(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final renderInitials(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.avatarInitials"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v1, p0, Lcom/helpscout/common/view/AvatarView;->avatarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 228
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object p2, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object p2, p2, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    .line 233
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    check-cast p2, Landroid/view/View;

    const/4 p1, 0x0

    .line 300
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setAvatarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/helpscout/common/view/AvatarView;->avatarBackground:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setAvatarElevation(I)V
    .locals 2

    .line 66
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->avatarElevation:I

    int-to-float p1, p1

    .line 68
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "binding.avatarImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setElevation(F)V

    .line 69
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.avatarInitials"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setElevation(F)V

    return-void
.end method

.method public final setBorderColor(I)V
    .locals 2

    .line 48
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->borderColor:I

    .line 49
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "binding.avatarImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBorderWidth(I)V
    .locals 1

    .line 57
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->borderWidth:I

    .line 58
    iget-object p1, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object p1, p1, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v0, "binding.avatarImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->borderWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    return-void
.end method

.method public final setInitialsMaxTextSize(I)V
    .locals 2

    .line 117
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->initialsMaxTextSize:I

    .line 118
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsMinTextSize:I

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/common/view/AvatarView;->updateInitialsAutoSizeTextType(II)V

    return-void
.end method

.method public final setInitialsMinTextSize(I)V
    .locals 2

    .line 107
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->initialsMinTextSize:I

    .line 108
    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsMaxTextSize:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/helpscout/common/view/AvatarView;->updateInitialsAutoSizeTextType(II)V

    return-void
.end method

.method public final setInitialsTextColor(I)V
    .locals 1

    .line 88
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextColor:I

    .line 89
    iget-object v0, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object v0, v0, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public final setInitialsTextSize(I)V
    .locals 1

    .line 98
    iput p1, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    .line 99
    iget-object p1, p0, Lcom/helpscout/common/view/AvatarView;->binding:Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    iget-object p1, p1, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarInitials:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "binding.avatarInitials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/helpscout/common/view/AvatarView;->initialsTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    return-void
.end method
