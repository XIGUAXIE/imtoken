.class public abstract Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;
.super Ljava/lang/Object;
.source "KeystoreImporter.java"


# instance fields
.field keystore:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;->keystore:Lorg/json/JSONObject;

    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;->isValidKeystore(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1HdKeystoreImporter;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;->isValidKeystore(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;

    invoke-direct {v0, p0}, Lorg/consenlabs/tokencore/wallet/keystore/TokenV1V3KeystoreImporter;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    .line 25
    :cond_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "keystore_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseWalletName()Ljava/lang/String;
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;->keystore:Lorg/json/JSONObject;

    const-string v1, "imTokenMeta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "This keystore doesn\'t has metadata"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method ethereumMetadata(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/Metadata;
    .locals 1

    .line 41
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/Metadata;

    invoke-direct {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/keystore/KeystoreImporter;->parseWalletName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setName(Ljava/lang/String;)V

    const-string p1, "ETHEREUM"

    .line 45
    invoke-virtual {v0, p1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setChainType(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract importKeystore(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;
.end method
