.class public final Lcom/unionpay/mobile/android/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009e

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/unionpay/mobile/android/utils/h;->a:[I

    new-array v1, v0, [I

    const v2, 0x101009c

    aput v2, v1, v3

    sput-object v1, Lcom/unionpay/mobile/android/utils/h;->b:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/unionpay/mobile/android/utils/h;->c:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/unionpay/mobile/android/utils/h;->d:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/unionpay/mobile/android/utils/h;->e:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/unionpay/mobile/android/utils/h;->f:[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data
.end method

.method public static a(II)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p0, p1, p1, p0}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIII)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 v3, 0x2

    aput p0, v1, v3

    const/4 p0, 0x3

    aput p2, v1, p0

    const/4 p2, 0x4

    aput p3, v1, p2

    const/4 v4, 0x5

    aput p3, v1, v4

    new-array p3, v0, [[I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    aput-object v0, p3, v2

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    aput-object v0, p3, p1

    new-array v0, p1, [I

    const v5, 0x101009e

    aput v5, v0, v2

    aput-object v0, p3, v3

    new-array v0, p1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    aput-object v0, p3, p0

    new-array p0, p1, [I

    const p1, 0x101009d

    aput p1, p0, v2

    aput-object p0, p3, p2

    new-array p0, v2, [I

    aput-object p0, p3, v4

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, p3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static a(I[I[FFFFF)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/h;->a(IF)[F

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/unionpay/mobile/android/utils/h;->d:[I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/unionpay/mobile/android/utils/h;->e:[I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    sget-object v1, Lcom/unionpay/mobile/android/utils/h;->f:[I

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    sget-object p3, Lcom/unionpay/mobile/android/utils/h;->a:[I

    invoke-virtual {v0, p3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object p0, Lcom/unionpay/mobile/android/utils/h;->b:[I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    sget-object p0, Lcom/unionpay/mobile/android/utils/h;->c:[I

    invoke-virtual {v0, p0, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method public static a(IIF)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/h;->a(IF)[F

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object p1
.end method

.method private static a(IF)[F
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput p1, v1, v3

    aput p1, v1, v2

    :cond_1
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    aput p1, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    :cond_3
    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    const/4 v0, 0x7

    aput p1, v1, v0

    aput p1, v1, p0

    :cond_4
    return-object v1
.end method
