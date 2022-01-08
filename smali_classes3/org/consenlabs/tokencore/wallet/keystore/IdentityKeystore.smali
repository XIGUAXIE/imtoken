.class public Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
.source "IdentityKeystore.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;


# static fields
.field private static final VERSION:I = 0x2710


# instance fields
.field private encAuthKey:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private encKey:Ljava/lang/String;

.field private encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private identifier:Ljava/lang/String;

.field private ipfsId:Ljava/lang/String;

.field private metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

.field private mnemonicPath:Ljava/lang/String;

.field private walletIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->walletIDs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/Keystore;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->walletIDs:Ljava/util/List;

    .line 83
    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 85
    new-instance v0, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v3, 0x0

    const-string v4, ""

    const-wide/16 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 87
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicSeed;->getSeedBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/crypto/HDKeyDerivation;->createMasterPrivateKey([B)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Automatic Backup Key Mainnet"

    goto :goto_0

    :cond_0
    const-string v2, "Automatic Backup Key Testnet"

    :goto_0
    const-string v3, "ASCII"

    .line 91
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->hmacSHA256([B[B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    .line 92
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v4, "Authentication Key"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->hmacSHA256([B[B)[B

    move-result-object v3

    .line 93
    invoke-static {v3}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    .line 95
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v5

    .line 97
    :goto_1
    invoke-virtual {v4}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v4

    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getAddressHeader()I

    move-result v6

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "0fdc0c"

    aput-object v10, v8, v9

    const/4 v10, 0x1

    int-to-byte v6, v6

    .line 102
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v10

    const/4 v6, 0x2

    int-to-byte v10, v6

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v6

    const/4 v6, 0x3

    aput-object v4, v8, v6

    const-string v4, "%s%02x%02x%s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 104
    invoke-static {v4}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v6

    invoke-static {v6, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 105
    invoke-static {v4, v6}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 106
    invoke-static {v4}, Lorg/bitcoinj/core/Base58;->encode([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->identifier:Ljava/lang/String;

    .line 108
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v6, "Encryption Key"

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->hmacSHA256([B[B)[B

    move-result-object v1

    .line 109
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encKey:Ljava/lang/String;

    .line 111
    invoke-static {v1, v9}, Lorg/bitcoinj/core/ECKey;->fromPrivate([BZ)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    .line 112
    new-instance v4, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;

    sget-object v6, Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;->sha2_256:Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;-><init>(Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;[B)V

    invoke-virtual {v4}, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;->toBase58()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->ipfsId:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v5}, Lorg/bitcoinj/crypto/DeterministicKey;->serializePrivB58(Lorg/bitcoinj/core/NetworkParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p3, v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p3, v3}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v1

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encAuthKey:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    const-string v1, " "

    .line 116
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 117
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    .line 118
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/DateUtil;->getUTCTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setTimestamp(J)V

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    .line 122
    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const/16 p1, 0x2710

    .line 124
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->version:I

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->walletIDs:Ljava/util/List;

    return-void
.end method


# virtual methods
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

.method public getEncAuthKey()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encAuthKey:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getEncKey()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIpfsId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->ipfsId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonGetter;
        value = "imTokenMeta"
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    return-object v0
.end method

.method public getMnemonicPath()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->mnemonicPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWalletIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->walletIDs:Ljava/util/List;

    return-object v0
.end method

.method public setEncAuthKey(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encAuthKey:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setEncKey(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encKey:Ljava/lang/String;

    return-void
.end method

.method public setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setIpfsId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->ipfsId:Ljava/lang/String;

    return-void
.end method

.method public setMetadata(Lorg/consenlabs/tokencore/wallet/model/Metadata;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    return-void
.end method

.method public setMnemonicPath(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->mnemonicPath:Ljava/lang/String;

    return-void
.end method

.method public setWalletIDs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->walletIDs:Ljava/util/List;

    return-void
.end method
