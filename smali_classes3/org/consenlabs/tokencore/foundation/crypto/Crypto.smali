.class public Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    value = {
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "scrypt"
            value = Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;
        .end subannotation,
        .subannotation Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
            name = "pbkdf2"
            value = Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    include = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXISTING_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    property = "kdf"
    use = .enum Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CBC:Ljava/lang/String; = "aes-128-cbc"

.field static final CTR:Ljava/lang/String; = "aes-128-ctr"

.field static final IV_LENGTH:I = 0x10

.field static final SALT_LENGTH:I = 0x20


# instance fields
.field private cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field cipher:Ljava/lang/String;

.field private cipherparams:Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

.field private ciphertext:Ljava/lang/String;

.field kdf:Ljava/lang/String;

.field kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mac:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCrypto(Ljava/lang/String;[BLjava/lang/String;Z)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
    .locals 3

    const-string v0, "pbkdf2"

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;->createPBKDF2Crypto()Lorg/consenlabs/tokencore/foundation/crypto/PBKDF2Crypto;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->createSCryptCrypto()Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;

    move-result-object p2

    :goto_0
    const-string v0, "aes-128-ctr"

    .line 73
    invoke-virtual {p2, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->setCipher(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 74
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 75
    new-instance v1, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    invoke-direct {v1}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;-><init>()V

    .line 76
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->setIv(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->setCipherparams(Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;)V

    .line 79
    invoke-virtual {p2, p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getValidDerivedKey(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz p3, :cond_1

    .line 82
    new-instance p3, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    invoke-direct {p3, p0, v1}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p2, p3}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->setCachedDerivedKey(Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;)V

    .line 85
    :cond_1
    invoke-direct {p2, v1, v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->encrypt([B[B[B)[B

    move-result-object p0

    .line 87
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->ciphertext:Ljava/lang/String;

    .line 89
    invoke-static {v1, p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->generateMac([B[B)[B

    move-result-object p0

    .line 90
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    return-object p2
.end method

.method public static createPBKDF2Crypto(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
    .locals 2

    const-string v0, "pbkdf2"

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, p1, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createCrypto(Ljava/lang/String;[BLjava/lang/String;Z)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p0

    return-object p0
.end method

.method public static createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
    .locals 2

    const-string v0, "pbkdf2"

    const/4 v1, 0x1

    .line 61
    invoke-static {p0, p1, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createCrypto(Ljava/lang/String;[BLjava/lang/String;Z)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p0

    return-object p0
.end method

.method public static createSCryptCrypto(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;
    .locals 2

    const-string v0, "scrypt"

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createCrypto(Ljava/lang/String;[BLjava/lang/String;Z)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p0

    return-object p0
.end method

.method private decrypt([B[B[B)[B
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 186
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 188
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    const-string v1, "aes-128-ctr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p3, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->decryptByCTRNoPadding([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    invoke-static {p3, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->decryptByCBCNoPadding([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private encrypt([B[B[B)[B
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 168
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 170
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    const-string v1, "aes-128-ctr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p3, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->encryptByCTRNoPadding([B[B[B)[B

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    invoke-static {p3, p1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->encryptByCBCNoPadding([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private getCachedDerivedKey(Ljava/lang/String;)[B
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->getDerivedKey(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->isValidDerivedKey([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 119
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "invalid_cached_derived_key"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getValidDerivedKey(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cacheDerivedKey(Ljava/lang/String;)V
    .locals 2

    .line 108
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getValidDerivedKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 109
    new-instance v1, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    invoke-direct {v1, p1, v0}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    return-void
.end method

.method public clearCachedDerivedKey()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    return-void
.end method

.method public decrypt(Ljava/lang/String;)[B
    .locals 2

    .line 178
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCachedDerivedKey(Ljava/lang/String;)[B

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->getIv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 182
    invoke-direct {p0, p1, v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B
    .locals 1

    .line 208
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCachedDerivedKey(Ljava/lang/String;)[B

    move-result-object p1

    .line 209
    invoke-virtual {p2}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->getNonce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    invoke-virtual {p2}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->getEncStr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCachedDerivedKey(Ljava/lang/String;)[B

    move-result-object p1

    .line 197
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;-><init>()V

    const/16 v1, 0x10

    .line 198
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v1

    .line 199
    invoke-direct {p0, p1, v1, p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->encrypt([B[B[B)[B

    move-result-object p1

    .line 201
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->setEncStr(Ljava/lang/String;)V

    .line 202
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->setNonce(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 276
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    .line 278
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 283
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 285
    :cond_4
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 288
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 289
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 290
    :cond_6
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_2
    return v2

    .line 293
    :cond_7
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_8
    iget-object v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_3
    return v2

    .line 298
    :cond_9
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    if-eqz v1, :cond_a

    iget-object v3, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    .line 299
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_a
    iget-object v1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    if-eqz v1, :cond_b

    :goto_4
    return v2

    .line 303
    :cond_b
    iget-object v1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 304
    iget-object p1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_c
    iget-object p1, p1, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method generateDerivedKey([B)[B
    .locals 1

    .line 163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You invoke the not implement method"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getCachedDerivedKey()Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    return-object v0
.end method

.method public getCipher()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipherparams:Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    return-object v0
.end method

.method public getCiphertext()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->ciphertext:Ljava/lang/String;

    return-object v0
.end method

.method public getKdf()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    return-object v0
.end method

.method public getKdfparams()Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        required = true
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDerivedKey(Ljava/lang/String;)[B
    .locals 1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->generateDerivedKey([B)[B

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->isValidDerivedKey([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 136
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "password_incorrect"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 310
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 311
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCipherparams()Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 312
    iget-object v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 313
    iget-object v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 314
    iget-object v2, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public isValidDerivedKey([B)Z
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 142
    :cond_0
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCiphertext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    invoke-static {p1, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->generateMac([B[B)[B

    move-result-object p1

    .line 146
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public setCachedDerivedKey(Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cachedDerivedKey:Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    return-void
.end method

.method public setCipher(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    return-void
.end method

.method public setCipherparams(Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipherparams:Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    return-void
.end method

.method public setCiphertext(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->ciphertext:Ljava/lang/String;

    return-void
.end method

.method public setKdf(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdf:Ljava/lang/String;

    return-void
.end method

.method public setKdfparams(Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    const-string v1, "aes-128-ctr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipher:Ljava/lang/String;

    const-string v1, "aes-128-cbc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipherparams:Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->mac:Ljava/lang/String;

    .line 152
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->ciphertext:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cipherparams:Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/CipherParams;->validate()V

    .line 158
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->kdfparams:Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;

    invoke-interface {v0}, Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;->validate()V

    return-void

    .line 154
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "keystore_invalid"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 0

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->getCachedDerivedKey(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
