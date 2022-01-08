.class public final Lcom/unionpay/mobile/android/global/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0xc

.field public static b:I = -0x1

.field public static c:I = -0x1

.field public static d:I = -0x1

.field public static e:I = 0x4

.field public static f:I = 0x8

.field public static g:I = 0xc

.field public static h:I = 0x10

.field public static i:F = 18.0f

.field public static j:F = 17.0f

.field public static k:F = 16.0f

.field public static l:F = 14.0f

.field public static m:F = 12.0f

.field public static n:I = 0x36

.field public static o:I = 0x14

.field public static p:I = 0x3c

.field private static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/unionpay/mobile/android/global/b;->q:Z

    if-nez v0, :cond_0

    sget v0, Lcom/unionpay/mobile/android/global/b;->a:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->a:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->n:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->n:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->o:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->o:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->e:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->e:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->f:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->f:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->g:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/unionpay/mobile/android/global/b;->g:I

    sget v0, Lcom/unionpay/mobile/android/global/b;->h:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p0

    sput p0, Lcom/unionpay/mobile/android/global/b;->h:I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/unionpay/mobile/android/global/b;->q:Z

    :cond_0
    return-void
.end method
