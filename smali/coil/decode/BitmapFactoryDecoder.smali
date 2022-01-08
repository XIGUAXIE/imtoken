.class public final Lcoil/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "BitmapFactoryDecoder.kt"

# interfaces
.implements Lcoil/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;,
        Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;,
        Lcoil/decode/BitmapFactoryDecoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapFactoryDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil/decode/BitmapFactoryDecoder\n+ 2 InterruptibleSource.kt\ncoil/decode/InterruptibleSourceKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 6 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 7 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,325:1\n25#2:326\n26#2,16:336\n308#3,9:327\n317#3,2:352\n1#4:354\n48#5:355\n26#6:356\n42#7,3:357\n*E\n*S KotlinDebug\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil/decode/BitmapFactoryDecoder\n*L\n38#1:326\n38#1,16:336\n38#1,9:327\n38#1,2:352\n193#1:355\n193#1:356\n266#1,3:357\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0003#$%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J1\u0010\u0012\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ(\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u001a\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002J$\u0010!\u001a\u00020\r*\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcoil/decode/BitmapFactoryDecoder;",
        "Lcoil/decode/Decoder;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "applyExifTransformations",
        "Landroid/graphics/Bitmap;",
        "pool",
        "Lcoil/bitmap/BitmapPool;",
        "inBitmap",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "isFlipped",
        "",
        "rotationDegrees",
        "",
        "decode",
        "Lcoil/decode/DecodeResult;",
        "source",
        "Lokio/BufferedSource;",
        "size",
        "Lcoil/size/Size;",
        "options",
        "Lcoil/decode/Options;",
        "(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "decodeInterruptible",
        "Lokio/Source;",
        "handles",
        "mimeType",
        "",
        "shouldReadExifData",
        "computeConfig",
        "Landroid/graphics/BitmapFactory$Options;",
        "Companion",
        "ExceptionCatchingSource",
        "ExifInterfaceInputStream",
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
.field public static final Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

.field private static final MIME_TYPE_HEIC:Ljava/lang/String; = "image/heic"

.field private static final MIME_TYPE_HEIF:Ljava/lang/String; = "image/heif"

.field private static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIME_TYPE_WEBP:Ljava/lang/String; = "image/webp"

