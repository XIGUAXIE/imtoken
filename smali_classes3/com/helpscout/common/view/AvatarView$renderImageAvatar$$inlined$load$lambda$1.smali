.class public final Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;
.super Ljava/lang/Object;
.source "ImageRequest.kt"

# interfaces
.implements Lcoil/request/ImageRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/view/AvatarView;->renderImageAvatar(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$5\n+ 2 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$1\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$2\n+ 4 AvatarView.kt\ncom/helpscout/common/view/AvatarView\n+ 5 ImageRequest.kt\ncoil/request/ImageRequest$Builder$listener$4\n*L\n1#1,901:1\n443#2:902\n444#3:903\n267#4,3:904\n446#5:907\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r\u00b8\u0006\u000e"
    }
    d2 = {
        "coil/request/ImageRequest$Builder$listener$5",
        "Lcoil/request/ImageRequest$Listener;",
        "onCancel",
        "",
        "request",
        "Lcoil/request/ImageRequest;",
        "onError",
        "throwable",
        "",
        "onStart",
        "onSuccess",
        "metadata",
        "Lcoil/request/ImageResult$Metadata;",
        "coil-base_release",
        "com/helpscout/common/view/AvatarView$$special$$inlined$listener$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $onError$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/helpscout/common/view/AvatarView;


# direct methods
.method public constructor <init>(Lcom/helpscout/common/view/AvatarView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;->this$0:Lcom/helpscout/common/view/AvatarView;

    iput-object p2, p0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;->$onError$inlined:Lkotlin/jvm/functions/Function0;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcoil/request/ImageRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "throwable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    iget-object p1, p0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;->this$0:Lcom/helpscout/common/view/AvatarView;

    invoke-static {p1}, Lcom/helpscout/common/view/AvatarView;->access$getBinding$p(Lcom/helpscout/common/view/AvatarView;)Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/helpscout/common/databinding/HsCommonViewAvatarBinding;->avatarImage:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object p2, p0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;->this$0:Lcom/helpscout/common/view/AvatarView;

    invoke-virtual {p2}, Lcom/helpscout/common/view/AvatarView;->getAvatarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object p1, p0, Lcom/helpscout/common/view/AvatarView$renderImageAvatar$$inlined$load$lambda$1;->$onError$inlined:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onStart(Lcoil/request/ImageRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcoil/request/ImageRequest;Lcoil/request/ImageResult$Metadata;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metadata"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
