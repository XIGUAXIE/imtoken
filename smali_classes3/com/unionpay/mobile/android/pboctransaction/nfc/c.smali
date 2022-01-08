.class public final Lcom/unionpay/mobile/android/pboctransaction/nfc/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/nfc/c;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 7

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    add-int/2addr p1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-byte v3, p0, v1

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lcom/unionpay/mobile/android/pboctransaction/nfc/c;->a:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
