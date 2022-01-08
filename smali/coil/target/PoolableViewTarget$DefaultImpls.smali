.class public final Lcoil/target/PoolableViewTarget$DefaultImpls;
.super Ljava/lang/Object;
.source "PoolableViewTarget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/target/PoolableViewTarget;
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
.method public static onError(Lcoil/target/PoolableViewTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/target/PoolableViewTarget<",
            "TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    check-cast p0, Lcoil/target/ViewTarget;

    invoke-static {p0, p1}, Lcoil/target/ViewTarget$DefaultImpls;->onError(Lcoil/target/ViewTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static onStart(Lcoil/target/PoolableViewTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/target/PoolableViewTarget<",
            "TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    check-cast p0, Lcoil/target/ViewTarget;

    invoke-static {p0, p1}, Lcoil/target/ViewTarget$DefaultImpls;->onStart(Lcoil/target/ViewTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static onSuccess(Lcoil/target/PoolableViewTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcoil/target/PoolableViewTarget<",
            "TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcoil/target/ViewTarget;

    invoke-static {p0, p1}, Lcoil/target/ViewTarget$DefaultImpls;->onSuccess(Lcoil/target/ViewTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
