.class public Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat([B[B)[B
    .locals 3

    .line 21
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 22
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trimLeadingBytes([BB)[B
    .locals 2

    const/4 v0, 0x0

    .line 8
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 9
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    array-length p1, p0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static trimLeadingZeroes([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->trimLeadingBytes([BB)[B

    move-result-object p0

    return-object p0
.end method
