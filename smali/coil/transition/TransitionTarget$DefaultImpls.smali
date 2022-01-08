.class public final Lcoil/transition/TransitionTarget$DefaultImpls;
.super Ljava/lang/Object;
.source "TransitionTarget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/transition/TransitionTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static onError(Lcoil/transition/TransitionTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    check-cast p0, Lcoil/target/Target;

    invoke-static {p0, p1}, Lcoil/target/Target$DefaultImpls;->onError(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static onStart(Lcoil/transition/TransitionTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    check-cast p0, Lcoil/target/Target;

    invoke-static {p0, p1}, Lcoil/target/Target$DefaultImpls;->onStart(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static onSuccess(Lcoil/transition/TransitionTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcoil/target/Target;

    invoke-static {p0, p1}, Lcoil/target/Target$DefaultImpls;->onSuccess(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
