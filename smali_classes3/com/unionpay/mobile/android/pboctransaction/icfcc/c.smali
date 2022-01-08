.class public final Lcom/unionpay/mobile/android/pboctransaction/icfcc/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_e

    aget-byte v3, p0, v2

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    new-array v4, v3, [B

    invoke-static {p0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x4

    const/16 v8, -0x80

    const/4 v9, 0x3

    if-nez v4, :cond_6

    add-int/2addr v2, v3

    aget-byte p1, p0, v2

    and-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    if-eq p1, v8, :cond_2

    aget-byte p1, p0, v2

    :goto_2
    and-int/lit16 p1, p1, 0xff

    goto :goto_4

    :cond_2
    aget-byte p1, p0, v2

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr v6, p1

    if-ne v6, v5, :cond_3

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    goto :goto_2

    :cond_3
    if-ne v6, v9, :cond_4

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    :goto_3
    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    goto :goto_4

    :cond_4
    if-ne v6, v7, :cond_5

    add-int/lit8 p1, v2, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v0, p0, v0

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_4
    new-array v0, p1, [B

    add-int/2addr v2, v6

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    aget-byte v4, p0, v2

    const/16 v10, 0x20

    and-int/2addr v4, v10

    add-int/2addr v2, v3

    array-length v3, p0

    if-ne v4, v10, :cond_8

    if-ge v2, v3, :cond_7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-ne v3, v8, :cond_7

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v6, v3

    :cond_7
    :goto_5
    add-int/2addr v2, v6

    goto/16 :goto_0

    :cond_8
    if-ge v2, v3, :cond_9

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    if-nez v3, :cond_9

    aget-byte v3, p0, v2

    :goto_6
    and-int/lit16 v3, v3, 0xff

    goto :goto_8

    :cond_9
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v6

    move v6, v3

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    if-ne v6, v5, :cond_b

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_b

    aget-byte v3, p0, v3

    goto :goto_6

    :cond_b
    if-ne v6, v9, :cond_c

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_c

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    goto :goto_8

    :cond_c
    if-ne v6, v7, :cond_d

    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-ge v3, v4, :cond_d

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    add-int/2addr v6, v3

    goto :goto_5

    :cond_e
    return-object v0
.end method
