.class public Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMac([B[B)[B
    .locals 3

    .line 33
    array-length v0, p1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 35
    invoke-static {p0, v1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static keccak256(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 24
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([B)[B

    move-result-object p0

    .line 25
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static keccak256([B)[B
    .locals 2

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->keccak256([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static keccak256([BII)[B
    .locals 2

    .line 53
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/Keccak;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Keccak;-><init>(I)V

    .line 54
    invoke-virtual {v0, p0, p1, p2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Keccak;->update([BII)V

    .line 56
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Keccak;->digest()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B)[B
    .locals 2

    .line 70
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha1([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static sha1([BII)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA"

    .line 75
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 79
    :catch_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_sha_exception"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 43
    invoke-static {p0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 44
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 2

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static sha256([BII)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 61
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 65
    :catch_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_sha_exception"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
