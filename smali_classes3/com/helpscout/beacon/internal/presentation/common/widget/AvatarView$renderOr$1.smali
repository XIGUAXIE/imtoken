.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView$renderOr$1;
.super Lcom/bumptech/glide/request/target/DrawableImageViewTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;->renderOr(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/helpscout/beacon/internal/presentation/common/widget/AvatarView$renderOr$1",
        "Lcom/bumptech/glide/request/target/DrawableImageViewTarget;",
        "Landroid/graphics/drawable/Drawable;",
        "errorDrawable",
        "",
        "onLoadFailed",
        "(Landroid/graphics/drawable/Drawable;)V",
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
.field final synthetic $onError:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;Lkotlin/jvm/functions/Function0;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView$renderOr$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView$renderOr$1;->$onError:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p3}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/AvatarView$renderOr$1;->$onError:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
