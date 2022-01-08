.class public final Lcom/unionpay/mobile/android/resource/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/unionpay/mobile/android/resource/c;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;
    .locals 1

    sget-object v0, Lcom/unionpay/mobile/android/resource/c;->c:Lcom/unionpay/mobile/android/resource/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/resource/c;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/resource/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unionpay/mobile/android/resource/c;->c:Lcom/unionpay/mobile/android/resource/c;

    :cond_0
    sget-object p0, Lcom/unionpay/mobile/android/resource/c;->c:Lcom/unionpay/mobile/android/resource/c;

    return-object p0
.end method


# virtual methods
.method public final a(III)Landroid/graphics/drawable/Drawable;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    if-gez v2, :cond_0

    return-object v4

    :cond_0
    iget-object v5, v1, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v5, v1, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    div-int/lit16 v5, v2, 0x3e8

    mul-int/lit16 v5, v5, 0x3e8

    sub-int v6, v2, v5

    const/16 v7, 0x7d0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v5, v7, :cond_5

    const/16 v7, 0xbb8

    if-eq v5, v7, :cond_4

    const/16 v7, 0xfa0

    if-eq v5, v7, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->f:[I

    aget v5, v5, v6

    sget-object v7, Lcom/unionpay/mobile/android/resource/b;->g:[I

    aget v7, v7, v6

    sget-object v8, Lcom/unionpay/mobile/android/resource/b;->h:[F

    aget v6, v8, v6

    invoke-static {v5, v7, v6}, Lcom/unionpay/mobile/android/utils/h;->a(IIF)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->e:[I

    aget v12, v5, v6

    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->d:[[I

    aget-object v13, v5, v6

    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->b:[[F

    aget-object v14, v5, v6

    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->c:[[F

    aget-object v5, v5, v6

    aget v15, v5, v10

    aget v16, v5, v11

    aget v17, v5, v9

    aget v18, v5, v8

    invoke-static/range {v12 .. v18}, Lcom/unionpay/mobile/android/utils/h;->a(I[I[FFFFF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/unionpay/mobile/android/resource/b;->a:[[I

    aget-object v5, v5, v6

    aget v6, v5, v10

    invoke-virtual {v1, v6, v0, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget v7, v5, v11

    invoke-virtual {v1, v7, v0, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aget v9, v5, v9

    invoke-virtual {v1, v9, v0, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aget v5, v5, v8

    invoke-virtual {v1, v5, v0, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v6, v7, v9, v5}, Lcom/unionpay/mobile/android/utils/h;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_f

    const-class v5, Lcom/unionpay/mobile/android/resource/a;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "assets/data.bin"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    add-int/lit16 v7, v2, -0x3e8

    mul-int/lit8 v7, v7, 0x8

    move v8, v7

    :goto_1
    int-to-long v8, v8

    :try_start_0
    invoke-virtual {v6, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v12

    cmp-long v10, v12, v8

    if-gez v10, :cond_6

    sub-long/2addr v8, v12

    long-to-int v8, v8

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    add-int/lit8 v7, v7, 0x8

    sub-int/2addr v8, v7

    :goto_2
    int-to-long v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v12

    cmp-long v10, v12, v7

    if-gez v10, :cond_7

    sub-long/2addr v7, v12

    long-to-int v8, v7

    goto :goto_2

    :cond_7
    invoke-virtual {v6, v9}, Ljava/io/DataInputStream;->mark(I)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    if-nez v7, :cond_e

    const/4 v7, -0x1

    if-eq v7, v3, :cond_9

    if-eq v7, v0, :cond_9

    invoke-static {v14, v0, v3, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v14, :cond_8

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, v1, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_9
    if-eq v7, v3, :cond_b

    if-ne v7, v0, :cond_b

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    int-to-float v7, v3

    mul-float v0, v0, v7

    float-to-int v0, v0

    const-string v7, "img"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "w="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v0, v3, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v14, :cond_a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, v1, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_b
    if-eq v7, v0, :cond_d

    if-ne v7, v3, :cond_d

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    int-to-float v7, v0

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v14, v0, v3, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v14, :cond_c

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, v1, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_d
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v1, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v3, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_e
    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, v1, Lcom/unionpay/mobile/android/resource/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v15

    const/16 v17, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_f
    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_10

    iget-object v0, v1, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v4
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/resource/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/mobile/android/resource/c;->c:Lcom/unionpay/mobile/android/resource/c;

    return-void
.end method
