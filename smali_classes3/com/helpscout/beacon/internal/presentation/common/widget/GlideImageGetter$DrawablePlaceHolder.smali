.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawablePlaceHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\n\u0010\u0014\u001a\u00060\u0012R\u00020\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J)\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00022\u0010\u0010\n\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u000e\u001a\u00020\r8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0014\u001a\u00060\u0012R\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;",
        "Lcom/bumptech/glide/request/target/SimpleTarget;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "drawable",
        "",
        "replaceImagePlaceholder",
        "(Landroid/graphics/drawable/BitmapDrawable;)V",
        "resource",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "transition",
        "onResourceReady",
        "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/TextView;",
        "getTextView",
        "()Landroid/widget/TextView;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter;",
        "placeholder",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;",
        "getPlaceholder",
        "()Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;",
        "<init>",
        "(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;)V",
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
.field private final placeholder:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->placeholder:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

    return-void
.end method

.method private final replaceImagePlaceholder(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder$replaceImagePlaceholder$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getPlaceholder()Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->placeholder:Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$PlaceholderDrawable;

    return-object v0
.end method

.method public final getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->replaceImagePlaceholder(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/GlideImageGetter$DrawablePlaceHolder;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
