.class public Lim/imkey/imkeylibrary/utils/Bech32;
.super Ljava/lang/Object;
.source "Bech32.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "qpzry9x8gf2tvdw0s3jn54khce6mua7l"

.field private static final CHARSET_REV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Lim/imkey/imkeylibrary/utils/Bech32;->CHARSET_REV:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xft
        -0x1t
        0xat
        0x11t
        0x15t
        0x14t
        0x1at
        0x1et
        0x7t
        0x5t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1dt
        -0x1t
        0x18t
        0xdt
        0x19t
        0x9t
        0x8t
        0x17t
        -0x1t
        0x12t
        0x16t
        0x1ft
        0x1bt
        0x13t
        -0x1t
        0x1t
        0x0t
        0x3t
        0x10t
        0xbt
        0x1ct
        0xct
        0xet
        0x6t
        0x4t
        0x2t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1dt
        -0x1t
        0x18t
        0xdt
        0x19t
        0x9t
        0x8t
        0x17t
        -0x1t
        0x12t
        0x16t
        0x1ft
        0x1bt
        0x13t
        -0x1t
        0x1t
        0x0t
        0x3t
        0x10t
        0xbt
        0x1ct
        0xct
        0xet
        0x6t
        0x4t
        0x2t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChecksum(Ljava/lang/String;[B)[B
    .locals 4

    .line 92
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/Bech32;->expandHrp(Ljava/lang/String;)[B

    move-result-object p0

    .line 93
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 94
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/Bech32;->polymod([B)I

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    new-array p1, v1, [B

    :goto_0
    if-ge v3, v1, :cond_0

    rsub-int/lit8 v0, v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    ushr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    .line 99
    aput-byte v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static decode(Ljava/lang/String;)Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_b

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    const-string v7, "InvalidCharacter %c, %d"

    const/4 v8, 0x1

    if-ge v2, v5, :cond_5

    .line 135
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x21

    if-lt v5, v9, :cond_4

    const/16 v9, 0x7e

    if-gt v5, v9, :cond_4

    const/16 v9, 0x61

    if-lt v5, v9, :cond_1

    const/16 v9, 0x7a

    if-gt v5, v9, :cond_1

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    .line 139
    :cond_0
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    const/16 v9, 0x41

    if-lt v5, v9, :cond_3

    if-gt v5, v1, :cond_3

    if-nez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    .line 144
    :cond_2
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_4
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v1, 0x31

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lt v1, v8, :cond_a

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    sub-int/2addr v2, v1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_9

    .line 152
    new-array v4, v2, [B

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_7

    add-int v9, v5, v1

    add-int/2addr v9, v8

    .line 154
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 155
    sget-object v11, Lim/imkey/imkeylibrary/utils/Bech32;->CHARSET_REV:[B

    aget-byte v12, v11, v10

    const/4 v13, -0x1

    if-eq v12, v13, :cond_6

    .line 156
    aget-byte v9, v11, v10

    aput-byte v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 155
    :cond_6
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0, v4}, Lim/imkey/imkeylibrary/utils/Bech32;->verifyChecksum(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 160
    new-instance v1, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;

    sub-int/2addr v2, v3

    invoke-static {v4, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;-><init>(Ljava/lang/String;[BLim/imkey/imkeylibrary/utils/Bech32$1;)V

    return-object v1

    .line 159
    :cond_8
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const-string v0, "InvalidChecksum"

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_9
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data part too short: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_a
    new-instance p0, Lorg/bitcoinj/core/AddressFormatException;

    const-string v0, "Missing human-readable part"

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_b
    new-instance v0, Lorg/bitcoinj/core/AddressFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_c
    new-instance v0, Lorg/bitcoinj/core/AddressFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input too short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encode(Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;)Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;->hrp:Ljava/lang/String;

    iget-object p0, p0, Lim/imkey/imkeylibrary/utils/Bech32$Bech32Data;->data:[B

    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/utils/Bech32;->encode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Human-readable part is too short"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x53

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Human-readable part is too long"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p0, p1}, Lim/imkey/imkeylibrary/utils/Bech32;->createChecksum(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 115
    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v4, v3, [B

    .line 116
    array-length v5, p1

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length p1, p1

    array-length v5, v0

    invoke-static {v0, v2, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x31

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v2, v3, :cond_2

    .line 121
    aget-byte p0, v4, v2

    const-string v0, "qpzry9x8gf2tvdw0s3jn54khce6mua7l"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static expandHrp(Ljava/lang/String;)[B
    .locals 6

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 71
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v5, v4, 0x5

    and-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    .line 74
    aput-byte v5, v1, v3

    add-int v5, v3, v0

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0x1f

    int-to-byte v4, v4

    .line 75
    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_0
    aput-byte v2, v1, v0

    return-object v1
.end method

.method private static polymod([B)I
    .locals 6

    .line 56
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-byte v3, p0, v2

    ushr-int/lit8 v4, v1, 0x19

    and-int/lit16 v4, v4, 0xff

    const v5, 0x1ffffff

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x5

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_0

    const v3, 0x3b6a57b2

    xor-int/2addr v1, v3

    :cond_0
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_1

    const v3, 0x26508e6d

    xor-int/2addr v1, v3

    :cond_1
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_2

    const v3, 0x1ea119fa

    xor-int/2addr v1, v3

    :cond_2
    and-int/lit8 v3, v4, 0x8

    if-eqz v3, :cond_3

    const v3, 0x3d4233dd

    xor-int/2addr v1, v3

    :cond_3
    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_4

    const v3, 0x2a1462b3

    xor-int/2addr v1, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private static verifyChecksum(Ljava/lang/String;[B)Z
    .locals 3

    .line 83
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/Bech32;->expandHrp(Ljava/lang/String;)[B

    move-result-object p0

    .line 84
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/Bech32;->polymod([B)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
