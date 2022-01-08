.class public Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;
.super Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
.source "V3MnemonicKeystore.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/keystore/EncMnemonicKeystore;
.implements Lorg/consenlabs/tokencore/wallet/keystore/ExportableKeystore;


# static fields
.field private static final VERSION:I = 0x3


# instance fields
.field private encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private mnemonicPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 58
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;-><init>()V

    .line 59
    invoke-static {p3}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 60
    new-instance v6, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 61
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    .line 63
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    .line 64
    invoke-static {p4}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, p4, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object p4

    .line 67
    invoke-static {p2, p4}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->createPBKDF2CryptoWithKDFCached(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    .line 68
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    const-string v1, " "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->deriveEncPair(Ljava/lang/String;[B)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 69
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->crypto:Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    .line 71
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lorg/consenlabs/tokencore/wallet/address/AddressCreatorManager;->getInstance(Ljava/lang/String;ZLjava/lang/String;)Lorg/consenlabs/tokencore/wallet/address/AddressCreator;

    move-result-object p2

    invoke-interface {p2, p4}, Lorg/consenlabs/tokencore/wallet/address/AddressCreator;->fromPrivateKey([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->address:Ljava/lang/String;

    .line 72
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/DateUtil;->getUTCTime()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setTimestamp(J)V

    const-string p2, "V3"

    .line 73
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setWalletType(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    const/4 p1, 0x3

    .line 75
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->version:I

    .line 76
    invoke-static {p5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->id:Ljava/lang/String;

    return-void
.end method

.method public static create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;
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
            "Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;"
        }
    .end annotation

    .line 54
    new-instance v6, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    const-string v5, ""

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;
    .locals 6

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, " "

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 85
    new-instance p1, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->metadata:Lorg/consenlabs/tokencore/wallet/model/Metadata;

    iget-object v4, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->id:Ljava/lang/String;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

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

.method public getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getMnemonicPath()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    return-object v0
.end method

.method public setEncMnemonic(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->encMnemonic:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setMnemonicPath(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->mnemonicPath:Ljava/lang/String;

    return-void
.end method
