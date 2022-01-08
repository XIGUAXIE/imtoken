.class public final Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
.source "HDMnemonicKeystore.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;
    }
.end annotation


# static fields
.field static VERSION:I = 0x2c

.field public static XPubCommonIv:Ljava/lang/String; = "9C0C30889CBCC5E01AB5B2BB88715799"

.field public static XPubCommonKey128:Ljava/lang/String; = "B888D25EC8C12BD5043777B1AC49F872"


# instance fields
.field private encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private info:Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;

.field private mnemonicPath:Ljava/lang/String;

.field private xpub:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 97
    invoke-static {p3}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 98
    new-instance v6, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 99
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 100
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    .line 102
    invoke-static {p4}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v3

    .line 104
    :goto_0
    invoke-virtual {v1, v3}, Lorg/bitcoinj/crypto/DeterministicKey;->serializePubB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->xpub:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v3}, Lorg/bitcoinj/crypto/DeterministicKey;->serializePrivB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/0/0"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    invoke-virtual {v0, p4, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p4

    .line 107
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    const-string v2, "P2WPKH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    invoke-direct {v0, v3}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivateKeyAsHex()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->address:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;

    invoke-direct {v0, v3}, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivateKeyAsHex()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/consenlabs/tokencore/wallet/address/BitcoinAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->address:Ljava/lang/String;

    .line 112
    :goto_1
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-nez p4, :cond_2

    .line 113
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/DateUtil;->getUTCTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setTimestamp(J)V

    :cond_2
    const-string p4, "HD"

    .line 115
    invoke-virtual {p1, p4}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    const-string p4, "UTF-8"

    .line 117
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p4

    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    .line 118
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    .line 119
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const-string p4, " "

    invoke-static {p4}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 120
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    .line 122
    sget p1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->VERSION:I

    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->version:I

    .line 123
    new-instance p1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;

    invoke-direct {p1}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->info:Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;

    .line 124
    invoke-static {p5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_3
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->id:Ljava/lang/String;

    return-void
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;"
        }
    .end annotation

    .line 93
    new-instance v6, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private findKeyByAddress(Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const v2, 0xffff

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%s/%d/%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v4}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v3

    .line 191
    invoke-direct {p0, v3, p2, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->isAddrDerivedFromTheKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "Cant find the address in the wallet"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isAddrDerivedFromTheKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Z
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2WPKH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    invoke-direct {v0, p2}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivateKeyAsHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1, p2}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    .line 206
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
    .locals 6

    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    invoke-virtual {v1, p1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, " "

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 132
    new-instance p1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->id:Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

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

.method public exportPrivateKeyByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 163
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    invoke-virtual {v0, p1, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p1

    .line 164
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 166
    new-instance p1, Lorg/bitcoinj/wallet/DeterministicSeed;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 167
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    .line 172
    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "%s/%s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {p2}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {p0, p1, v0, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->findKeyByAddress(Lorg/bitcoinj/wallet/DeterministicKeyChain;Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 178
    :goto_1
    invoke-direct {p0, p1, v0, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->isAddrDerivedFromTheKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivateKeyAsWiF(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 181
    :cond_2
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "Cant find the address in the wallet"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getEncryptXPub()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->xpub:Ljava/lang/String;

    .line 140
    :try_start_0
    sget-object v1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonKey128:Ljava/lang/String;

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 142
    sget-object v2, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->XPubCommonIv:Ljava/lang/String;

    invoke-static {v2}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->encryptByCBC([B[B[B)[B

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 146
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "encrypt_xpub_error"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInfo()Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->info:Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;

    return-object v0
.end method

.method public getMnemonicPath()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getXpub()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->xpub:Ljava/lang/String;

    return-object v0
.end method

.method public newReceiveAddress(I)Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    .line 152
    :goto_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->xpub:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->deserializeB58(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    .line 153
    sget-object v2, Lorg/bitcoinj/crypto/ChildNumber;->ZERO:Lorg/bitcoinj/crypto/ChildNumber;

    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v1

    .line 154
    new-instance v2, Lorg/bitcoinj/crypto/ChildNumber;

    invoke-direct {v2, p1}, Lorg/bitcoinj/crypto/ChildNumber;-><init>(I)V

    invoke-static {v1, v2}, Lorg/bitcoinj/crypto/HDKeyDerivation;->deriveChildKey(Lorg/bitcoinj/crypto/DeterministicKey;Lorg/bitcoinj/crypto/ChildNumber;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 155
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P2WPKH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    new-instance v1, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {v1, p1}, Lorg/consenlabs/tokencore/wallet/address/SegWitBitcoinAddressCreator;->fromPrivateKey(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    invoke-virtual {p1, v0}, Lorg/bitcoinj/crypto/DeterministicKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Address;->toBase58()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setInfo(Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->info:Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore$Info;

    return-void
.end method

.method public setMnemonicPath(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    return-void
.end method

.method public setXpub(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->xpub:Ljava/lang/String;

    return-void
.end method
