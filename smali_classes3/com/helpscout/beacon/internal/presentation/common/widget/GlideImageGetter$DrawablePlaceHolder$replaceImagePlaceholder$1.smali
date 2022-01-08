.class final Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->replaceImagePlaceholder(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "run",
        "()V",
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
.field final synthetic $drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    mul-int v1, v1, v0

    div-int/2addr v1, v2

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getPlaceholder()Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getPlaceholder()Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
