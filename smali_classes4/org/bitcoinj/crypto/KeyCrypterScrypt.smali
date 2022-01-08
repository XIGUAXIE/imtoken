.class public Lorg/bitcoinj/crypto/KeyCrypterScrypt;
.super Ljava/lang/Object;
.source "KeyCrypterScrypt.java"

# interfaces
.implements Lorg/bitcoinj/crypto/KeyCrypter;


# static fields
.field public static final BLOCK_LENGTH:I = 0x10

.field public static final KEY_LENGTH:I = 0x20

.field public static final SALT_LENGTH:I = 0x8

.field private static final log:Lorg/slf4j/Logger;

.field private static final secureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    .line 78
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/bitcoinj/crypto/LinuxSecureRandom;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/LinuxSecureRandom;-><init>()V

    .line 81
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    .line 101
    invoke-static {}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->randomSalt()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    .line 114
    invoke-static {}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->randomSalt()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setSalt(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->setN(J)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    iput-object v0, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 128
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_1

    .line 131
    :cond_0
    sget-object p1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    const-string v0, "You are using a ScryptParameters with no salt. Your encryption may be vulnerable to a dictionary attack."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static convertToByteArray(Ljava/lang/CharSequence;)[B
    .locals 5

    .line 238
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 241
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    shl-int/lit8 v2, v1, 0x1

    .line 243
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 244
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static randomSalt()[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 89
    sget-object v1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method


# virtual methods
.method public decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :try_start_0
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object p2, p1, Lorg/bitcoinj/crypto/EncryptedData;->initialisationVector:[B

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 218
    new-instance p2, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p2, v1}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p2, v1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 221
    iget-object v3, p1, Lorg/bitcoinj/crypto/EncryptedData;->encryptedBytes:[B

    .line 222
    array-length p1, v3

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result p1

    new-array p1, p1, [B

    const/4 v4, 0x0

    .line 223
    array-length v5, v3

    const/4 v7, 0x0

    move-object v2, p2

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    .line 224
    invoke-virtual {p2, p1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    add-int/2addr v0, p2

    .line 226
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 228
    new-instance p2, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Could not decrypt bytes"

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :try_start_0
    invoke-static {p1}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->convertToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    new-array p1, v0, [B

    .line 150
    iget-object v2, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    iget-object p1, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSalt()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_0
    sget-object v2, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    const-string v3, "You are using a ScryptParameters with no salt. Your encryption may be vulnerable to a dictionary attack."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    move-object v3, p1

    .line 158
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object p1

    .line 159
    iget-object v2, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v2, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getR()I

    move-result v5

    iget-object v2, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getP()I

    move-result v6

    const/16 v7, 0x20

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/lambdaworks/crypto/SCrypt;->scrypt([B[BIIII)[B

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 161
    sget-object v3, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->log:Lorg/slf4j/Logger;

    const-string v4, "Deriving key took {} for {} scrypt iterations."

    iget-object v5, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    new-instance p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 168
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 164
    :try_start_1
    new-instance v2, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v3, "Could not generate key from password and salt."

    invoke-direct {v2, v3, p1}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 168
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    throw p1
.end method

.method public encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/KeyCrypterException;
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    .line 184
    sget-object v1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 186
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v1, p2, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 189
    new-instance p2, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p2, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    const/4 v2, 0x1

    .line 190
    invoke-virtual {p2, v2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 191
    array-length v1, p1

    invoke-virtual {p2, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    const/4 v4, 0x0

    .line 192
    array-length v5, p1

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p1

    .line 193
    invoke-virtual {p2, v1, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p2

    .line 195
    new-instance v2, Lorg/bitcoinj/crypto/EncryptedData;

    add-int/2addr p1, p2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lorg/bitcoinj/crypto/EncryptedData;-><init>([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 197
    new-instance p2, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Could not encrypt bytes."

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    check-cast p1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    iget-object p1, p1, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getScryptParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .line 259
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES-256-CBC, Scrypt (N: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->scryptParameters:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
