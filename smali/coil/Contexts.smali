.class public final Lcoil/Contexts;
.super Ljava/lang/Object;
.source "Contexts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c7\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "imageLoader",
        "Lcoil/ImageLoader;",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)Lcoil/ImageLoader;",
        "coil-singleton_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1

    const-string v0, "$this$imageLoader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object p0

    return-object p0
.end method
