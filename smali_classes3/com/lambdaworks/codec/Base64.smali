.class public Lcom/lambdaworks/codec/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decode:[I

.field private static final encode:[C

.field private static final pad:C = '='


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lambdaworks/codec/Base64;->encode:[C

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 20
    sput-object v0, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/4 v1, -0x1

    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    :goto_0
    sget-object v2, Lcom/lambdaworks/codec/Base64;->encode:[C

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 26
    sget-object v3, Lcom/lambdaworks/codec/Base64;->decode:[I

    aget-char v2, v2, v1

    aput v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/16 v2, 0x3d

    aput v0, v1, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([C)[B
    .locals 2

    .line 39
    sget-object v0, Lcom/lambdaworks/codec/Base64;->decode:[I

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/lambdaworks/codec/Base64;->decode([C[IC)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C[IC)[B
    .locals 12

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 80
    aget-char v2, p0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, p2, :cond_2

    add-int/lit8 v2, v0, -0x2

    aget-char v2, p0, v2

    if-ne v2, p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 v2, v0, 0x6

    const/4 v5, 0x3

    shr-int/2addr v2, v5

    sub-int/2addr v2, p2

    .line 82
    div-int/lit8 p2, v2, 0x3

    mul-int/lit8 p2, p2, 0x3

    .line 84
    new-array v6, v2, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, p2, :cond_3

    add-int/lit8 v9, v8, 0x1

    .line 88
    aget-char v8, p0, v8

    aget v8, p1, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v10, v9, 0x1

    aget-char v9, p0, v9

    aget v9, p1, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v8, v9

    add-int/lit8 v9, v10, 0x1

    aget-char v10, p0, v10

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v8, v10

    add-int/lit8 v10, v9, 0x1

    aget-char v9, p0, v9

    aget v9, p1, v9

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v11, v8, 0x10

    int-to-byte v11, v11

    .line 89
    aput-byte v11, v6, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    .line 90
    aput-byte v11, v6, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte v8, v8

    .line 91
    aput-byte v8, v6, v7

    move v7, v9

    move v8, v10

    goto :goto_1

    :cond_3
    if-ge v7, v2, :cond_8

    sub-int/2addr v0, v8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_5

    const/4 p2, 0x4

    if-eq v0, p2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, v8, 0x3

    .line 97
    aget-char p2, p0, p2

    aget p2, p1, p2

    or-int/2addr v1, p2

    :cond_5
    add-int/lit8 p2, v8, 0x2

    .line 98
    aget-char p2, p0, p2

    aget p2, p1, p2

    shl-int/lit8 p2, p2, 0x6

    or-int/2addr v1, p2

    :cond_6
    add-int/lit8 p2, v8, 0x1

    .line 99
    aget-char p2, p0, p2

    aget p2, p1, p2

    shl-int/lit8 p2, p2, 0xc

    or-int/2addr v1, p2

    .line 100
    :cond_7
    aget-char p0, p0, v8

    aget p0, p1, p0

    shl-int/lit8 p0, p0, 0x12

    or-int/2addr v1, p0

    :goto_2
    const/16 p0, 0x10

    :goto_3
    if-ge v7, v2, :cond_8

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v1, p0

    int-to-byte p2, p2

    .line 103
    aput-byte p2, v6, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_3

    :cond_8
    return-object v6
.end method

.method public static encode([B)[C
    .locals 2

    .line 50
    sget-object v0, Lcom/lambdaworks/codec/Base64;->encode:[C

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lcom/lambdaworks/codec/Base64;->encode([B[CC)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BZ)[C
    .locals 1

    .line 62
    sget-object v0, Lcom/lambdaworks/codec/Base64;->encode:[C

    if-eqz p1, :cond_0

    const/16 p1, 0x3d

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/lambdaworks/codec/Base64;->encode([B[CC)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([B[CC)[C
    .locals 10

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [C

    return-object p0

    .line 125
    :cond_0
    div-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, -0x1

    .line 126
    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    shl-int/2addr v3, v5

    sub-int/2addr v0, v2

    if-nez p2, :cond_1

    if-lez v0, :cond_1

    rsub-int/lit8 v6, v0, 0x3

    sub-int/2addr v3, v6

    .line 130
    :cond_1
    new-array v3, v3, [C

    const/4 v6, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    add-int/lit8 v7, v1, 0x1

    .line 134
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v1, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v1, 0x12

    and-int/lit8 v9, v9, 0x3f

    .line 135
    aget-char v9, p1, v9

    aput-char v9, v3, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v9, v1, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 136
    aget-char v9, p1, v9

    aput-char v9, v3, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 137
    aget-char v9, p1, v9

    aput-char v9, v3, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v1, v1, 0x3f

    .line 138
    aget-char v1, p1, v1

    aput-char v1, v3, v8

    move v1, v7

    goto :goto_0

    :cond_2
    if-lez v0, :cond_6

    .line 142
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    if-ne v0, v5, :cond_3

    add-int/2addr v1, v4

    .line 143
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v5

    or-int/2addr v2, p0

    :cond_3
    add-int/lit8 p0, v6, 0x1

    ushr-int/lit8 v1, v2, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 145
    aget-char v1, p1, v1

    aput-char v1, v3, v6

    add-int/lit8 v1, p0, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 146
    aget-char v6, p1, v6

    aput-char v6, v3, p0

    if-ne v0, v5, :cond_4

    add-int/lit8 p0, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    .line 147
    aget-char p1, p1, v2

    aput-char p1, v3, v1

    move v1, p0

    :cond_4
    if-eqz p2, :cond_6

    if-ne v0, v4, :cond_5

    add-int/lit8 p0, v1, 0x1

    .line 150
    aput-char p2, v3, v1

    move v1, p0

    .line 151
    :cond_5
    aput-char p2, v3, v1

    :cond_6
    return-object v3
.end method