.field private static final SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcoil/decode/BitmapFactoryDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/decode/BitmapFactoryDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/decode/BitmapFactoryDecoder;->Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

    const-string v0, "image/jpeg"

    const-string v1, "image/webp"

    const-string v2, "image/heic"

    const-string v3, "image/heif"

    .line 322
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcoil/decode/BitmapFactoryDecoder;->SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->context:Landroid/content/Context;

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static final synthetic access$decodeInterruptible(Lcoil/decode/BitmapFactoryDecoder;Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/decode/BitmapFactoryDecoder;->decodeInterruptible(Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p0

    return-object p0
.end method

.method private final applyExifTransformations(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;ZI)Landroid/graphics/Bitmap;
    .locals 5

    if-lez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p4, :cond_1

    if-nez v0, :cond_1

    return-object p2

    .line 244
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 245
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 246
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    if-eqz p4, :cond_2

    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 248
    invoke-virtual {v1, p4, v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    if-eqz v0, :cond_3

    int-to-float p4, p5

    .line 251
    invoke-virtual {v1, p4, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 254
    :cond_3
    new-instance p4, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 255
    invoke-virtual {v1, p4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 256
    iget v0, p4, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p4, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 257
    :cond_4
    iget v0, p4, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget p4, p4, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    invoke-virtual {v1, v0, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    const/16 p4, 0x5a

    if-eq p5, p4, :cond_7

    const/16 p4, 0x10e

    if-ne p5, p4, :cond_6

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    invoke-interface {p1, p4, p5, p3}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_2

    .line 261
    :cond_7
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-interface {p1, p4, p5, p3}, Lcoil/bitmap/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 357
    :goto_2
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    iget-object p5, p0, Lcoil/decode/BitmapFactoryDecoder;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, v1, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 269
    invoke-interface {p1, p2}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method private final computeConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/Options;ZI)Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 209
    invoke-virtual {p2}, Lcoil/decode/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez p3, :cond_0

    if-lez p4, :cond_1

    .line 213
    :cond_0
    invoke-static {v0}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 218
    :cond_1
    invoke-virtual {p2}, Lcoil/decode/Options;->getAllowRgb565()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, p2, :cond_2

    iget-object p2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string p3, "image/jpeg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 219
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 223
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_3

    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p1, p2, :cond_3

    sget-object p1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, p1, :cond_3

    .line 224
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    :cond_3
    return-object v0
.end method

.method private final decodeInterruptible(Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 47
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 48
    new-instance v1, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;-><init>(Lokio/Source;)V

    .line 49
    move-object v3, v1

    check-cast v3, Lokio/Source;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    const/4 v9, 0x1

    .line 52
    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    invoke-interface {v3}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v4

    invoke-interface {v4}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {v1}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_19

    const/4 v10, 0x0

    .line 55
    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    iget-object v4, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {v7, v4}, Lcoil/decode/BitmapFactoryDecoder;->shouldReadExifData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    new-instance v6, Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;

    invoke-interface {v3}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v11

    invoke-interface {v11}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Lcoil/decode/BitmapFactoryDecoder$ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/InputStream;

    invoke-direct {v4, v6}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 62
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface;->isFlipped()Z

    move-result v6

    .line 63
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface;->getRotationDegrees()I

    move-result v4

    move v11, v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v4, 0x5a

    if-eq v11, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v11, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 71
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_3

    :cond_3
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_3
    if-eqz v4, :cond_4

    .line 72
    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_4

    :cond_4
    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_4
    move-object/from16 v13, p4

    .line 74
    invoke-direct {v7, v8, v13, v6, v11}, Lcoil/decode/BitmapFactoryDecoder;->computeConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/Options;ZI)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    iput-object v14, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 76
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1a

    if-lt v14, v15, :cond_5

    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 77
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v14

    iput-object v14, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 80
    :cond_5
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-lt v14, v15, :cond_6

    .line 81
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getPremultipliedAlpha()Z

    move-result v14

    iput-boolean v14, v8, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 85
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v14, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 86
    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 89
    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v14, "inPreferredConfig"

    if-lez v5, :cond_11

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v5, :cond_8

    goto/16 :goto_a

    .line 95
    :cond_8
    instance-of v5, v0, Lcoil/size/PixelSize;

    if-nez v5, :cond_a

    .line 97
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 98
    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 100
    iget-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_9

    .line 101
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v5, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v4, v5}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_9
    move/from16 v16, v6

    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 105
    :cond_a
    check-cast v0, Lcoil/size/PixelSize;

    invoke-virtual {v0}, Lcoil/size/PixelSize;->component1()I

    move-result v5

    invoke-virtual {v0}, Lcoil/size/PixelSize;->component2()I

    move-result v0

    .line 106
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v10

    invoke-static {v12, v4, v5, v0, v10}, Lcoil/decode/DecodeUtils;->calculateInSampleSize(IIIILcoil/size/Scale;)I

    move-result v10

    iput v10, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v9, v12

    .line 110
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v12, v12

    div-double v16, v9, v12

    int-to-double v9, v4

    .line 111
    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v12, v4

    div-double v18, v9, v12

    int-to-double v4, v5

    int-to-double v9, v0

    .line 114
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getScale()Lcoil/size/Scale;

    move-result-object v24

    move-wide/from16 v20, v4

    move-wide/from16 v22, v9

    .line 109
    invoke-static/range {v16 .. v24}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(DDDDLcoil/size/Scale;)D

    move-result-wide v4

    .line 118
    invoke-virtual/range {p4 .. p4}, Lcoil/decode/Options;->getAllowInexactSize()Z

    move-result v0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_b

    invoke-static {v4, v5, v9, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v4

    :cond_b
    cmpg-double v0, v4, v9

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 120
    :goto_7
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 121
    iget-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    int-to-double v9, v0

    const v0, 0x7fffffff

    cmpl-double v12, v4, v9

    if-lez v12, :cond_d

    int-to-double v9, v0

    div-double/2addr v9, v4

    .line 124
    invoke-static {v9, v10}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v9

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 125
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_8

    .line 128
    :cond_d
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-double v9, v0

    mul-double v9, v9, v4

    .line 129
    invoke-static {v9, v10}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 133
    :cond_e
    :goto_8
    iget-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_9

    .line 136
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_f

    iget-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v0, :cond_f

    .line 137
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v5, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v4, v5}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move/from16 v16, v6

    goto :goto_9

    .line 140
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v15, :cond_10

    .line 144
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v9, v0

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v12, v0

    div-double/2addr v9, v12

    .line 145
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v12, v0

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v6

    int-to-double v6, v0

    div-double/2addr v12, v6

    mul-double v9, v9, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v6

    .line 147
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    mul-double v4, v4, v12

    add-double/2addr v4, v6

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 149
    iget-object v5, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-interface {v2, v0, v4, v5}, Lcoil/bitmap/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_9

    :cond_10
    move/from16 v16, v6

    const/4 v0, 0x0

    .line 134
    :goto_9
    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_11
    :goto_a
    move/from16 v16, v6

    const/4 v0, 0x1

    .line 91
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v0, 0x0

    .line 93
    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 161
    :goto_b
    iget-object v4, v8, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 164
    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    .line 166
    :try_start_0
    check-cast v3, Ljava/io/Closeable;

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    move-object v0, v3

    check-cast v0, Lokio/BufferedSource;

    .line 168
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v15, :cond_12

    iget-object v7, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v7, :cond_12

    .line 169
    invoke-interface {v0}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v0

    .line 170
    array-length v7, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c

    .line 172
    :cond_12
    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_c
    move-object v7, v0

    .line 166
    :try_start_2
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 175
    :try_start_3
    invoke-virtual {v1}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_16

    if-eqz v7, :cond_15

    .line 189
    iget-object v4, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v5, v16

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcoil/decode/BitmapFactoryDecoder;->applyExifTransformations(Lcoil/bitmap/BitmapPool;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 192
    new-instance v2, Lcoil/decode/DecodeResult;

    move-object/from16 v6, p0

    .line 193
    iget-object v3, v6, Lcoil/decode/BitmapFactoryDecoder;->context:Landroid/content/Context;

    .line 355
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "context.resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 355
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 194
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_14

    iget-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_13

    goto :goto_d

    :cond_13
    const/4 v9, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v9, 0x1

    .line 192
    :goto_e
    invoke-direct {v2, v4, v9}, Lcoil/decode/DecodeResult;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v2

    :cond_15
    move-object/from16 v6, p0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapFactory returned a null Bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network or disk) as it\'s not encoded as a valid image format."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_16
    move-object/from16 v6, p0

    .line 175
    :try_start_4
    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    :goto_f
    move-object v5, v7

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    move-object v1, v0

    .line 166
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v6, p0

    :goto_10
    if-eqz v4, :cond_17

    .line 177
    invoke-interface {v2, v4}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    :cond_17
    if-eq v5, v4, :cond_18

    if-eqz v5, :cond_18

    .line 179
    invoke-interface {v2, v5}, Lcoil/bitmap/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_18
    throw v0

    :cond_19
    move-object v6, v7

    .line 54
    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method private final shouldReadExifData(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 200
    sget-object v0, Lcoil/decode/BitmapFactoryDecoder;->SUPPORTED_EXIF_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public decode(Lcoil/bitmap/BitmapPool;Lokio/BufferedSource;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/bitmap/BitmapPool;",
            "Lokio/BufferedSource;",
            "Lcoil/size/Size;",
            "Lcoil/decode/Options;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/decode/DecodeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 328
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 334
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 335
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 337
    :try_start_0
    new-instance v2, Lcoil/decode/InterruptibleSource;

    check-cast p2, Lokio/Source;

    invoke-direct {v2, v1, p2}, Lcoil/decode/InterruptibleSource;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lokio/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :try_start_1
    check-cast v1, Lkotlin/coroutines/Continuation;

    move-object p2, v2

    check-cast p2, Lokio/Source;

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcoil/decode/BitmapFactoryDecoder;->access$decodeInterruptible(Lcoil/decode/BitmapFactoryDecoder;Lcoil/bitmap/BitmapPool;Lokio/Source;Lcoil/size/Size;Lcoil/decode/Options;)Lcoil/decode/DecodeResult;

    move-result-object p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :try_start_2
    invoke-virtual {v2}, Lcoil/decode/InterruptibleSource;->clearInterrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 352
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 327
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 341
    :try_start_3
    invoke-virtual {v2}, Lcoil/decode/InterruptibleSource;->clearInterrupt()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 345
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 346
    :cond_2
    :goto_0
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p3, "Blocking call was interrupted due to parent cancellation."

    invoke-direct {p2, p3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "CancellationException(\"B\u2026n.\").initCause(exception)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public handles(Lokio/BufferedSource;Ljava/lang/String;)Z
    .locals 0

    const-string/jumbo p2, "source"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
