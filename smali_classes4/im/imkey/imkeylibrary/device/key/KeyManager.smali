.class public Lim/imkey/imkeylibrary/device/key/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# static fields
.field private static instance:Lim/imkey/imkeylibrary/device/key/KeyManager;


# instance fields
.field private IV:[B

.field private checksum:[B

.field private encryKey:[B

.field private privKey:[B

.field private pubKey:[B

.field private sePubKey:[B

.field private sessionKey:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 12
    iput-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    const/16 v0, 0x41

    new-array v1, v0, [B

    .line 13
    iput-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sePubKey:[B

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 15
    iput-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sessionKey:[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 16
    iput-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->checksum:[B

    new-array v1, v0, [B

    .line 18
    iput-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->IV:[B

    return-void
.end method

.method public static getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;
    .locals 1

    .line 28
    sget-object v0, Lim/imkey/imkeylibrary/device/key/KeyManager;->instance:Lim/imkey/imkeylibrary/device/key/KeyManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lim/imkey/imkeylibrary/device/key/KeyManager;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/key/KeyManager;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/device/key/KeyManager;->instance:Lim/imkey/imkeylibrary/device/key/KeyManager;

    .line 31
    :cond_0
    sget-object v0, Lim/imkey/imkeylibrary/device/key/KeyManager;->instance:Lim/imkey/imkeylibrary/device/key/KeyManager;

    return-object v0
.end method


# virtual methods
.method public decryptKeys(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 37
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object p1

    .line 39
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->IV:[B

    invoke-static {p1, v0, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES;->decryptByCBC([B[B[B)[B

    move-result-object p1

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    return-object v2

    .line 46
    :cond_0
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    const/16 v3, 0x20

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    const/16 v4, 0x41

    invoke-static {p1, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x61

    .line 48
    iget-object v3, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sePubKey:[B

    invoke-static {p1, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xa2

    .line 49
    iget-object v3, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sessionKey:[B

    const/16 v4, 0x10

    invoke-static {p1, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->checksum:[B

    const/4 v3, 0x4

    const/16 v4, 0xb2

    invoke-static {p1, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v4, [B

    .line 54
    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    .line 57
    :goto_0
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->checksum:[B

    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 58
    aget-byte v0, v0, v1

    aget-byte v3, p1, v1

    if-eq v0, v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public encryptKeys()Ljava/lang/String;
    .locals 6

    const/16 v0, 0xb2

    new-array v1, v0, [B

    .line 68
    iget-object v2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    const/16 v5, 0x41

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sePubKey:[B

    const/16 v3, 0x61

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sessionKey:[B

    const/16 v3, 0xa2

    const/16 v5, 0x10

    invoke-static {v2, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v2

    const/16 v3, 0xb6

    new-array v3, v3, [B

    .line 75
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    .line 76
    invoke-static {v2, v4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->IV:[B

    invoke-static {v3, v0, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES;->encryptByCBC([B[B[B)[B

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public genEncryKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 90
    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object p2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    const/16 v1, 0x10

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    array-length p2, p1

    sub-int/2addr p2, v1

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->IV:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public genLocalKeys()V
    .locals 2

    .line 100
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey;-><init>()V

    .line 101
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v1

    iput-object v1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    .line 102
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->decompress()Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    iput-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    return-void
.end method

.method public getChecksum()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->checksum:[B

    return-object v0
.end method

.method public getEncryKey()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    return-object v0
.end method

.method public getPrivKey()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    return-object v0
.end method

.method public getPubKey()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    return-object v0
.end method

.method public getSePubKey()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sePubKey:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sessionKey:[B

    return-object v0
.end method

.method public setChecksum([B)V
    .locals 0

    .line 135
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->checksum:[B

    return-void
.end method

.method public setEncryKey([B)V
    .locals 0

    .line 143
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryKey:[B

    return-void
.end method

.method public setPrivKey([B)V
    .locals 0

    .line 110
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->privKey:[B

    return-void
.end method

.method public setPubKey([B)V
    .locals 0

    .line 118
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->pubKey:[B

    return-void
.end method

.method public setSePubKey([B)V
    .locals 0

    .line 126
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sePubKey:[B

    return-void
.end method

.method public setSessionKey([B)V
    .locals 0

    .line 151
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/key/KeyManager;->sessionKey:[B

    return-void
.end method
