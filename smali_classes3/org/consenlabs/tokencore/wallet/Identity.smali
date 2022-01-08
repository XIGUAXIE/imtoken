.class public Lorg/consenlabs/tokencore/wallet/Identity;
.super Ljava/lang/Object;
.source "Identity.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "identity.json"

.field public static final TAG:Ljava/lang/String; = "Identity"

.field public static currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;


# instance fields
.field private keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

.field private wallets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    .line 81
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getWalletIDs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    .line 90
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-direct {v1, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    .line 92
    invoke-direct {p0, p2, p3}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveEthereumWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 93
    invoke-direct {p0, p2, p3, v0}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveBitcoinWallet(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 94
    invoke-direct {p0, p2, p3}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveCosmosWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 95
    sput-object p0, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    return-void
.end method

.method public static createIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Identity;
    .locals 2

    .line 99
    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->randomMnemonicCodes()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-static {p3, v0}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/util/List;)V

    .line 101
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    .line 102
    invoke-virtual {v1, p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    const-string p0, "NEW_IDENTITY"

    .line 104
    invoke-virtual {v1, p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setNetwork(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p4}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    .line 107
    new-instance p0, Lorg/consenlabs/tokencore/wallet/Identity;

    invoke-direct {p0, v1, v0, p1}, Lorg/consenlabs/tokencore/wallet/Identity;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/util/List;Ljava/lang/String;)V

    .line 108
    sput-object p0, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    return-object p0
.end method

.method private deriveBitcoinWallet(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 215
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    const-string v1, "BITCOIN"

    .line 216
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setChainType(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getPasswordHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setNetwork(Ljava/lang/String;)V

    const-string v1, "BTC"

    .line 220
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    const-string v1, "P2WPKH"

    .line 223
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 224
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object p3

    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "m/49\'/0\'/0\'"

    goto :goto_0

    :cond_0
    const-string p3, "m/49\'/1\'/0\'"

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object p3

    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "m/44\'/0\'/0\'"

    goto :goto_0

    :cond_2
    const-string p3, "m/44\'/1\'/0\'"

    .line 229
    :goto_0
    invoke-static {v0, p2, p1, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    move-result-object p1

    .line 230
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->createWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method private deriveCosmosWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 254
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    const-string v1, "COSMOS"

    .line 255
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setChainType(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getPasswordHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    const-string v1, "Cosmos"

    .line 258
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    const-string v1, "m/44\'/118\'/0\'/0/0"

    .line 259
    invoke-static {v0, p2, p1, v1}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->createWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method private deriveEOSWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 244
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    const-string v1, "EOS"

    .line 245
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setChainType(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getPasswordHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    const-string v2, ""

    const-string v4, "m/44\'/194\'/0\'/0/0"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p1

    .line 249
    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    move-result-object p1

    .line 250
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->createWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method private deriveEthereumWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 234
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    const-string v1, "ETHEREUM"

    .line 235
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setChainType(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getPasswordHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    const-string v1, "ETH"

    .line 238
    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    const-string v1, "m/44\'/60\'/0\'/0/0"

    .line 239
    invoke-static {v0, p2, p1, v1}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->createWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method private flush()V
    .locals 3

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "identity.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 207
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 208
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "store_wallet_failed"

    invoke-direct {v1, v2, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;
    .locals 2

    .line 71
    const-class v0, Lorg/consenlabs/tokencore/wallet/Identity;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->tryLoadFromFile()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v1

    sput-object v1, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    .line 75
    :cond_0
    sget-object v1, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static recoverIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Identity;
    .locals 1

    const-string v0, " "

    invoke-static {p4, p0}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 115
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    .line 116
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setPasswordHint(Ljava/lang/String;)V

    const-string p1, "RECOVERED_IDENTITY"

    .line 118
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p4}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setNetwork(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p5}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    .line 121
    new-instance p1, Lorg/consenlabs/tokencore/wallet/Identity;

    invoke-direct {p1, v0, p0, p2}, Lorg/consenlabs/tokencore/wallet/Identity;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    sput-object p1, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    return-object p1
.end method

.method private static tryLoadFromFile()Lorg/consenlabs/tokencore/wallet/Identity;
    .locals 4

    .line 192
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "identity.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v3, 0x0

    .line 194
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    .line 195
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 196
    const-class v2, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    .line 197
    new-instance v1, Lorg/consenlabs/tokencore/wallet/Identity;

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/Identity;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getWalletIDs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->flush()V

    return-void
.end method

.method public decryptDataFromIPFS(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "invalid_encryption_data_signature"

    .line 307
    invoke-static/range {p1 .. p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 309
    aget-byte v4, v2, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/16 v4, 0x35

    new-array v4, v4, [B

    const/16 v5, 0x15

    .line 315
    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x4

    new-array v7, v6, [B

    const/4 v8, 0x1

    .line 318
    invoke-static {v2, v8, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x5

    .line 321
    iget-object v9, v0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v9}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getEncKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/16 v10, 0x10

    new-array v11, v10, [B

    .line 323
    invoke-static {v2, v7, v11, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    new-instance v7, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v7, v2, v5}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 326
    invoke-virtual {v7}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result v12

    add-int/2addr v12, v5

    .line 327
    iget-wide v13, v7, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int v14, v13

    new-array v13, v14, [B

    .line 328
    iget-wide v14, v7, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int v15, v14

    invoke-static {v2, v12, v13, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    invoke-static {v13}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->merkleHash([B)[B

    move-result-object v14

    const/16 v15, 0x20

    invoke-static {v14, v3, v4, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v14, v12

    .line 330
    iget-wide v6, v7, Lorg/bitcoinj/core/VarInt;->value:J

    add-long/2addr v14, v6

    long-to-int v5, v14

    .line 331
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 332
    new-instance v7, Ljava/lang/String;

    invoke-static {v13, v6, v11}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->decryptByCBC([B[B[B)[B

    move-result-object v6

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v6, 0x41

    new-array v9, v6, [B

    .line 335
    invoke-static {v2, v5, v9, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    :try_start_0
    invoke-static {v9}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->ecRecover([BLjava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    new-array v4, v8, [B

    const/4 v5, 0x4

    aput-byte v5, v4, v3

    const/16 v3, 0x40

    .line 338
    invoke-static {v2, v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    invoke-static {v4, v2}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    .line 339
    new-instance v3, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;

    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;->sha2_256:Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;

    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v2

    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;-><init>(Lorg/consenlabs/tokencore/foundation/crypto/Multihash$Type;[B)V

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/foundation/crypto/Multihash;->toBase58()Ljava/lang/String;

    move-result-object v2

    .line 341
    iget-object v3, v0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getIpfsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v7

    .line 342
    :cond_0
    new-instance v2, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v2, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :catch_0
    new-instance v2, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v2, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_1
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "unsupport_encryption_data_version"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteIdentity(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->verifyPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->cleanKeystoreDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->clearKeystoreMap()V

    const/4 p1, 0x0

    .line 133
    sput-object p1, Lorg/consenlabs/tokencore/wallet/Identity;->currentIdentity:Lorg/consenlabs/tokencore/wallet/Identity;

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "password_incorrect"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deriveWallets(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p0, p2}, Lorg/consenlabs/tokencore/wallet/Identity;->exportIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "COSMOS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "BITCOIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "EOS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "ETHEREUM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_1

    .line 177
    invoke-direct {p0, v1, p2}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveCosmosWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v2

    goto :goto_2

    .line 180
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    new-array p2, v8, [Ljava/lang/Object;

    aput-object v2, p2, v5

    const-string v0, "Doesn\'t support deriving %s wallet"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveEOSWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v2

    goto :goto_2

    .line 171
    :cond_3
    invoke-direct {p0, v1, p2}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveEthereumWallet(Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v2

    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lorg/consenlabs/tokencore/wallet/Identity;->deriveBitcoinWallet(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v2

    .line 182
    :goto_2
    invoke-virtual {p0, v2}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x25f3e009 -> :sswitch_3
        0x10ce9 -> :sswitch_2
        0x24ac68fe -> :sswitch_1
        0x76d4d82a -> :sswitch_0
    .end sparse-switch
.end method

.method public encryptDataToIPFS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 264
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    const/16 v2, 0x10

    .line 265
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v2

    .line 266
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/consenlabs/tokencore/wallet/Identity;->encryptDataToIPFS(Ljava/lang/String;J[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method encryptDataToIPFS(Ljava/lang/String;J[B)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x35

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 276
    invoke-static {p2, p3, v3, v1}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayLE(J[BI)V

    const/4 p2, 0x1

    .line 277
    invoke-static {v3, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getEncKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x10

    const/4 v2, 0x5

    .line 280
    invoke-static {p4, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    const-string v2, "UTF-8"

    .line 283
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, p3, p4}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->encryptByCBC([B[B[B)[B

    move-result-object p1

    .line 284
    new-instance p3, Lorg/bitcoinj/core/VarInt;

    array-length p4, p1

    int-to-long v2, p4

    invoke-direct {p3, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    .line 286
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->merkleHash([B)[B

    move-result-object p4

    const/16 v2, 0x15

    const/16 v3, 0x20

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signHex(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 289
    invoke-virtual {p3}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result p4

    add-int/2addr p4, v2

    int-to-long v3, p4

    iget-wide v5, p3, Lorg/bitcoinj/core/VarInt;->value:J

    add-long/2addr v3, v5

    const-wide/16 v5, 0x41

    add-long/2addr v3, v5

    long-to-int p4, v3

    .line 290
    new-array p4, p4, [B

    .line 292
    invoke-static {v0, v1, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    invoke-virtual {p3}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p3}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result v3

    invoke-static {v0, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    invoke-virtual {p3}, Lorg/bitcoinj/core/VarInt;->getSizeInBytes()I

    move-result v0

    add-int/2addr v2, v0

    .line 296
    iget-wide v3, p3, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int v0, v3

    invoke-static {p1, v1, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-wide v3, p3, Lorg/bitcoinj/core/VarInt;->value:J

    long-to-int p1, v3

    add-int/2addr v2, p1

    const/16 p1, 0x41

    .line 299
    invoke-static {p2, v1, p4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-static {p4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public exportIdentity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->decryptMnemonic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpfsId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getIpfsId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getWallets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    return-object v0
.end method

.method removeWallet(Ljava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getWalletIDs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->wallets:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->flush()V

    return-void
.end method

.method public signAuthenticationMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 353
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/Identity;->keystore:Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/IdentityKeystore;->getEncAuthKey()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->decryptEncPair(Ljava/lang/String;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)[B

    move-result-object p3

    .line 355
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Identity;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "%d.%s.%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {p1, p3}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signStr(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
