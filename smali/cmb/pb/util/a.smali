.class public Lcmb/pb/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:[C

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcmb/pb/util/a;->a:[C

    const/16 v1, 0x80

    new-array v2, v1, [B

    sput-object v2, Lcmb/pb/util/a;->b:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcmb/pb/util/a;->b:[B

    array-length v5, v4

    const/16 v6, 0x7f

    if-lt v3, v5, :cond_3

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcmb/pb/util/a;->a:[C

    array-length v5, v4

    if-lt v3, v5, :cond_2

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcmb/pb/util/a;->c:[C

    new-array v0, v1, [B

    sput-object v0, Lcmb/pb/util/a;->d:[B

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcmb/pb/util/a;->d:[B

    array-length v3, v1

    if-lt v0, v3, :cond_1

    :goto_3
    sget-object v0, Lcmb/pb/util/a;->c:[C

    array-length v1, v0

    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcmb/pb/util/a;->d:[B

    aget-char v0, v0, v2

    int-to-byte v3, v2

    aput-byte v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    aput-byte v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v5, Lcmb/pb/util/a;->b:[B

    aget-char v4, v4, v3

    int-to-byte v7, v3

    aput-byte v7, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2as
        0x2ds
    .end array-data
.end method

.method private static a([C[BI)I
    .locals 8

    const/4 v0, 0x3

    aget-char v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    aget-char v4, p0, v3

    const/4 v5, 0x1

    if-ne v4, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v2, Lcmb/pb/util/a;->b:[B

    const/4 v4, 0x0

    aget-char v4, p0, v4

    aget-byte v4, v2, v4

    aget-char v6, p0, v5

    aget-byte v6, v2, v6

    aget-char v7, p0, v3

    aget-byte v7, v2, v7

    aget-char p0, p0, v0

    aget-byte p0, v2, p0

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_2

    add-int/lit8 v1, p2, 0x1

    shl-int/lit8 v2, v4, 0x2

    and-int/lit16 v2, v2, 0xfc

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v1, 0x1

    shl-int/lit8 v2, v6, 0x4

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v3, v7, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shl-int/lit8 v1, v7, 0x6

    and-int/lit16 v1, v1, 0xc0

    and-int/lit8 p0, p0, 0x3f

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Internal Errror"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 p0, p2, 0x1

    shl-int/lit8 v1, v4, 0x2

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v2, v6, 0x4

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    shl-int/lit8 p2, v6, 0x4

    and-int/lit16 p2, p2, 0xf0

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p0

    return v3

    :cond_4
    shl-int/lit8 p0, v4, 0x2

    and-int/lit16 p0, p0, 0xfc

    shr-int/lit8 v1, v6, 0x4

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return v5
.end method

.method public static a([B)Ljava/lang/String;
    .locals 9

    array-length v0, p0

    if-gtz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v0, v4, 0x1

    sget-object v3, Lcmb/pb/util/a;->a:[C

    shr-int/lit8 v6, p0, 0x2

    aget-char v6, v3, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v3, p0

    aput-char p0, v1, v0

    add-int/lit8 p0, v4, 0x1

    aput-char v5, v1, v4

    add-int/lit8 v4, p0, 0x1

    aput-char v5, v1, p0

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v3, v6

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    add-int/lit8 p0, v4, 0x1

    sget-object v3, Lcmb/pb/util/a;->a:[C

    shr-int/lit8 v6, v0, 0xa

    aget-char v6, v3, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, p0, 0x1

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v3, v6

    aput-char v6, v1, p0

    add-int/lit8 p0, v4, 0x1

    shl-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    aput-char v0, v1, v4

    add-int/lit8 v4, p0, 0x1

    aput-char v5, v1, p0

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_3
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcmb/pb/util/a;->a:[C

    shr-int/lit8 v8, v5, 0x12

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    aput-char v8, v1, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, -0x3

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_1

    if-ne v6, v2, :cond_0

    return-object v3

    :cond_0
    new-array p0, v6, [B

    invoke-static {v3, v4, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_2

    sget-object v9, Lcmb/pb/util/a;->b:[B

    array-length v10, v9

    if-ge v8, v10, :cond_4

    aget-byte v9, v9, v8

    const/16 v10, 0x7f

    if-eq v9, v10, :cond_4

    :cond_2
    add-int/lit8 v9, v7, 0x1

    aput-char v8, v1, v7

    if-ne v9, v0, :cond_3

    invoke-static {v1, v3, v6}, Lcmb/pb/util/a;->a([C[BI)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    move v7, v9

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 9

    array-length v0, p0

    if-gtz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    div-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    const/16 v5, 0x5f

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v0, v4, 0x1

    sget-object v3, Lcmb/pb/util/a;->c:[C

    shr-int/lit8 v6, p0, 0x2

    aget-char v6, v3, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v0, 0x1

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3f

    aget-char p0, v3, p0

    aput-char p0, v1, v0

    add-int/lit8 p0, v4, 0x1

    aput-char v5, v1, v4

    add-int/lit8 v4, p0, 0x1

    aput-char v5, v1, p0

    goto :goto_1

    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v3, v6

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    add-int/lit8 p0, v4, 0x1

    sget-object v3, Lcmb/pb/util/a;->c:[C

    shr-int/lit8 v6, v0, 0xa

    aget-char v6, v3, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, p0, 0x1

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v3, v6

    aput-char v6, v1, p0

    add-int/lit8 p0, v4, 0x1

    shl-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    aput-char v0, v1, v4

    add-int/lit8 v4, p0, 0x1

    aput-char v5, v1, p0

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_3
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    sget-object v7, Lcmb/pb/util/a;->c:[C

    shr-int/lit8 v8, v5, 0x12

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    aput-char v8, v1, v6

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    aput-char v8, v1, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v7, v5

    aput-char v5, v1, v6

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, -0x3

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
