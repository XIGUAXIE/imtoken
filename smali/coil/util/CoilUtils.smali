.class public final Lcoil/util/CoilUtils;
.super Ljava/lang/Object;
.source "CoilUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcoil/util/CoilUtils;",
        "",
        "()V",
        "clear",
        "",
        "view",
        "Landroid/view/View;",
        "createDefaultCache",
        "Lokhttp3/Cache;",
        "context",
        "Landroid/content/Context;",
        "metadata",
        "Lcoil/request/ImageResult$Metadata;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcoil/util/CoilUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcoil/util/CoilUtils;

    invoke-direct {v0}, Lcoil/util/CoilUtils;-><init>()V

    sput-object v0, Lcoil/util/CoilUtils;->INSTANCE:Lcoil/util/CoilUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clear(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcoil/memory/ViewTargetRequestManager;->clearCurrentRequest()V

    return-void
.end method

.method public static final createDefaultCache(Landroid/content/Context;)Lokhttp3/Cache;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {v0, p0}, Lcoil/util/Utils;->getDefaultCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 16
    sget-object v0, Lcoil/util/Utils;->INSTANCE:Lcoil/util/Utils;

    invoke-virtual {v0, p0}, Lcoil/util/Utils;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v0

    .line 17
    new-instance v2, Lokhttp3/Cache;

    invoke-direct {v2, p0, v0, v1}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    return-object v2
.end method

.method public static final metadata(Landroid/view/View;)Lcoil/request/ImageResult$Metadata;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcoil/util/-Extensions;->getRequestManager(Landroid/view/View;)Lcoil/memory/ViewTargetRequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcoil/memory/ViewTargetRequestManager;->getMetadata()Lcoil/request/ImageResult$Metadata;

    move-result-object p0

    return-object p0
.end method
