.class public final Lcoil/target/Target$DefaultImpls;
.super Ljava/lang/Object;
.source "Target.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/target/Target;
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
.method public static onError(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public static onStart(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public static onSuccess(Lcoil/target/Target;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string/jumbo p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
