.class public abstract Lorg/spongycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 16
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 17
    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static add33At(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    .line 26
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 27
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    add-int/lit8 v2, p3, 0x1

    .line 29
    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 30
    aput v3, p2, v2

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x2

    .line 32
    invoke-static {p0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static add33At(II[III)I
    .locals 7

    add-int v0, p3, p4

    .line 38
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 39
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    .line 41
    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 42
    aput v3, p2, v0

    ushr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x2

    .line 44
    invoke-static {p0, p2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static add33To(II[I)I
    .locals 8

    const/4 v0, 0x0

    .line 49
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 50
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    const/4 v5, 0x1

    .line 52
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 53
    aput v3, p2, v5

    ushr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 55
    invoke-static {p0, p2, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static add33To(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    .line 60
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 61
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    add-int/lit8 v2, p3, 0x1

    .line 63
    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 64
    aput v3, p2, v2

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 66
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addBothTo(I[II[II[II)I
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    add-int v4, p2, v2

    .line 86
    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p4, v2

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    add-long/2addr v4, v8

    add-int v8, p6, v2

    aget v9, p5, v8

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 87
    aput v4, p5, v8

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 74
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 75
    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static addDWordAt(IJ[II)I
    .locals 8

    add-int/lit8 v0, p4, 0x0

    .line 96
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 97
    aput v5, p3, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p4, 0x1

    .line 99
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 100
    aput p1, p3, v5

    ushr-long p1, v1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x2

    .line 102
    invoke-static {p0, p3, p4}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addDWordAt(IJ[III)I
    .locals 8

    add-int v0, p4, p5

    .line 108
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 109
    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    .line 111
    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 112
    aput p1, p3, v0

    ushr-long p1, v1, v5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x2

    .line 114
    invoke-static {p0, p3, p4, p5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addDWordTo(IJ[I)I
    .locals 9

    const/4 v0, 0x0

    .line 119
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 120
    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    .line 122
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 123
    aput p1, p3, v6

    ushr-long p1, v1, v5

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 125
    invoke-static {p0, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static addDWordTo(IJ[II)I
    .locals 8

    add-int/lit8 v0, p4, 0x0

    .line 130
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 131
    aput v5, p3, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p4, 0x1

    .line 133
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 134
    aput p1, p3, v5

    ushr-long p1, v1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 136
    invoke-static {p0, p3, p4, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addTo(I[II[II)I
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    .line 156
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v8, p3, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 157
    aput v3, p3, v7

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static addTo(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 144
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 145
    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static addWordAt(II[II)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 166
    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 167
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 169
    invoke-static {p0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addWordAt(II[III)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int p1, p3, p4

    .line 175
    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 176
    aput v2, p2, p1

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 178
    invoke-static {p0, p2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static addWordTo(II[I)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p1, 0x0

    .line 183
    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 184
    aput v2, p2, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 186
    invoke-static {p0, p2, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public static addWordTo(II[II)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 191
    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 192
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 194
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static copy(I[I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy(I[I)[I
    .locals 2

    .line 199
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 200
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(I)[I
    .locals 0

    .line 211
    new-array p0, p0, [I

    return-object p0
.end method

.method public static dec(I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p0, :cond_1

    .line 218
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static dec(I[I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, -0x1

    if-ge v1, p0, :cond_2

    .line 231
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    .line 232
    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v3, v2, :cond_0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 238
    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public static decAt(I[II)I
    .locals 2

    :goto_0
    const/4 v0, -0x1

    if-ge p2, p0, :cond_1

    .line 252
    aget v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, p2

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static decAt(I[III)I
    .locals 3

    :goto_0
    const/4 v0, -0x1

    if-ge p3, p0, :cond_1

    add-int v1, p2, p3

    .line 265
    aget v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v1

    if-eq v2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static eq(I[I[I)Z
    .locals 3

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_1

    .line 277
    aget v1, p1, p0

    aget v2, p2, p0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 3

    .line 287
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 293
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 297
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, p0, v0

    const/16 v0, 0x20

    .line 298
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p0

    .line 289
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 307
    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    .line 310
    array-length v2, p0

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 315
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static gte(I[I[I)Z
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_2

    .line 322
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 323
    aget v3, p2, p0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static inc(I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p0, :cond_1

    .line 336
    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static inc(I[I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x1

    if-ge v1, p0, :cond_2

    .line 349
    aget v3, p1, v1

    add-int/2addr v3, v2

    .line 350
    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 356
    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public static incAt(I[II)I
    .locals 2

    :goto_0
    const/4 v0, 0x1

    if-ge p2, p0, :cond_1

    .line 370
    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static incAt(I[III)I
    .locals 3

    :goto_0
    const/4 v0, 0x1

    if-ge p3, p0, :cond_1

    add-int v1, p2, p3

    .line 383
    aget v2, p1, v1

    add-int/2addr v2, v0

    aput v2, p1, v1

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isOne(I[I)Z
    .locals 4

    const/4 v0, 0x0

    .line 393
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_2

    .line 399
    aget v3, p1, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero(I[I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 411
    aget v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul(I[II[II[II)V
    .locals 8

    add-int v0, p6, p0

    .line 431
    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v1

    aput v1, p5, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v6, p6, v0

    add-int v7, v6, p0

    add-int v1, p2, v0

    .line 435
    aget v2, p1, v1

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mul(I[I[I[I)V
    .locals 8

    const/4 v0, 0x0

    .line 421
    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v7, v0, p0

    .line 425
    aget v2, p1, v0

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, v0

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 14

    move v0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move/from16 v4, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 472
    :cond_0
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v9, v9, v0

    aget v11, p4, v8

    int-to-long v11, v11

    and-long/2addr v11, v2

    mul-long v11, v11, v4

    add-long/2addr v9, v11

    add-int v11, p6, v8

    aget v12, p5, v11

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-long/2addr v9, v12

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 473
    aput v9, p5, v11

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    move v9, p0

    if-lt v8, v9, :cond_0

    long-to-int v0, v6

    return v0
.end method

.method public static mulAddTo(I[II[II[II)I
    .locals 13

    move v6, p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move/from16 v7, p6

    move-wide v8, v0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    add-int v0, p2, v10

    .line 457
    aget v1, p1, v0

    move v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move v5, v7

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, v7, v6

    .line 458
    aget v5, p5, v4

    int-to-long v11, v5

    and-long/2addr v2, v11

    add-long/2addr v8, v2

    add-long/2addr v0, v8

    long-to-int v2, v0

    .line 459
    aput v2, p5, v4

    const/16 v2, 0x20

    ushr-long v8, v0, v2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v8

    return v0
.end method

.method public static mulAddTo(I[I[I[I)I
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p0, :cond_0

    .line 444
    aget v3, p1, v8

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int v6, v8, p0

    .line 445
    aget v7, p3, v6

    int-to-long v9, v7

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 446
    aput v0, p3, v6

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static mulWord(II[II[II)I
    .locals 8

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :cond_0
    add-int v6, p3, p1

    .line 500
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    add-int v6, p5, p1

    long-to-int v7, v4

    .line 501
    aput v7, p4, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static mulWord(II[I[I)I
    .locals 8

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    .line 486
    :cond_0
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 487
    aput v6, p3, p1

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 12

    move v0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :cond_0
    add-int v7, p3, v6

    .line 514
    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-int v9, p5, v6

    aget v10, p4, v9

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-long/2addr v7, v10

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 515
    aput v7, p4, v9

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    move v7, p0

    if-lt v6, v7, :cond_0

    long-to-int v0, v4

    return v0
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .locals 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p2, v2

    mul-long v4, v4, v0

    add-int/lit8 p1, p5, 0x0

    .line 526
    aget v6, p4, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v8, v4

    .line 527
    aput v8, p4, p1

    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    ushr-long/2addr p2, p1

    mul-long v0, v0, p2

    add-int/lit8 p2, p5, 0x1

    .line 529
    aget p3, p4, p2

    int-to-long v8, p3

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    long-to-int p3, v4

    .line 530
    aput p3, p4, p2

    ushr-long p2, v4, p1

    add-int/lit8 v0, p5, 0x2

    .line 532
    aget v1, p4, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p2, v1

    long-to-int v1, p2

    .line 533
    aput v1, p4, v0

    ushr-long p1, p2, p1

    cmp-long p3, p1, v6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x3

    .line 535
    invoke-static {p0, p4, p5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static shiftDownBit(I[II)I
    .locals 2

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 543
    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    .line 544
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static shiftDownBit(I[III)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    .line 555
    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    .line 556
    aput p3, p1, v0

    move p3, v1

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static shiftDownBit(I[III[II)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    .line 579
    aget v0, p1, v0

    add-int v1, p5, p0

    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    .line 580
    aput p3, p4, v1

    move p3, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static shiftDownBit(I[II[I)I
    .locals 2

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 567
    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    .line 568
    aput p2, p3, p0

    move p2, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static shiftDownBits(I[III)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 592
    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    .line 593
    aput p3, p1, p0

    move p3, v0

    goto :goto_0

    :cond_0
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static shiftDownBits(I[IIII)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    .line 605
    aget v1, p1, v0

    ushr-int v2, v1, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    .line 606
    aput p4, p1, v0

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    add-int v0, p2, p0

    .line 631
    aget v0, p1, v0

    add-int v1, p6, p0

    ushr-int v2, v0, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    .line 632
    aput p4, p5, v1

    move p4, v0

    goto :goto_0

    :cond_0
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static shiftDownBits(I[III[I)I
    .locals 3

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 618
    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    .line 619
    aput p3, p4, p0

    move p3, v0

    goto :goto_0

    :cond_0
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static shiftDownWord(I[II)I
    .locals 1

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 643
    aget v0, p1, p0

    .line 644
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 654
    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    .line 655
    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static shiftUpBit(I[III)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    .line 665
    aget v2, p1, v1

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    .line 666
    aput p3, p1, v1

    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    .line 687
    aget v1, p1, v1

    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    .line 688
    aput p3, p4, v2

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 676
    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    .line 677
    aput p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static shiftUpBits(I[III)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 699
    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    .line 700
    aput p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static shiftUpBits(I[IIII)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    .line 711
    aget v2, p1, v1

    shl-int v3, v2, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    .line 712
    aput p4, p1, v1

    add-int/lit8 v0, v0, 0x1

    move p4, v2

    goto :goto_0

    :cond_0
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static shiftUpBits(I[IIII[II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    .line 735
    aget v1, p1, v1

    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    .line 736
    aput p4, p5, v2

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 723
    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    .line 724
    aput p3, p4, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static square(I[II[II)V
    .locals 9

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    add-int v4, p2, v2

    .line 773
    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long v4, v4, v4

    add-int/lit8 v3, v3, -0x1

    add-int v6, p4, v3

    shl-int/lit8 v1, v1, 0x1f

    const/16 v7, 0x21

    ushr-long v7, v4, v7

    long-to-int v8, v7

    or-int/2addr v1, v8

    .line 775
    aput v1, p3, v6

    add-int/lit8 v3, v3, -0x1

    add-int v1, p4, v3

    const/4 v6, 0x1

    ushr-long v7, v4, v6

    long-to-int v8, v7

    .line 776
    aput v8, p3, v1

    long-to-int v1, v4

    if-gtz v2, :cond_0

    :goto_0
    if-ge v6, p0, :cond_1

    .line 783
    invoke-static {p1, p2, v6, p3, p4}, Lorg/spongycastle/math/raw/Nat;->squareWordAdd([III[II)I

    move-result v1

    shl-int/lit8 v2, v6, 0x1

    .line 784
    invoke-static {v0, v1, p3, p4, v2}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[III)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 787
    :cond_1
    aget p0, p1, p2

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p3, p4, p0}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[III)I

    return-void
.end method

.method public static square(I[I[I)V
    .locals 9

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v2, p0

    move v3, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 749
    aget v5, p1, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    mul-long v5, v5, v5

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v4, v4, 0x1f

    const/16 v7, 0x21

    ushr-long v7, v5, v7

    long-to-int v8, v7

    or-int/2addr v4, v8

    .line 751
    aput v4, p2, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    ushr-long v7, v5, v4

    long-to-int v8, v7

    .line 752
    aput v8, p2, v3

    long-to-int v6, v5

    if-gtz v2, :cond_1

    :goto_1
    if-ge v4, p0, :cond_0

    .line 759
    invoke-static {p1, v4, p2}, Lorg/spongycastle/math/raw/Nat;->squareWordAdd([II[I)I

    move-result v2

    shl-int/lit8 v3, v4, 0x1

    .line 760
    invoke-static {v0, v2, p2, v3}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[II)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 763
    :cond_0
    aget p0, p1, v1

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p2, p0}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II)I

    return-void

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method public static squareWordAdd([III[II)I
    .locals 14

    move/from16 v0, p2

    add-int v1, p1, v0

    .line 806
    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v6, v5

    const/4 v8, 0x0

    move/from16 v5, p4

    :cond_0
    add-int v9, p1, v8

    .line 810
    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long v9, v9, v1

    add-int v11, v0, v5

    aget v12, p3, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    add-long/2addr v9, v12

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 811
    aput v9, p3, v11

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v0, :cond_0

    long-to-int v0, v6

    return v0
.end method

.method public static squareWordAdd([II[I)I
    .locals 12

    .line 792
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 796
    :cond_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-int v9, p1, v6

    aget v10, p2, v9

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-long/2addr v7, v10

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 797
    aput v7, p2, v9

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static sub(I[II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    .line 836
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    .line 837
    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static sub(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 824
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 825
    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static sub33At(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    .line 846
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 847
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    add-int/lit8 v2, p3, 0x1

    .line 849
    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 850
    aput v3, p2, v2

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x2

    .line 852
    invoke-static {p0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static sub33At(II[III)I
    .locals 7

    add-int v0, p3, p4

    .line 858
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 859
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    .line 861
    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 862
    aput v3, p2, v0

    shr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x2

    .line 864
    invoke-static {p0, p2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static sub33From(II[I)I
    .locals 8

    const/4 v0, 0x0

    .line 869
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 870
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    const/4 v5, 0x1

    .line 872
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 873
    aput v3, p2, v5

    shr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 875
    invoke-static {p0, p2, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static sub33From(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    .line 880
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 881
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    add-int/lit8 v2, p3, 0x1

    .line 883
    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 884
    aput v3, p2, v2

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 886
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subBothFrom(I[II[II[II)I
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    add-int v4, p6, v2

    .line 906
    aget v5, p5, v4

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-int v9, p2, v2

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    sub-long/2addr v5, v9

    add-int v9, p4, v2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v7, v9

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 907
    aput v5, p5, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    return v1
.end method

.method public static subBothFrom(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 894
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 895
    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static subDWordAt(IJ[II)I
    .locals 8

    add-int/lit8 v0, p4, 0x0

    .line 916
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 917
    aput v5, p3, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    add-int/lit8 v5, p4, 0x1

    .line 919
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 920
    aput p1, p3, v5

    shr-long p1, v1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x2

    .line 922
    invoke-static {p0, p3, p4}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subDWordAt(IJ[III)I
    .locals 8

    add-int v0, p4, p5

    .line 928
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 929
    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    .line 931
    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 932
    aput p1, p3, v0

    shr-long p1, v1, v5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x2

    .line 934
    invoke-static {p0, p3, p4, p5}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subDWordFrom(IJ[I)I
    .locals 9

    const/4 v0, 0x0

    .line 939
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 940
    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    .line 942
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 943
    aput p1, p3, v6

    shr-long p1, v1, v5

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 945
    invoke-static {p0, p3, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static subDWordFrom(IJ[II)I
    .locals 8

    add-int/lit8 v0, p4, 0x0

    .line 950
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 951
    aput v5, p3, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    add-int/lit8 v5, p4, 0x1

    .line 953
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 954
    aput p1, p3, v5

    shr-long p1, v1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 956
    invoke-static {p0, p3, p4, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subFrom(I[II[II)I
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p4, v2

    .line 976
    aget v4, p3, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p2, v2

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 977
    aput v4, p3, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static subFrom(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 964
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 965
    aput v3, p2, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method public static subWordAt(II[II)I
    .locals 6

    .line 986
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 987
    aput p1, p2, p3

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 989
    invoke-static {p0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subWordAt(II[III)I
    .locals 7

    add-int v0, p3, p4

    .line 995
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 996
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 998
    invoke-static {p0, p2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static subWordFrom(II[I)I
    .locals 7

    const/4 v0, 0x0

    .line 1003
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 1004
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1006
    invoke-static {p0, p2, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static subWordFrom(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    .line 1011
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 1012
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1014
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4

    shl-int/lit8 v0, p0, 0x2

    .line 1019
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 1022
    aget v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    .line 1025
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero(I[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1035
    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
