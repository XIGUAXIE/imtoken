.class public Lorg/bitcoinj/crypto/BIP38PrivateKey;
.super Lorg/bitcoinj/core/VersionedChecksummedBytes;
.source "BIP38PrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/crypto/BIP38PrivateKey$BadPassphraseException;
    }
.end annotation


# instance fields
.field public final addressHash:[B

.field public final compressed:Z

.field public final content:[B

.field public final ecMultiply:Z

.field public final hasLotAndSequence:Z

.field public transient params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct {p0, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/NetworkParameters;

    iput-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 73
    iget p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->version:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_c

    .line 75
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    array-length p1, p1

    const/16 v0, 0x26

    if-ne p1, v0, :cond_b

    .line 77
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->hasLotAndSequence:Z

    .line 78
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->compressed:Z

    .line 79
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/2addr p1, p2

    if-nez p1, :cond_a

    .line 81
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-nez p1, :cond_9

    .line 83
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_8

    .line 85
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_7

    .line 87
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v3, 0x42

    const/16 v4, 0xc0

    if-ne p1, v3, :cond_4

    .line 90
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_3

    .line 92
    iput-boolean v1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->ecMultiply:Z

    .line 93
    iget-boolean p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->hasLotAndSequence:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Non-EC-multiplied keys cannot have lot/sequence."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bits 0x40 and 0x80 must be set for non-EC-multiplied keys."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/16 v1, 0x43

    if-ne p1, v1, :cond_6

    .line 97
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-nez p1, :cond_5

    .line 99
    iput-boolean p2, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->ecMultiply:Z

    .line 103
    :goto_2
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    const/4 p2, 0x6

    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->addressHash:[B

    .line 104
    iget-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->content:[B

    return-void

    .line 98
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bits 0x40 and 0x80 must be cleared for EC-multiplied keys."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_6
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Second byte must by 0x42 or 0x43."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_7
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bit 0x10 reserved for future use."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_8
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bit 0x08 reserved for future use."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_9
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bit 0x02 reserved for future use."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_a
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    const-string p2, "Bit 0x01 reserved for future use."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_b
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong number of bytes, excluding version byte: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->bytes:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_c
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched version number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->version:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptEC(Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;
    .locals 14

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->content:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 139
    iget-boolean v3, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->hasLotAndSequence:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 141
    :goto_0
    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/16 v5, 0x4000

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x20

    invoke-static/range {v3 .. v8}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p1

    .line 142
    iget-boolean v3, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->hasLotAndSequence:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-array v3, v4, [[B

    aput-object p1, v3, v2

    aput-object v0, v3, v5

    .line 143
    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object p1

    .line 144
    array-length v3, p1

    const/16 v6, 0x28

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 145
    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p1

    .line 147
    :cond_2
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 148
    invoke-static {v3, v5}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    new-array v6, v4, [[B

    .line 150
    iget-object v7, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->addressHash:[B

    aput-object v7, v6, v2

    aput-object v0, v6, v5

    invoke-static {v6}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object v9

    .line 151
    array-length v0, v9

    const/16 v6, 0xc

    if-ne v0, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 152
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v8

    const/16 v10, 0x400

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x40

    invoke-static/range {v8 .. v13}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p1

    const/16 v0, 0x40

    const/16 v6, 0x20

    .line 153
    invoke-static {p1, v6, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 155
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v0, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/NoPadding"

    .line 156
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 159
    iget-object v7, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->content:[B

    const/16 v8, 0x10

    invoke-static {v7, v8, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 160
    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 161
    array-length v7, v6

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_5

    .line 163
    aget-byte v9, v6, v7

    add-int/lit8 v10, v7, 0x10

    aget-byte v10, p1, v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    new-array v7, v4, [[B

    .line 165
    iget-object v9, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->content:[B

    invoke-static {v9, v1, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    aput-object v9, v7, v2

    invoke-static {v6, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    aput-object v9, v7, v5

    invoke-static {v7}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object v7

    .line 166
    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 167
    array-length v7, v0

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_7

    .line 169
    aget-byte v9, v0, v7

    aget-byte v10, p1, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    new-array p1, v4, [[B

    aput-object v0, p1, v2

    .line 171
    invoke-static {v6, v1, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/google/common/primitives/Bytes;->concat([[B)[B

    move-result-object p1

    .line 172
    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object p1

    invoke-direct {v0, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 174
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-ltz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    :goto_8
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 175
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-ltz p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/ECKey;->CURVE:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 178
    iget-boolean v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->compressed:Z

    invoke-static {p1, v0}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;Z)Lorg/bitcoinj/core/ECKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private decryptNoEC(Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;
    .locals 7

    .line 119
    :try_start_0
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->addressHash:[B

    const/16 v3, 0x4000

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x40

    invoke-static/range {v1 .. v6}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object p1

    const/16 v0, 0x40

    const/16 v1, 0x20

    .line 120
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 121
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 123
    invoke-static {}, Lorg/bitcoinj/crypto/DRMWorkaround;->maybeDisableExportControls()V

    const-string v0, "AES/ECB/NoPadding"

    .line 124
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x2

    .line 126
    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 127
    iget-object v2, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->content:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 129
    aget-byte v2, v0, v3

    aget-byte v4, p1, v3

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-boolean p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->compressed:Z

    invoke-static {v0, p1}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/crypto/BIP38PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bitcoinj/crypto/BIP38PrivateKey;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/crypto/BIP38PrivateKey;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/NetworkParameters;

    iput-object p1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 201
    iget-object v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/BIP38PrivateKey$BadPassphraseException;
        }
    .end annotation

    .line 108
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-boolean v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->ecMultiply:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/BIP38PrivateKey;->decryptEC(Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/crypto/BIP38PrivateKey;->decryptNoEC(Ljava/lang/String;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 110
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 112
    iget-object v1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->addressHash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 113
    :cond_1
    new-instance p1, Lorg/bitcoinj/crypto/BIP38PrivateKey$BadPassphraseException;

    invoke-direct {p1}, Lorg/bitcoinj/crypto/BIP38PrivateKey$BadPassphraseException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    check-cast p1, Lorg/bitcoinj/crypto/BIP38PrivateKey;

    .line 189
    invoke-super {p0, p1}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object p1, p1, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 194
    invoke-super {p0}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/crypto/BIP38PrivateKey;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
