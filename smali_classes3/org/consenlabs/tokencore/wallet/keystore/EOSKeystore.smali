.class public Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
.source "EOSKeystore.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;,
        Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;,
        Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;
    }
.end annotation


# static fields
.field private static final PERM_ACTIVE:Ljava/lang/String; = "active"

.field private static final PERM_OWNER:Ljava/lang/String; = "owner"

.field static VERSION:I = 0x2711


# instance fields
.field private encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private mKeyPathPrivates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;",
            ">;"
        }
    .end annotation
.end field

.field private mnemonicPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    .line 148
    invoke-static {p4}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 149
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mnemonicPath:Ljava/lang/String;

    .line 151
    invoke-direct {p0, p4}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->calcAllDefaultKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    const/16 v0, 0x10

    .line 153
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 156
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/DateUtil;->getUTCTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setTimestamp(J)V

    :cond_0
    const-string v1, "HD"

    .line 158
    invoke-virtual {p1, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    .line 160
    invoke-static {p2, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    .line 161
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    .line 162
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const-string v0, " "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 163
    invoke-direct {p0, p5, p6, p2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->derivedKeyPath(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    .line 166
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p0, p3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->setAccountName(Ljava/lang/String;)V

    .line 169
    :cond_1
    sget p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->VERSION:I

    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->version:I

    .line 170
    invoke-static {p7}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p7

    :cond_2
    iput-object p7, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->id:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    const/16 v0, 0x80

    .line 106
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 109
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mnemonicPath:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 111
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/DateUtil;->getUTCTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setTimestamp(J)V

    .line 114
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;

    .line 116
    iget-object v1, v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 121
    invoke-static {p5}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromWIF(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object p5

    .line 122
    invoke-virtual {p5}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getEosPublicKey()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    new-instance v2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    invoke-direct {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;-><init>()V

    .line 128
    invoke-static {v2, v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$102(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p5}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getPrivateKey()[B

    move-result-object p5

    invoke-virtual {v1, p2, p5}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p5

    invoke-static {v2, p5}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$002(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    const-string p5, "IMPORTED"

    .line 130
    invoke-static {v2, p5}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$202(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object p5, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "eos_private_public_not_match"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_3
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    const-string p2, "RANDOM"

    .line 136
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    .line 138
    sget p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->VERSION:I

    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->version:I

    .line 139
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 140
    invoke-virtual {p0, p3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->setAccountName(Ljava/lang/String;)V

    .line 143
    :cond_4
    invoke-static {p6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p6

    :cond_5
    iput-object p6, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->id:Ljava/lang/String;

    return-void
.end method

.method private calcAllDefaultKeys(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v6, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 223
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    .line 225
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->calcDefaultKeysBySha(Lorg/bitcoinj/wallet/DeterministicKeyChain;)Ljava/util/List;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mnemonicPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->calcDefaultKeys(Lorg/bitcoinj/wallet/DeterministicKeyChain;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private static calcDefaultKeys(Lorg/bitcoinj/wallet/DeterministicKeyChain;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 251
    invoke-static {v3}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v4

    .line 252
    new-instance v5, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;

    invoke-direct {v5, v4, v3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static calcDefaultKeysBySha(Lorg/bitcoinj/wallet/DeterministicKeyChain;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/DeterministicKeyChain;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;",
            ">;"
        }
    .end annotation

    const-string v0, "m/44\'/194\'"

    .line 234
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getChainCode()[B

    move-result-object p0

    const-string v0, "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906"

    .line 236
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 237
    invoke-static {v0, p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->hmacSHA256([B[B)[B

    move-result-object p0

    const-string v0, "UTF-8"

    .line 238
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "owner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 239
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v0

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    new-instance v2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;

    invoke-direct {p0, v0, v3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;)",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;"
        }
    .end annotation

    .line 78
    new-instance v8, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    const-string v7, ""

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;"
        }
    .end annotation

    .line 82
    new-instance v8, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;)",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;"
        }
    .end annotation

    .line 86
    new-instance v7, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    const-string v6, ""

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v7
.end method

.method private derivedKeyPath(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;",
            ">;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;

    .line 176
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->getPrivateKey()[B

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->getPrivateKey()[B

    move-result-object v2

    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromPrivate([B)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->getEosPublicKey()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HD_SHA256"

    goto :goto_1

    :cond_0
    const-string v3, "PATH_DIRECTLY"

    .line 179
    :goto_1
    new-instance v4, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v2, v0, v3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;-><init>(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_7

    .line 183
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;

    .line 184
    iget-object p3, p2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    const-string v0, "owner"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    const-string v0, "active"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_3
    const/4 p3, 0x0

    .line 186
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    .line 187
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_2

    .line 192
    :cond_6
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "eos_private_public_not_match"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic createEncMnemonic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore$-CC;->$default$createEncMnemonic(Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic decryptMnemonic(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore$-CC;->$default$decryptMnemonic(Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptPrivateKeyFor(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 201
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    .line 202
    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$100(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$000(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {v0, p2, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p1

    return-object p1

    .line 208
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "eos_public_key_not_found"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/model/KeyPair;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->cacheDerivedKey(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    .line 93
    new-instance v3, Lorg/consenlabs/tokencore/wallet/model/KeyPair;

    invoke-direct {v3}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;-><init>()V

    .line 94
    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$000(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object v4

    .line 95
    invoke-static {v4}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->fromPrivate([B)Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;

    move-result-object v4

    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->toBase58()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->setPrivateKey(Ljava/lang/String;)V

    .line 97
    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->access$100(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->setPublicKey(Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    return-object v0
.end method

.method public getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getKeyPathPrivates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    return-object v0
.end method

.method public getMnemonicPath()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mnemonicPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[1-5a-z.]{1,12}"

    .line 214
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->address:Ljava/lang/String;

    return-void

    .line 215
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "eos_account_name_invalid"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setKeyPathPrivates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->mKeyPathPrivates:Ljava/util/List;

    return-void
.end method
