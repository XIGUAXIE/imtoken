.class public Lorg/bitcoinj/core/Sha256Hash;
.super Ljava/lang/Object;
.source "Sha256Hash.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/core/Sha256Hash;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH:I = 0x20

.field public static final ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;


# instance fields
.field private final bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 40
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 59
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 50
    iput-object p1, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    return-void
.end method

.method public static create([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->of([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public static hash([B)[B
    .locals 2

    .line 171
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bitcoinj/core/Sha256Hash;->hash([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static hash([BII)[B
    .locals 1

    .line 183
    invoke-static {}, Lorg/bitcoinj/core/Sha256Hash;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 185
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static hashTwice([B)[B
    .locals 2

    .line 196
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashTwice([BII)[B
    .locals 1

    .line 209
    invoke-static {}, Lorg/bitcoinj/core/Sha256Hash;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 211
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashTwice([BII[BII)[B
    .locals 1

    .line 220
    invoke-static {}, Lorg/bitcoinj/core/Sha256Hash;->newDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 222
    invoke-virtual {v0, p3, p4, p5}, Ljava/security/MessageDigest;->update([BII)V

    .line 223
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static newDigest()Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    const-string v0, "SHA-256"

    .line 158
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/io/File;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 142
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->of([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method public static of([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 111
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public static twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 127
    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 83
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 71
    new-instance v0, Lorg/bitcoinj/core/Sha256Hash;

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/Sha256Hash;-><init>([B)V

    return-object v0
.end method

.method public static wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 95
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Sha256Hash;->compareTo(Lorg/bitcoinj/core/Sha256Hash;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/core/Sha256Hash;)I
    .locals 3

    const/16 v0, 0x1f

    :goto_0
    if-ltz v0, :cond_2

    .line 273
    iget-object v1, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 274
    iget-object v2, p1, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    if-le v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge v1, v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    check-cast p1, Lorg/bitcoinj/core/Sha256Hash;

    iget-object p1, p1, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    return-object v0
.end method

.method public getReversedBytes()[B
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 241
    iget-object v0, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    const/16 v1, 0x1c

    aget-byte v1, v0, v1

    const/16 v2, 0x1d

    aget-byte v2, v0, v2

    const/16 v3, 0x1e

    aget-byte v3, v0, v3

    const/16 v4, 0x1f

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 3

    .line 253
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 246
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lorg/bitcoinj/core/Sha256Hash;->bytes:[B

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
