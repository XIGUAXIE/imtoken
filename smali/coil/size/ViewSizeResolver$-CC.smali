.class public final synthetic Lcoil/size/ViewSizeResolver$-CC;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"


# direct methods
.method public static create(Landroid/view/View;)Lcoil/size/ViewSizeResolver;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcoil/size/ViewSizeResolver$Companion;->create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;Z)",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    invoke-virtual {v0, p0, p1}, Lcoil/size/ViewSizeResolver$Companion;->create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;

    move-result-object p0

    return-object p0
.end method
