.class public final Lcoil/transform/BlurTransformation;
.super Ljava/lang/Object;
.source "BlurTransformation.kt"

# interfaces
.implements Lcoil/transform/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transform/BlurTransformation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurTransformation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurTransformation.kt\ncoil/transform/BlurTransformation\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n42#2,3:99\n1#3:102\n*E\n*S KotlinDebug\n*F\n+ 1 BlurTransformation.kt\ncoil/transform/BlurTransformation\n*L\n46#1,3:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J)\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil/transform/BlurTransformation;",
        "Lcoil/transform/Transformation;",
        "context",
        "Landroid/content/Context;",
        "radius",
        "",
        "sampling",
        "(Landroid/content/Context;FF)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "key",
        "",
        "toString",
        "transform",
        "Landroid/graphics/Bitmap;",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "input",
        "size",
        "Lcoil/size/Size;",
        "(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private static final Companion:Lcoil/transform/BlurTransformation$Companion;

.field private static final DEFAULT_RADIUS:F = 10.0f

.field private static final DEFAULT_SAMPLING:F = 1.0f


# instance fields
.field private final context:Landroid/content/Context;

.field private final radius:F

.field private final sampling:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/transform/BlurTransformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/transform/BlurTransformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/transform/BlurTransformation;->Companion:Lcoil/transform/BlurTransformation$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcoil/transform/BlurTransformation;-><init>(Landroid/content/Context;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcoil/transform/BlurTransformation;-><init>(Landroid/content/Context;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    iput p2, p0, Lcoil/transform/BlurTransformation;->radius:F

    iput p3, p0, Lcoil/transform/BlurTransformation;->sampling:F

    float-to-double p1, p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 35
    iget p1, p0, Lcoil/transform/BlurTransformation;->sampling:F

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sampling must be > 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 34
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "radius must be in [0, 25]."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/high16 p2, 0x41200000    # 10.0f

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcoil/transform/BlurTransformation;-><init>(Landroid/content/Context;FF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 75
    move-object v0, p0

    check-cast v0, Lcoil/transform/BlurTransformation;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 76
    :cond_0
    instance-of v0, p1, Lcoil/transform/BlurTransformation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    check-cast p1, Lcoil/transform/BlurTransformation;

    iget-object v2, p1, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcoil/transform/BlurTransformation;->radius:F

    iget v2, p1, Lcoil/transform/BlurTransformation;->radius:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcoil/transform/BlurTransformation;->sampling:F

    iget p1, p1, Lcoil/transform/BlurTransformation;->sampling:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 83
    iget-object v0, p0, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget v1, p0, Lcoil/transform/BlurTransformation;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lcoil/transform/BlurTransformation;->sampling:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcoil/transform/BlurTransformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcoil/transform/BlurTransformation;->radius:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/transform/BlurTransformation;->sampling:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurTransformation(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/transform/BlurTransformation;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcoil/transform/BlurTransformation;->sampling:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/bitmap/BitmapPool;",
            "Landroid/graphics/Bitmap;",
            "Lcoil/size/Size;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    new-instance p3, Landroid/graphics/Paint;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, Landroid/graphics/Paint;-><init>(I)V

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcoil/transform/BlurTransformation;->sampling:F

    div-float/2addr p4, v0

    float-to-int p4, p4

    .line 44
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcoil/transform/BlurTransformation;->sampling:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 45
    invoke-static {p2}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {p1, p4, v0, v1}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    int-to-float v1, v0

    .line 47
    iget v2, p0, Lcoil/transform/BlurTransformation;->sampling:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    invoke-virtual {p4, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p4, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 51
    move-object p3, p2

    check-cast p3, Landroid/renderscript/RenderScript;

    .line 52
    move-object p4, p2

    check-cast p4, Landroid/renderscript/Allocation;

    .line 54
    check-cast p2, Landroid/renderscript/ScriptIntrinsicBlur;

    .line 56
    :try_start_0
    iget-object v1, p0, Lcoil/transform/BlurTransformation;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    .line 57
    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p3, p1, v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v1, "tmpInt"

    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p4

    .line 59
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p2

    .line 60
    iget v1, p0, Lcoil/transform/BlurTransformation;->radius:F

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 61
    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 62
    invoke-virtual {p2, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 63
    invoke-virtual {p4, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    if-eqz p4, :cond_1

    .line 67
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    if-eqz p2, :cond_2

    .line 68
    invoke-virtual {p2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move-object v4, v0

    move-object v0, p4

    move-object p4, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p4

    :goto_0
    if-eqz p3, :cond_3

    .line 65
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    :cond_3
    if-eqz p4, :cond_4

    .line 66
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->destroy()V

    :cond_4
    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_5
    if-eqz p2, :cond_6

    .line 68
    invoke-virtual {p2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_6
    throw p1
.end method
