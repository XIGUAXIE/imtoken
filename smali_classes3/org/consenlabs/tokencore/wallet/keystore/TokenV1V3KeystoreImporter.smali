.class public Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;
.super Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;
.source "TokenV1V3KeystoreImporter.java"


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method static isValidKeystore(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "version"

    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method


# virtual methods
.method public importKeystore(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
    .locals 4

    const-string v0, "PRIVATE"

    .line 28
    invoke-virtual {p0, v0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;->ethereumMetadata(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v2, "imTokenMeta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;->keystore:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromKeystore(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v2, "address"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 36
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Import address is not equal keystore address"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :catch_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "Keystore does contain address"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
