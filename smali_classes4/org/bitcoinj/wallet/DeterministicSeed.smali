.class public Lorg/bitcoinj/wallet/DeterministicSeed;
.super Ljava/lang/Object;
.source "DeterministicSeed.java"

# interfaces
.implements Lorg/bitcoinj/crypto/EncryptableItem;


# static fields
.field public static final DEFAULT_SEED_ENTROPY_BITS:I = 0x80

.field public static final MAX_SEED_ENTROPY_BITS:I = 0x200


# instance fields
.field private creationTimeSeconds:J

.field private final encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private encryptedSeed:Lorg/bitcoinj/crypto/EncryptedData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mnemonicCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final seed:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lorg/bitcoinj/wallet/DeterministicSeed;->decodeMnemonicCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;ILjava/lang/String;J)V
    .locals 0

    .line 93
    invoke-static {p1, p2}, Lorg/bitcoinj/wallet/DeterministicSeed;->getEntropy(Ljava/security/SecureRandom;I)[B

    move-result-object p1

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>([BLjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;[BLjava/lang/String;J)V
    .locals 0
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/MnemonicCode;->toSeed(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2, p1, p4, p5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>([BLjava/util/List;J)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/EncryptedData;J)V
    .locals 1
    .param p2    # Lorg/bitcoinj/crypto/EncryptedData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    .line 66
    iput-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    .line 67
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/EncryptedData;

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    .line 68
    iput-object p2, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedSeed:Lorg/bitcoinj/crypto/EncryptedData;

    .line 69
    iput-wide p3, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "entropy size in bits not divisible by 32"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 105
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/16 v3, 0x80

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "entropy size too small"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :try_start_0
    sget-object v0, Lorg/bitcoinj/crypto/MnemonicCode;->INSTANCE:Lorg/bitcoinj/crypto/MnemonicCode;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/crypto/MnemonicCode;->toMnemonic([B)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;
    :try_end_0
    .catch Lorg/bitcoinj/crypto/MnemonicException$MnemonicLengthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    invoke-static {p1, p2}, Lorg/bitcoinj/crypto/MnemonicCode;->toSeed(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    .line 116
    iput-wide p3, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    return-void

    :catch_0
    move-exception p1

    .line 112
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([BLjava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    .line 59
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    .line 61
    iput-wide p3, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    return-void
.end method

.method private static decodeMnemonicCode(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    .line 243
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static decodeMnemonicCode([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 239
    invoke-static {p0, v0}, Lorg/bitcoinj/core/Utils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->decodeMnemonicCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getEntropy(Ljava/security/SecureRandom;I)[B
    .locals 2

    const/16 v0, 0x200

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "requested entropy size too large"

    .line 120
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    .line 123
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method private getMnemonicAsBytes()[B
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/MnemonicException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lorg/bitcoinj/crypto/MnemonicCode;->INSTANCE:Lorg/bitcoinj/crypto/MnemonicCode;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/crypto/MnemonicCode;->check(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public decrypt(Lorg/bitcoinj/crypto/KeyCrypter;Ljava/lang/String;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicSeed;
    .locals 7

    .line 195
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 196
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    invoke-interface {p1, v0, p3}, Lorg/bitcoinj/crypto/KeyCrypter;->decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->decodeMnemonicCode([B)Ljava/util/List;

    move-result-object v2

    .line 198
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedSeed:Lorg/bitcoinj/crypto/EncryptedData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p3}, Lorg/bitcoinj/crypto/KeyCrypter;->decrypt(Lorg/bitcoinj/crypto/EncryptedData;Lorg/spongycastle/crypto/params/KeyParameter;)[B

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 199
    new-instance p1, Lorg/bitcoinj/wallet/DeterministicSeed;

    iget-wide v5, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    return-object p1
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicSeed;
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Trying to encrypt seed twice"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Mnemonic missing so cannot encrypt"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getMnemonicAsBytes()[B

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    invoke-interface {p1, v1, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->encrypt([BLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object p1

    .line 187
    new-instance p2, Lorg/bitcoinj/wallet/DeterministicSeed;

    iget-wide v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/EncryptedData;J)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    check-cast p1, Lorg/bitcoinj/wallet/DeterministicSeed;

    .line 207
    iget-wide v2, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    iget-wide v4, p1, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    iget-object v3, p1, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    .line 208
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    iget-object p1, p1, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    .line 209
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

.method public getCreationTimeSeconds()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    return-wide v0
.end method

.method public getEncryptedData()Lorg/bitcoinj/crypto/EncryptedData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    return-object v0
.end method

.method public getEncryptedSeedData()Lorg/bitcoinj/crypto/EncryptedData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedSeed:Lorg/bitcoinj/crypto/EncryptedData;

    return-object v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .line 165
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method getEntropyBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/crypto/MnemonicException;
        }
    .end annotation

    .line 229
    sget-object v0, Lorg/bitcoinj/crypto/MnemonicCode;->INSTANCE:Lorg/bitcoinj/crypto/MnemonicCode;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/crypto/MnemonicCode;->toEntropy(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public getMnemonicCode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    return-object v0
.end method

.method public getSecretBytes()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getMnemonicAsBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSeedBytes()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 214
    iget-wide v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 130
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->encryptedMnemonicCode:Lorg/bitcoinj/crypto/EncryptedData;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setCreationTimeSeconds(J)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->creationTimeSeconds:J

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->seed:[B

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeterministicSeed [encrypted]"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeterministicSeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicSeed;->toHexString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DeterministicSeed;->mnemonicCode:Ljava/util/List;

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
