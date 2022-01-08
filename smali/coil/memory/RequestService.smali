.class public final Lcoil/memory/RequestService;
.super Ljava/lang/Object;
.source "RequestService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/RequestService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestService.kt\ncoil/memory/RequestService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Extensions.kt\ncoil/util/-Extensions\n*L\n1#1,107:1\n1#2:108\n75#3:109\n*E\n*S KotlinDebug\n*F\n+ 1 RequestService.kt\ncoil/memory/RequestService\n*L\n76#1:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0003J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u000eH\u0007R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcoil/memory/RequestService;",
        "",
        "logger",
        "Lcoil/util/Logger;",
        "(Lcoil/util/Logger;)V",
        "hardwareBitmapService",
        "Lcoil/memory/HardwareBitmapService;",
        "errorResult",
        "Lcoil/request/ErrorResult;",
        "request",
        "Lcoil/request/ImageRequest;",
        "throwable",
        "",
        "isConfigValidForHardware",
        "",
        "requestedConfig",
        "Landroid/graphics/Bitmap$Config;",
        "isConfigValidForHardwareAllocation",
        "size",
        "Lcoil/size/Size;",
        "isConfigValidForTransformations",
        "options",
        "Lcoil/decode/Options;",
        "isOnline",
        "Companion",
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
.field public static final Companion:Lcoil/memory/RequestService$Companion;

.field public static final VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final hardwareBitmapService:Lcoil/memory/HardwareBitmapService;

.field private final logger:Lcoil/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcoil/memory/RequestService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/RequestService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/RequestService;->Companion:Lcoil/memory/RequestService$Companion;

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    .line 101
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v3, v0, v1

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [Landroid/graphics/Bitmap$Config;

    .line 103
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    .line 100
    :goto_0
    sput-object v0, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcoil/util/Logger;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/memory/RequestService;->logger:Lcoil/util/Logger;

    .line 23
    sget-object p1, Lcoil/memory/HardwareBitmapService;->Companion:Lcoil/memory/HardwareBitmapService$Companion;

    invoke-virtual {p1}, Lcoil/memory/HardwareBitmapService$Companion;->invoke()Lcoil/memory/HardwareBitmapService;

    move-result-object p1

    iput-object p1, p0, Lcoil/memory/RequestService;->hardwareBitmapService:Lcoil/memory/HardwareBitmapService;

    return-void
.end method

.method private final isConfigValidForHardwareAllocation(Lcoil/request/ImageRequest;Lcoil/size/Size;)Z
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcoil/memory/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcoil/memory/RequestService;->hardwareBitmapService:Lcoil/memory/HardwareBitmapService;

    iget-object v0, p0, Lcoil/memory/RequestService;->logger:Lcoil/util/Logger;

    invoke-virtual {p1, p2, v0}, Lcoil/memory/HardwareBitmapService;->allowHardware(Lcoil/size/Size;Lcoil/util/Logger;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isConfigValidForTransformations(Lcoil/request/ImageRequest;)Z
    .locals 1

    .line 95
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcoil/memory/RequestService;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public final errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;
    .locals 2

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcoil/request/ErrorResult;

    .line 27
    instance-of v1, p2, Lcoil/request/NullRequestDataException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getFallback()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getError()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 26
    :goto_0
    invoke-direct {v0, v1, p1, p2}, Lcoil/request/ErrorResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z
    .locals 2

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestedConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcoil/util/-Bitmaps;->isHardware(Landroid/graphics/Bitmap$Config;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getAllowHardware()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p1

    .line 76
    instance-of p2, p1, Lcoil/target/ViewTarget;

    if-eqz p2, :cond_3

    check-cast p1, Lcoil/target/ViewTarget;

    invoke-interface {p1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final options(Lcoil/request/ImageRequest;Lcoil/size/Size;Z)Lcoil/decode/Options;
    .locals 18

    const-string/jumbo v0, "request"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct/range {p0 .. p1}, Lcoil/memory/RequestService;->isConfigValidForTransformations(Lcoil/request/ImageRequest;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p2}, Lcoil/memory/RequestService;->isConfigValidForHardwareAllocation(Lcoil/request/ImageRequest;Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    move-object v7, v0

    if-eqz p3, :cond_2

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    :goto_2
    move-object/from16 v17, v0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getAllowRgb565()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v7, v0, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 50
    :goto_3
    new-instance v0, Lcoil/decode/Options;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getScale()Lcoil/size/Scale;

    move-result-object v9

    .line 55
    invoke-static/range {p1 .. p1}, Lcoil/util/-Requests;->getAllowInexactSize(Lcoil/request/ImageRequest;)Z

    move-result v10

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getPremultipliedAlpha()Z

    move-result v12

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getHeaders()Lokhttp3/Headers;

    move-result-object v13

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v14

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v15

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v16

    move-object v5, v0

    .line 50
    invoke-direct/range {v5 .. v17}, Lcoil/decode/Options;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/Scale;ZZZLokhttp3/Headers;Lcoil/request/Parameters;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;Lcoil/request/CachePolicy;)V

    return-object v0
.end method
