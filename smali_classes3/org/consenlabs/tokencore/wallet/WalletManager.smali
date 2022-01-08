.class public Lorg/consenlabs/tokencore/wallet/WalletManager;
.super Ljava/lang/Object;
.source "WalletManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static keystoreMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;",
            ">;"
        }
    .end annotation
.end field

.field public static storage:Lorg/consenlabs/tokencore/wallet/KeystoreStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    .line 64
    const-class v0, Lorg/consenlabs/tokencore/wallet/WalletManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindKeystoreById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object p0

    .line 120
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->changePassword(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/Keystore;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    const/4 p1, 0x1

    .line 121
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    return-void
.end method

.method private static checkPathInKeystore(Ljava/util/List;[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 494
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    .line 497
    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getDerivedMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PATH_DIRECTLY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 498
    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static cleanKeystoreDirectory()Z
    .locals 1

    .line 395
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->deleteDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static clearKeystoreMap()V
    .locals 1

    .line 168
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method static createWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->generateWalletFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->writeToFile(Lorg/consenlabs/tokencore/wallet/keystore/Keystore;Ljava/io/File;)V

    .line 78
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object v0
.end method

.method public static decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 1

    const-string v0, "aes-128-ctr"

    .line 464
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "cipher_unsupported"

    if-eqz p1, :cond_1

    const-string p1, "nopadding"

    .line 468
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 472
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 473
    invoke-static {p4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 474
    invoke-static {p0, p3, p1}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->decryptByCTRNoPadding([B[B[B)[B

    move-result-object p0

    return-object p0

    .line 469
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 465
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 6

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 540
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 541
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static eosEcRecover(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 356
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "UTF-8"

    .line 358
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 359
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 361
    :goto_0
    invoke-static {p0, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->recover([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eosEcSign(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 334
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 338
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "UTF-8"

    .line 340
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 341
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    .line 345
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getVersion()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 346
    invoke-virtual {p0, p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->sign([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {p0, p4, p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptPrvKeyFor(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->sign([B[B)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static exportKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 152
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 153
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportMnemonic(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;
    .locals 0

    .line 147
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 148
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;

    move-result-object p0

    return-object p0
.end method

.method public static exportPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 125
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 126
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static exportPrivateKeyByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 130
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->exportPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_0
    instance-of p0, v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    if-eqz p0, :cond_1

    .line 136
    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->exportPrivateKeyByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "Not support keystore"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exportPrivateKeys(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/model/KeyPair;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 143
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static findKeystoreByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
    .locals 4

    .line 405
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 407
    :cond_0
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    .line 409
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    return-object v1
.end method

.method public static findWalletByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 0

    .line 422
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findKeystoreByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 424
    new-instance p1, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {p1, p0}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static findWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    .line 366
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    if-eqz p0, :cond_0

    .line 368
    new-instance v0, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findWalletByKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 0

    .line 268
    invoke-static {p1, p2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->validateKeystore(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    move-result-object p1

    .line 270
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    .line 271
    new-instance p2, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {p2}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    invoke-virtual {p2, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromPrivateKey([B)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method public static findWalletByMnemonic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 6

    const-string v0, " "

    invoke-static {p0, p2}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 277
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 278
    new-instance p2, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 279
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p2

    .line 280
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BITCOIN"

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/0/0"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 288
    :cond_0
    invoke-static {p3}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p2

    .line 289
    new-instance p3, Lorg/consenlabs/tokencore/wallet/model/Network;

    invoke-direct {p3, p1}, Lorg/consenlabs/tokencore/wallet/model/Network;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/model/Network;->isMainnet()Z

    move-result p1

    invoke-static {p0, p1, p4}, Lorg/consenlabs/tokencore/wallet/address/AddressCreatorManager;->getInstance(Ljava/lang/String;ZLjava/lang/String;)Lorg/consenlabs/tokencore/wallet/address/AddressCreator;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivateKeyAsHex()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/consenlabs/tokencore/wallet/address/AddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0

    .line 281
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "invalid_mnemonic_path"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findWalletByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    invoke-static {p0, p2}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ETHEREUM"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;

    invoke-direct {v0, p2}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->validate()Ljava/lang/String;

    .line 262
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Network;

    invoke-direct {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Network;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Network;->isMainnet()Z

    move-result p1

    invoke-static {p0, p1, p3}, Lorg/consenlabs/tokencore/wallet/address/AddressCreatorManager;->getInstance(Ljava/lang/String;ZLjava/lang/String;)Lorg/consenlabs/tokencore/wallet/address/AddressCreator;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/consenlabs/tokencore/wallet/address/AddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method private static flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2

    .line 512
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findKeystoreByAddress(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "address_already_exist"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 521
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->generateWalletFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 522
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->writeToFile(Lorg/consenlabs/tokencore/wallet/keystore/Keystore;Ljava/io/File;)V

    .line 523
    sget-object p1, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance p1, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {p1, p0}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object p1
.end method

.method public static generateMnemonic()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    .line 83
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-static {}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->randomMnemonicCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v0}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static generateWalletFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 382
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getDefaultKeyDirectory()Ljava/io/File;
    .locals 3

    .line 387
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/consenlabs/tokencore/wallet/WalletManager;->storage:Lorg/consenlabs/tokencore/wallet/KeystoreStorage;

    invoke-interface {v1}, Lorg/consenlabs/tokencore/wallet/KeystoreStorage;->getKeystoreDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getDerivedKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 489
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 490
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->derivedKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static importWalletFromKeystore(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    .line 172
    invoke-static {p1, p2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->validateKeystore(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KEYSTORE"

    .line 175
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-virtual {p1, p2}, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    .line 179
    :try_start_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;

    invoke-direct {v0, p1}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/validators/PrivateKeyValidator;->validate()Ljava/lang/String;
    :try_end_0
    .catch Lorg/consenlabs/tokencore/wallet/model/TokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    invoke-static {p0, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "privatekey_invalid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "keystore_contains_invalid_private_key"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    throw p0
.end method

.method public static importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MNEMONIC"

    .line 234
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, " "

    invoke-static {p1, p2}, Lorg/consenlabs/tokencore/wallet/Geeeeet;->sendGet(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 237
    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 238
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "COSMOS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "BITCOIN"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "EOS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "ETHEREUM"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 247
    invoke-static/range {v1 .. v6}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    move-result-object v0

    goto :goto_1

    .line 244
    :cond_3
    invoke-static {p0, p5, v4, p3}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    move-result-object v0

    goto :goto_1

    .line 241
    :cond_4
    invoke-static {p0, p5, v4, p3}, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    move-result-object v0

    .line 251
    :goto_1
    invoke-static {v0, p6}, Lorg/consenlabs/tokencore/wallet/WalletManager;->persistWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x25f3e009 -> :sswitch_3
        0x10ce9 -> :sswitch_2
        0x24ac68fe -> :sswitch_1
        0x76d4d82a -> :sswitch_0
    .end sparse-switch
.end method

.method public static importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    .line 255
    invoke-static/range {v0 .. v6}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method public static importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {p0, p1, p3, p2}, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    move-result-object p0

    .line 215
    invoke-static {p0, p4}, Lorg/consenlabs/tokencore/wallet/WalletManager;->persistWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method public static importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 0

    .line 191
    invoke-static {p0, p2, p1}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    move-result-object p0

    .line 192
    invoke-static {p0, p3}, Lorg/consenlabs/tokencore/wallet/WalletManager;->flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 193
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    return-object p0
.end method

.method public static importWalletFromPrivateKeys(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/consenlabs/tokencore/wallet/model/Metadata;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/consenlabs/tokencore/wallet/Wallet;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EOS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0, p4, p1, p2, p3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    move-result-object p0

    .line 206
    invoke-static {p0, p5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->persistWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "This method is only for importing EOS wallet"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static migrateEOSDerivingToMnemonicPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 9

    .line 430
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    instance-of v1, v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    if-eqz v1, :cond_4

    .line 434
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->verifyPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    .line 441
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->getEncMnemonic()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/foundation/crypto/EncPair;->getEncStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 446
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "m/44\'/194\'/0\'/0/0"

    :cond_1
    move-object v6, p2

    const-string p2, ","

    .line 447
    invoke-virtual {v6, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 448
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->getKeyPathPrivates()Ljava/util/List;

    move-result-object v1

    .line 449
    invoke-static {v1, p2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->checkPathInKeystore(Ljava/util/List;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 454
    :cond_2
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;

    move-result-object p2

    invoke-virtual {p2}, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->getMnemonic()Ljava/lang/String;

    move-result-object p2

    const-string v1, " "

    .line 455
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 456
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p1

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;->create(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    move-result-object p1

    .line 457
    sget-object p2, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {p2, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 458
    invoke-static {p1, p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    .line 459
    new-instance p0, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object p0

    .line 435
    :cond_3
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "password_incorrect"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 432
    :cond_4
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "required_eos_wallet"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mnemonicToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, " "

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->validateMnemonics(Ljava/util/List;)V

    .line 89
    new-instance p0, Lorg/bitcoinj/wallet/DeterministicSeed;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/wallet/DeterministicSeed;-><init>(Ljava/util/List;[BLjava/lang/String;J)V

    .line 90
    invoke-static {}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->builder()Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->seed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/DeterministicKeyChain$Builder;->build()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object p0

    .line 92
    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->generatePath(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p0

    const-string p1, "none"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "eos"

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/DeterministicKey;->getPrivKeyBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->privateToEosPublicKey([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "unknown_encode"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mustFindKeystoreById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;
    .locals 1

    .line 570
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    if-eqz p0, :cond_0

    return-object p0

    .line 572
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "wallet_not_found"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    .line 375
    sget-object v0, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    if-eqz p0, :cond_0

    .line 377
    new-instance v0, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object v0

    .line 376
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "wallet_not_found"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static persistWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 0

    .line 399
    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 400
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/consenlabs/tokencore/wallet/Identity;->addWallet(Lorg/consenlabs/tokencore/wallet/Wallet;)V

    return-object p0
.end method

.method public static privateKeyToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "wif"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 106
    invoke-static {p1, p0}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/core/DumpedPrivateKey;->getKey()Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {p0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p0

    :goto_0
    const-string p1, "eos"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSKey;->privateToEosPublicKey([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/ECKey;->getPublicKeyAsHex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 157
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->verifyPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->delete(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/consenlabs/tokencore/wallet/Identity;->removeWallet(Ljava/lang/String;)V

    .line 163
    sget-object p1, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 159
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "password_incorrect"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scanWallets()V
    .locals 10

    const-string v0, "imTokenMeta"

    .line 593
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDefaultKeyDirectory()Ljava/io/File;

    move-result-object v1

    .line 595
    sget-object v2, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 597
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "identity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "UTF-8"

    .line 600
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v6

    .line 601
    invoke-virtual {v6}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v6

    .line 602
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "version"

    .line 603
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const-string v5, "encMnemonic"

    .line 605
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 606
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/V3MnemonicKeystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    goto :goto_1

    .line 607
    :cond_0
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "EOS"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "chainType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 608
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/LegacyEOSKeystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    goto :goto_1

    .line 610
    :cond_1
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    if-ne v8, v7, :cond_3

    .line 613
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    goto :goto_1

    :cond_3
    const/16 v7, 0x2c

    if-ne v8, v7, :cond_4

    .line 615
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    goto :goto_1

    :cond_4
    const/16 v7, 0x2711

    if-ne v8, v7, :cond_5

    .line 617
    const-class v5, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;

    invoke-static {v6, v5}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 621
    sget-object v6, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 624
    sget-object v6, Lorg/consenlabs/tokencore/wallet/WalletManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static setAccountName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    .line 323
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->verifyPassword(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "password_incorrect"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->setAccountName(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->persistWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method public static switchBTCWalletMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 7

    .line 295
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BITCOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->clone()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 304
    :cond_0
    invoke-virtual {v2, p2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSegWit(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->hasMnemonic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;

    move-result-object v0

    .line 309
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->isMainNet()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p2, v1}, Lorg/consenlabs/tokencore/wallet/model/BIP44Util;->getBTCMnemonicPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->getMnemonic()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 311
    new-instance p2, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, p1, p2, v1}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;-><init>(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    const/4 p1, 0x0

    .line 317
    invoke-static {p2, p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->flushWallet(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    .line 318
    sget-object p1, Lorg/consenlabs/tokencore/wallet/WalletManager;->keystoreMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance p0, Lorg/consenlabs/tokencore/wallet/Wallet;

    invoke-direct {p0, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;-><init>(Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;)V

    return-object p0

    .line 298
    :cond_2
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "Ethereum wallet can\'t switch mode"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tryImportWalletFromUnknownKeystore(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 1

    .line 480
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;->from(Lorg/json/JSONObject;)Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;->importKeystore(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 483
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "keystore_invalid"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 581
    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 582
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 583
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 584
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 585
    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 587
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "keystore_invalid"

    invoke-direct {p1, v0, p0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static validateKeystore(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;
    .locals 1

    .line 551
    const-class v0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    invoke-static {p0, v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->unmarshalKeystore(Ljava/lang/String;Ljava/lang/Class;)Lorg/consenlabs/tokencore/wallet/keystore/WalletKeystore;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;

    .line 552
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->validate()V

    .line 558
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->verifyPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->decryptCiphertext(Ljava/lang/String;)[B

    move-result-object p1

    .line 562
    new-instance v0, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromPrivateKey([B)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/keystore/V3Keystore;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 564
    :cond_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "private_key_address_not_match"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 559
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "mac_unmatch"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :cond_2
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p1, "keystore_invalid"

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeToFile(Lorg/consenlabs/tokencore/wallet/keystore/Keystore;Ljava/io/File;)V
    .locals 2

    .line 529
    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 530
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 531
    invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 533
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "store_wallet_failed"

    invoke-direct {p1, v0, p0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
