.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J=\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u00072\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "attachment",
        "",
        "setupMediaTypeIcon",
        "(Lcom/helpscout/beacon/a/d/e/a/d;)V",
        "Lkotlin/Function1;",
        "",
        "deleteClick",
        "itemClick",
        "bind",
        "(Lcom/helpscout/beacon/a/d/e/a/d;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/helpscout/beacon/a/d/e/a/d;",
        "getAttachment",
        "()Lcom/helpscout/beacon/a/d/e/a/d;",
        "setAttachment",
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

.field public attachment:Lcom/helpscout/beacon/a/d/e/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_view_attachment_item:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupMediaTypeIcon(Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_attachment_type_image:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_attachment_type_video:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/helpscout/beacon/ui/R$drawable;->hs_beacon_ic_attachment_type_generic:I

    :goto_0
    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentItemIcon:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final bind(Lcom/helpscout/beacon/a/d/e/a/d;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->attachment:Lcom/helpscout/beacon/a/d/e/a/d;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentFileName:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "attachmentFileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentItemFileSize:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "attachmentItemFileSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/helpscout/beacon/a/b/d/a;->b:Lcom/helpscout/beacon/a/b/d/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->b()La/a/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/a/a/a;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/helpscout/beacon/a/b/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->attachmentsItemDelete:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView$bind$1;

    invoke-direct {v1, p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView$bind$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/a/d/e/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView$bind$2;

    invoke-direct {p2, p3, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView$bind$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/a/d/e/a/d;)V

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->setupMediaTypeIcon(Lcom/helpscout/beacon/a/d/e/a/d;)V

    return-void
.end method

.method public final getAttachment()Lcom/helpscout/beacon/a/d/e/a/d;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->attachment:Lcom/helpscout/beacon/a/d/e/a/d;

    if-nez v0, :cond_0

    const-string v1, "attachment"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setAttachment(Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/attachment/AttachmentItemView;->attachment:Lcom/helpscout/beacon/a/d/e/a/d;

    return-void
.end method
