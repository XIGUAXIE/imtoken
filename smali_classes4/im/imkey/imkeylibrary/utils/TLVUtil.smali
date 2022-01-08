.class public Lim/imkey/imkeylibrary/utils/TLVUtil;
.super Ljava/lang/Object;
.source "TLVUtil.java"


# instance fields
.field protected data:[B

.field dataSize:S


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    array-length v0, p1

    int-to-short v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lim/imkey/imkeylibrary/utils/TLVUtil;->verifyFormat([BSS)S

    move-result v0

    .line 142
    iput-object p1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    .line 143
    iput-short v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    return-void
.end method

.method public constructor <init>([BS)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    .line 148
    iput-short p2, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    return-void
.end method

.method public constructor <init>([BSS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1, p2, p3}, Lim/imkey/imkeylibrary/utils/TLVUtil;->verifyFormat([BSS)S

    move-result p3

    if-ltz p3, :cond_0

    .line 116
    :try_start_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 117
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    .line 119
    iput-short p3, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "tlv size error."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B)V
    .locals 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    array-length v0, p1

    int-to-short v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v0

    .line 127
    array-length v2, p2

    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->calcLengthSize(I)S

    move-result v2

    add-int/2addr v2, v0

    .line 129
    array-length v3, p2

    add-int/2addr v2, v3

    new-array v3, v2, [B

    .line 131
    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length p1, p2

    invoke-static {v3, v0, p1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->calcLengthValue([BSI)S

    move-result p1

    .line 133
    array-length v0, p2

    invoke-static {p2, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object v3, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    int-to-short p1, v2

    .line 137
    iput-short p1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    return-void
.end method

.method public static calcLengthSize(I)S
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public static calcLengthValue([BSI)S
    .locals 2

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    int-to-byte p2, p2

    .line 22
    aput-byte p2, p0, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x100

    if-ge p2, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    const/16 v1, -0x7f

    .line 24
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    int-to-short p1, p1

    int-to-byte p2, p2

    .line 25
    aput-byte p2, p0, v0

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    const/16 v1, -0x7e

    .line 27
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    int-to-short p1, p1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 28
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 29
    aput-byte p2, p0, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    const/16 v1, -0x7d

    .line 31
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    int-to-short p1, p1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 32
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 33
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    int-to-short p1, p1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 34
    aput-byte p2, p0, v0

    goto :goto_0

    :goto_1
    return v0
.end method

.method public static getShort([BS)S
    .locals 2

    .line 152
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method protected static parseLength([BSS)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    int-to-short v0, v0

    .line 84
    aget-byte p1, p0, p1

    if-ltz p1, :cond_1

    const/high16 p0, 0x10000

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_1
    const/16 v2, -0x7f

    if-ne p1, v2, :cond_3

    const/4 p1, 0x2

    if-ge p2, p1, :cond_2

    return v1

    :cond_2
    const/high16 p1, 0x20000

    .line 92
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_3
    const/16 v2, -0x7e

    if-ne p1, v2, :cond_6

    const/4 p1, 0x3

    if-ge p2, p1, :cond_4

    return v1

    .line 97
    :cond_4
    invoke-static {p0, v0}, Lim/imkey/imkeylibrary/utils/TLVUtil;->getShort([BS)S

    move-result p0

    if-gez p0, :cond_5

    return v1

    :cond_5
    const/high16 p1, 0x30000

    or-int/2addr p0, p1

    return p0

    :cond_6
    return v1
.end method

.method protected static parseTag([BSS)S
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    int-to-short v2, v2

    .line 64
    aget-byte v3, p0, p1

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 66
    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    sub-int v3, v2, p1

    if-le v3, p2, :cond_1

    return v0

    :cond_2
    add-int/2addr v2, v1

    int-to-short v2, v2

    sub-int p0, v2, p1

    if-le p0, p2, :cond_3

    return v0

    :cond_3
    sub-int/2addr v2, p1

    int-to-short p0, v2

    return p0
.end method

.method protected static verifyFormat([BSS)S
    .locals 2

    .line 40
    invoke-static {p0, p1, p2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x0

    int-to-short v1, v1

    add-int/2addr p1, v0

    int-to-short p1, p1

    sub-int/2addr p2, v0

    int-to-short p2, p2

    .line 47
    invoke-static {p0, p1, p2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result p0

    shr-int/lit8 p1, p0, 0x10

    add-int/2addr v1, p1

    int-to-short v0, v1

    sub-int/2addr p2, p1

    int-to-short p1, p2

    const p2, 0xffff

    and-int/2addr p0, p2

    if-ge p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    int-to-short p0, p0

    add-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method


# virtual methods
.method public getValue([BS)S
    .locals 4

    .line 178
    iget-object v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    iget-short v1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v0

    .line 179
    iget-object v1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    iget-short v2, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    sub-int/2addr v2, v0

    int-to-short v2, v2

    invoke-static {v1, v0, v2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseLength([BSS)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    int-to-short v2, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    .line 183
    iget-object v3, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {v3, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public size()S
    .locals 1

    .line 167
    iget-short v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    return v0
.end method

.method public tagEquals(S)Z
    .locals 4

    .line 156
    iget-object v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    iget-short v1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lim/imkey/imkeylibrary/utils/TLVUtil;->parseTag([BSS)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 160
    iget-object v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    invoke-static {v0, v2}, Lim/imkey/imkeylibrary/utils/TLVUtil;->getShort([BS)S

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public toBytes([BS)S
    .locals 3

    .line 171
    iget-short v0, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->dataSize:S

    .line 172
    iget-object v1, p0, Lim/imkey/imkeylibrary/utils/TLVUtil;->data:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    int-to-short p1, p2

    return p1
.end method
