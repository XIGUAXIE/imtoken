.class public Lorg/consenlabs/tokencore/foundation/crypto/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMac([B[B)[B
    .locals 3

    .line 32
    array-length v0, p1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 34
    invoke-static {p0, v1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacSHA256([B[B)[B
    .locals 3

    const-string v0, "HmacSHA256"

    .line 70
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 71
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 74
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 76
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "sha256"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static keccak256(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    .line 24
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static keccak256([B)[B
    .locals 2

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->keccak256([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static keccak256([BII)[B
    .locals 2

    .line 52
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;-><init>(I)V

    .line 53
    invoke-virtual {v0, p0, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->update([BII)V

    .line 55
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Keccak;->digest()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static merkleHash([B)[B
    .locals 6

    if-eqz p0, :cond_3

    .line 82
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    add-int/lit16 v3, v2, 0x400

    .line 88
    array-length v4, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 89
    invoke-static {p0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-le p0, v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, p0, -0x1

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, v2, v3

    .line 96
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    add-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v5, v4}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_1
    add-int/2addr v2, p0

    add-int/lit8 p0, p0, 0x1

    .line 93
    div-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 101
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 42
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 43
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 2

    .line 47
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static sha256([BII)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 60
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 62
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 64
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "sha256"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
