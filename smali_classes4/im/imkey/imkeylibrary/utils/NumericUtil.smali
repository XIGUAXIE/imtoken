.class public Lim/imkey/imkeylibrary/utils/NumericUtil;
.super Ljava/lang/Object;
.source "NumericUtil.java"


# static fields
.field private static final HEX_PREFIX:Ljava/lang/String; = "0x"

.field private static final SECURE_RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/utils/NumericUtil;->SECURE_RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beBigEndianHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 182
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 186
    :cond_0
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static beLittleEndianHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 194
    :cond_0
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B
    .locals 4

    .line 94
    new-array v0, p1, [B

    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 99
    aget-byte v2, p0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 100
    array-length v1, p0

    sub-int/2addr v1, v3

    goto :goto_0

    .line 103
    :cond_0
    array-length v2, p0

    move v1, v2

    const/4 v3, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    sub-int/2addr p1, v1

    .line 112
    invoke-static {p0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input is too large to put in byte array of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bigIntegerToHex(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 73
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bigIntegerToHexWithZeroPadded(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 3

    .line 77
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToHex(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-ltz p0, :cond_1

    if-ge v1, p1, :cond_0

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr p1, v1

    const-string v1, "0"

    invoke-static {v1, p1}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Value cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is larger then length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bytesToBigInteger([B)Ljava/math/BigInteger;
    .locals 2

    .line 64
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static bytesToBigInteger([BII)Ljava/math/BigInteger;
    .locals 0

    add-int/2addr p2, p1

    .line 60
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToBigInteger([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    array-length v1, p0

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 173
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 174
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([B)I
    .locals 0

    .line 204
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hasHexPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static generateRandomBytes(I)[B
    .locals 1

    .line 18
    new-array p0, p0, [B

    .line 19
    sget-object v0, Lim/imkey/imkeylibrary/utils/NumericUtil;->SECURE_RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method private static hasHexPrefix(Ljava/lang/String;)Z
    .locals 4

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x78

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static hexToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    .line 68
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 117
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 127
    :cond_0
    rem-int/lit8 v2, v0, 0x2

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 128
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    .line 137
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 138
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v6, v4

    int-to-byte v4, v6

    aput-byte v4, v2, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static hexToBytesLittleEndian(Ljava/lang/String;)[B
    .locals 4

    .line 144
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 145
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 148
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    aget-byte v2, p0, v1

    .line 151
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 152
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static intToBytes(I)[B
    .locals 5

    const/4 v0, 0x4

    .line 209
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 211
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v4, p0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v3, v0, :cond_2

    const/4 v3, 0x3

    .line 220
    :cond_2
    array-length v0, p0

    invoke-static {p0, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static isValidHex(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "0x"

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v2

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "[0-9a-fA-F]+"

    .line 36
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hasHexPrefix(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static reverseBytes([B)[B
    .locals 4

    .line 158
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 160
    aget-byte v2, p0, v1

    .line 161
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p0, v3

    aput-byte v3, p0, v1

    .line 162
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static reverseHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 199
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->reverseBytes([B)[B

    move-result-object p0

    .line 200
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
