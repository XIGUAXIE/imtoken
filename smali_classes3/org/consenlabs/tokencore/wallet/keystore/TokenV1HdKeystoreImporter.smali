.class public Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;
.super Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;
.source "TokenV1HdKeystoreImporter.java"


# static fields
.field private static final SCRYPT_ROUND_ANDROID:I = 0x10000

.field private static final SCRYPT_ROUND_IOS:I = 0x40000


# instance fields
.field private derivedKey:[B

.field private encPrivKeysObj:Lorg/json/JSONObject;

.field private ksData:Lorg/json/JSONObject;

.field private mainAddress:Ljava/lang/String;

.field private mnemonicPathPrefix:Ljava/lang/String;

.field private privateKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private decryptEncStr(Lorg/json/JSONObject;)[B
    .locals 2

    const-string v0, "key"

    .line 121
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "encStr"

    .line 122
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nonce"

    .line 123
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->derivedKey:[B

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->decryptByCTRNoPadding([B[B[B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 126
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "EncObj should has encStr and nonce"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptPrivateKey()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->encPrivKeysObj:Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mainAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->decryptEncStr(Lorg/json/JSONObject;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->privateKey:Ljava/lang/String;

    return-void
.end method

.method private exploreEncPrivKeysSection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->ksData:Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mnemonicPathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "encPrivKeys"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->encPrivKeysObj:Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mainAddress:Ljava/lang/String;

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Something may be wrong, encPrivKeys should only have one child"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private exploreKsDataSection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v1, "ksData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->ksData:Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mnemonicPathPrefix:Ljava/lang/String;

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Something may be wrong, ksData should only have one child"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScryptRound()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v1, "imTokenMeta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    return v0

    :cond_1
    :goto_0
    const/high16 v0, 0x10000

    return v0
.end method

.method private initDerivedKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v1, "salt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->getScryptRound()I

    move-result v1

    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->createV1HdSCryptCrypto(Ljava/lang/String;I)Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/foundation/crypto/SCryptCrypto;->generateDerivedKey([B)[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->derivedKey:[B

    return-void
.end method

.method static isValidKeystore(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "ksData"

    .line 35
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private tryImportFromMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v1, "encSeed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->keystore:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->decryptEncStr(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mnemonicPathPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%s/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MNEMONIC"

    .line 116
    invoke-virtual {p0, v2}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->ethereumMetadata(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-static {v2, v0, v1, p1, v3}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    return-object p1
.end method

.method private verifyPassword()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;-><init>()V

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->privateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/consenlabs/tokencore/wallet/address/EthereumAddressCreator;->fromPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dcc703c0e500b653ca82273b7bfad8045d85a470"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mainAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "password_incorrect"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Private key must not be zero"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public importKeystore(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 3

    .line 42
    :try_start_0
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->initDerivedKey(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->exploreKsDataSection()V

    .line 46
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->exploreEncPrivKeysSection()V

    .line 48
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->decryptPrivateKey()V

    .line 50
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->verifyPassword()V

    .line 52
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->tryImportFromMnemonic(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PRIVATE"

    .line 54
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->ethereumMetadata(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->privateKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->mainAddress:Ljava/lang/String;

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 58
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Import address is not equal keystore address"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "keystore_invalid"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
