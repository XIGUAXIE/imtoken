.class public Lorg/bitcoinj/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/Utils$Pair;
    }
.end annotation


# static fields
.field public static final BITCOIN_SIGNED_MESSAGE_HEADER:Ljava/lang/String; = "Bitcoin Signed Message:\n"

.field public static final BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

.field public static final HEX:Lcom/google/common/io/BaseEncoding;

.field private static final SPACE_JOINER:Lcom/google/common/base/Joiner;

.field private static final UTC:Ljava/util/TimeZone;

.field private static final bitMask:[I

.field private static isAndroid:I

.field private static mockSleepQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mockTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "Bitcoin Signed Message:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    const-string v0, " "

    .line 57
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Utils;->SPACE_JOINER:Lcom/google/common/base/Joiner;

    .line 154
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    const-string v0, "UTC"

    .line 395
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Utils;->UTC:Ljava/util/TimeZone;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 524
    fill-array-data v0, :array_0

    sput-object v0, Lorg/bitcoinj/core/Utils;->bitMask:[I

    const/4 v0, -0x1

    .line 574
    sput v0, Lorg/bitcoinj/core/Utils;->isAndroid:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendByte([BB)[B
    .locals 1

    .line 439
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 440
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput-byte p1, p0, v0

    return-object p0
.end method

.method public static bigIntegerToBytes(Ljava/math/BigInteger;I)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    new-array v0, p1, [B

    .line 74
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 75
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 76
    :goto_0
    array-length v2, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v2

    .line 77
    invoke-static {p0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static checkBitLE([BI)Z
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    .line 528
    aget-byte p0, p0, v0

    sget-object v0, Lorg/bitcoinj/core/Utils;->bitMask:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static closeUnchecked(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    .line 634
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 637
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static closeUnchecked(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 643
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 646
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static copyOf([BI)[B
    .locals 2

    .line 430
    new-array v0, p1, [B

    .line 431
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static currentTimeMillis()J
    .locals 2

    .line 388
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static currentTimeSeconds()J
    .locals 4

    .line 392
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static dateTimeFormat(J)Ljava/lang/String;
    .locals 3

    .line 412
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 413
    sget-object v1, Lorg/bitcoinj/core/Utils;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 414
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 402
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 403
    sget-object v1, Lorg/bitcoinj/core/Utils;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 404
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeCompactBits(J)Ljava/math/BigInteger;
    .locals 9

    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    add-int/lit8 v1, v0, 0x4

    .line 313
    new-array v1, v1, [B

    int-to-byte v2, v0

    const/4 v3, 0x3

    .line 314
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const-wide/16 v4, 0xff

    if-lt v0, v2, :cond_0

    const/16 v6, 0x10

    shr-long v6, p0, v6

    and-long/2addr v6, v4

    long-to-int v7, v6

    int-to-byte v6, v7

    const/4 v7, 0x4

    .line 315
    aput-byte v6, v1, v7

    :cond_0
    const/4 v6, 0x2

    if-lt v0, v6, :cond_1

    const/4 v6, 0x5

    const/16 v7, 0x8

    shr-long v7, p0, v7

    and-long/2addr v7, v4

    long-to-int v8, v7

    int-to-byte v7, v8

    .line 316
    aput-byte v7, v1, v6

    :cond_1
    if-lt v0, v3, :cond_2

    const/4 v0, 0x6

    and-long/2addr p0, v4

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 317
    aput-byte p0, v1, v0

    .line 318
    :cond_2
    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->decodeMPI([BZ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static decodeMPI([BZ)Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 244
    invoke-static {p0, v0}, Lorg/bitcoinj/core/Utils;->readUint32BE([BI)J

    move-result-wide v1

    long-to-int p1, v1

    .line 245
    new-array v1, p1, [B

    const/4 v2, 0x4

    .line 246
    invoke-static {p0, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 249
    :cond_0
    array-length p1, p0

    if-nez p1, :cond_1

    .line 250
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 251
    :cond_1
    aget-byte p1, p0, v0

    const/16 v1, 0x80

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 253
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 254
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p1, :cond_4

    .line 255
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static encodeCompactBits(Ljava/math/BigInteger;)J
    .locals 11

    .line 326
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 328
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    shl-long v2, v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x3

    mul-int/lit8 v2, v2, 0x8

    .line 330
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    :goto_0
    const-wide/32 v4, 0x800000

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    or-long/2addr v0, v2

    .line 338
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v8

    :goto_1
    or-long/2addr v0, v4

    return-wide v0
.end method

.method public static encodeMPI(Ljava/math/BigInteger;Z)[B
    .locals 7

    .line 265
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-array p0, v2, [B

    return-object p0

    :cond_0
    new-array p0, v1, [B

    .line 269
    fill-array-data p0, :array_0

    return-object p0

    .line 271
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v3, 0x1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    .line 274
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 275
    array-length v4, p0

    .line 276
    aget-byte v5, p0, v2

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    if-eqz p1, :cond_6

    add-int/lit8 p1, v4, 0x4

    .line 279
    new-array p1, p1, [B

    .line 280
    array-length v3, p0

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, 0x3

    array-length v5, p0

    invoke-static {p0, v2, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v3, v4

    .line 281
    invoke-static {v3, v4, p1, v2}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayBE(J[BI)V

    if-eqz v0, :cond_5

    .line 283
    aget-byte p0, p1, v1

    or-int/2addr p0, v6

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    :cond_5
    return-object p1

    .line 287
    :cond_6
    array-length p1, p0

    if-eq v4, p1, :cond_7

    .line 288
    new-array p1, v4, [B

    .line 289
    array-length v1, p0

    invoke-static {p0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_7
    if-eqz v0, :cond_8

    .line 293
    aget-byte p1, p0, v2

    or-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    :cond_8
    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static finishMockSleep()V
    .locals 2

    .line 569
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 570
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static formatMessageForSigning(Ljava/lang/String;)[B
    .locals 4

    .line 510
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 511
    sget-object v1, Lorg/bitcoinj/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 512
    sget-object v1, Lorg/bitcoinj/core/Utils;->BITCOIN_SIGNED_MESSAGE_HEADER_BYTES:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 513
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 514
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    array-length v2, p0

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    .line 515
    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 516
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 517
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 519
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getResourceAsString(Ljava/net/URL;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/google/common/io/Resources;->readLines(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    const/16 v0, 0xa

    .line 628
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static int64ToByteStreamLE(JLjava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long v2, p0, v0

    long-to-int v3, v2

    .line 114
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 115
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 116
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 117
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 118
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 119
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 120
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x38

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p1, p0

    .line 121
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static isAndroidRuntime()Z
    .locals 4

    .line 576
    sget v0, Lorg/bitcoinj/core/Utils;->isAndroid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "java.runtime.name"

    .line 577
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "Android Runtime"

    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lorg/bitcoinj/core/Utils;->isAndroid:I

    .line 580
    :cond_1
    sget v0, Lorg/bitcoinj/core/Utils;->isAndroid:I

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isLessThanOrEqualToUnsigned(JJ)Z
    .locals 0

    .line 148
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLessThanUnsigned(JJ)Z
    .locals 0

    .line 141
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWindows()Z
    .locals 2

    const-string v0, "os.name"

    .line 500
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 426
    sget-object v0, Lorg/bitcoinj/core/Utils;->SPACE_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static maxOfMostFreq(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 598
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 601
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 602
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 603
    new-instance v2, Lorg/bitcoinj/core/Utils$Pair;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lorg/bitcoinj/core/Utils$Pair;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 605
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Utils$Pair;

    .line 606
    iget v4, v3, Lorg/bitcoinj/core/Utils$Pair;->item:I

    if-eq v4, v2, :cond_1

    .line 607
    new-instance v3, Lorg/bitcoinj/core/Utils$Pair;

    invoke-direct {v3, v2, v1}, Lorg/bitcoinj/core/Utils$Pair;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_1
    iget v2, v3, Lorg/bitcoinj/core/Utils$Pair;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lorg/bitcoinj/core/Utils$Pair;->count:I

    goto :goto_0

    .line 612
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 613
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/Utils$Pair;

    iget p0, p0, Lorg/bitcoinj/core/Utils$Pair;->count:I

    .line 614
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Utils$Pair;

    iget v1, v1, Lorg/bitcoinj/core/Utils$Pair;->item:I

    .line 615
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Utils$Pair;

    .line 616
    iget v3, v2, Lorg/bitcoinj/core/Utils$Pair;->count:I

    if-eq v3, p0, :cond_3

    goto :goto_2

    .line 618
    :cond_3
    iget v2, v2, Lorg/bitcoinj/core/Utils$Pair;->item:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public static varargs maxOfMostFreq([I)I
    .locals 4

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->maxOfMostFreq(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static now()Ljava/util/Date;
    .locals 1

    .line 382
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static parseAsHexOrBase58(Ljava/lang/String;)[B
    .locals 1

    .line 488
    :try_start_0
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 492
    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/bitcoinj/core/Base58;->decodeChecked(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Lorg/bitcoinj/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static passMockSleep()V
    .locals 2

    .line 564
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public static readInt64([BI)J
    .locals 7

    .line 199
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint16BE([BI)I
    .locals 1

    .line 219
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUint32([BI)J
    .locals 7

    .line 191
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint32BE([BI)J
    .locals 7

    .line 211
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static reverseBytes([B)[B
    .locals 3

    .line 162
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 163
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 164
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reverseDwordBytes([BI)[B
    .locals 7

    .line 175
    array-length v0, p0

    const/4 v1, 0x4

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-ltz p1, :cond_2

    .line 176
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-ltz p1, :cond_3

    .line 178
    array-length v0, p0

    if-le v0, p1, :cond_3

    goto :goto_2

    :cond_3
    array-length p1, p0

    :goto_2
    new-array v0, p1, [B

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_5

    .line 181
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_4

    add-int v5, v2, v4

    add-int/lit8 v6, v2, 0x3

    sub-int/2addr v6, v4

    .line 183
    aget-byte v6, p0, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x4

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public static rollMockClock(I)Ljava/util/Date;
    .locals 2

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    .line 351
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->rollMockClockMillis(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static rollMockClockMillis(J)Ljava/util/Date;
    .locals 3

    .line 358
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/util/Date;

    sget-object v1, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    .line 361
    sget-object p0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    return-object p0

    .line 359
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You need to use setMockClock() first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setBitLE([BI)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x3

    .line 533
    aget-byte v1, p0, v0

    sget-object v2, Lorg/bitcoinj/core/Utils;->bitMask:[I

    and-int/lit8 p1, p1, 0x7

    aget p1, v2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method

.method public static setMockClock()V
    .locals 1

    .line 368
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    return-void
.end method

.method public static setMockClock(J)V
    .locals 3

    .line 375
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long p0, p0, v1

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    return-void
.end method

.method public static setMockSleep(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 555
    new-instance p0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object p0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    .line 556
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    sput-object p0, Lorg/bitcoinj/core/Utils;->mockTime:Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 558
    sput-object p0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    :goto_0
    return-void
.end method

.method public static sha256hash160([B)[B
    .locals 3

    .line 227
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object p0

    .line 228
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 229
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 p0, 0x14

    new-array p0, p0, [B

    .line 231
    invoke-virtual {v0, p0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static sleep(J)V
    .locals 1

    .line 538
    sget-object v0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 539
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 542
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 543
    invoke-static {p0, p1}, Lorg/bitcoinj/core/Utils;->rollMockClockMillis(J)Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 545
    sget-object p0, Lorg/bitcoinj/core/Utils;->mockSleepQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static toBytes(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .locals 0

    .line 476
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 478
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 457
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 459
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static uint32ToByteArrayBE(J[BI)V
    .locals 6

    const/16 v0, 0x18

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 82
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v4, p0, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 83
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v4, p0, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 84
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    and-long/2addr p0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 85
    aput-byte p0, p2, p3

    return-void
.end method

.method public static uint32ToByteArrayLE(J[BI)V
    .locals 5

    const-wide/16 v0, 0xff

    and-long v2, p0, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 89
    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 90
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x2

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 91
    aput-byte v3, p2, v2

    add-int/lit8 p3, p3, 0x3

    const/16 v2, 0x18

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 92
    aput-byte p0, p2, p3

    return-void
.end method

.method public static uint32ToByteStreamLE(JLjava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long v2, p0, v0

    long-to-int v3, v2

    .line 107
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 108
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    .line 109
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x18

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p1, p0

    .line 110
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static uint64ToByteArrayLE(J[BI)V
    .locals 5

    const-wide/16 v0, 0xff

    and-long v2, p0, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 96
    aput-byte v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 97
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x2

    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 98
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x3

    const/16 v3, 0x18

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 99
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x4

    const/16 v3, 0x20

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 100
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x5

    const/16 v3, 0x28

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 101
    aput-byte v3, p2, v2

    add-int/lit8 v2, p3, 0x6

    const/16 v3, 0x30

    shr-long v3, p0, v3

    and-long/2addr v3, v0

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 102
    aput-byte v3, p2, v2

    add-int/lit8 p3, p3, 0x7

    const/16 v2, 0x38

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 103
    aput-byte p0, p2, p3

    return-void
.end method

.method public static uint64ToByteStreamLE(Ljava/math/BigInteger;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 126
    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 129
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object p0

    .line 130
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 131
    array-length v0, p0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 132
    :goto_0
    array-length v3, p0

    rsub-int/lit8 v3, v3, 0x8

    if-ge v2, v3, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 127
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Input too large to encode into a uint64"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
