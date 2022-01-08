.class abstract Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "TokenBaseJavaModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;
    }
.end annotation


# static fields
.field public static sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/RNArgumentMapper;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/RNArgumentMapper;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 75
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 77
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getCreatedAt()J

    move-result-wide v3

    const-string v1, "createdAt"

    invoke-virtual {v0, v1, v3, v4}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;J)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 78
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 79
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chainType"

    invoke-virtual {v0, v3, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 81
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BITCOIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSource()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WIF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    const/4 v3, 0x1

    .line 84
    invoke-virtual {p0, v3}, Lorg/consenlabs/tokencore/wallet/Wallet;->newReceiveAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "EXTERNAL"

    .line 85
    invoke-virtual {v1, v2, v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v1

    const-string v2, "derivedPath"

    const-string v3, "0/1"

    .line 86
    invoke-virtual {v1, v2, v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    const-string v2, "externalAddress"

    .line 87
    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 88
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getEncXPub()Ljava/lang/String;

    move-result-object v1

    const-string v2, "encXPub"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 90
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getSegWit()Ljava/lang/String;

    move-result-object v1

    const-string v2, "segWit"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EOS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeyPathPrivates()Ljava/util/List;

    move-result-object p0

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;

    .line 98
    sget-object v3, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v3}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 99
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "publicKey"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getDerivedMode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "derivedMode"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "path"

    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_3
    const-string p0, "publicKeys"

    .line 104
    invoke-virtual {v0, p0, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    :cond_4
    return-object v0
.end method


# virtual methods
.method asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 45
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$1;-><init>(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;Lcom/facebook/react/bridge/Promise;Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;)V

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method convertJsonToWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 219
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 220
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 221
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->convertJsonToWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 222
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 223
    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->convertJsonToWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 224
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 225
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    goto :goto_1

    .line 226
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 227
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_1

    .line 228
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 229
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_1

    .line 230
    :cond_4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 231
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method convertJsonToWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 189
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 192
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 193
    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v3}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->convertJsonToWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 194
    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 195
    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->convertJsonToWritableArray(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 196
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 197
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 198
    :cond_3
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 199
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_5

    .line 201
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 202
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 203
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert JSONObject to WritableMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v0
.end method

.method convertMapToWritableMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 177
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->convertJsonToWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .line 110
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "0x"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    new-instance p2, Ljava/math/BigInteger;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-direct {p2, p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object p2

    .line 114
    :cond_0
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method parseEthereumTransaction(Lcom/facebook/react/bridge/ReadableMap;)Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;
    .locals 8

    .line 119
    new-instance v7, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;

    const-string v0, "nonce"

    .line 120
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v0, "gasPrice"

    .line 121
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "gasLimit"

    .line 122
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "to"

    .line 123
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "value"

    .line 124
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v0, "data"

    .line 125
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v7
.end method

.method presentEOSSignResult(Ljava/util/List;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;",
            ">;)",
            "Lcom/facebook/react/bridge/ReadableArray;"
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 160
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->getSigned()Ljava/util/List;

    move-result-object v3

    .line 161
    sget-object v4, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v4}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 162
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 163
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 166
    :cond_0
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    const-string v5, "signs"

    .line 167
    invoke-virtual {v3, v5, v4}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v3

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;

    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hash"

    invoke-virtual {v3, v5, v4}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 170
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method readEOSToSignObjs(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;",
            ">;"
        }
    .end annotation

    const-string v0, "transactions"

    .line 136
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 139
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    .line 141
    new-instance v4, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;

    invoke-direct {v4}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;-><init>()V

    const-string v5, "txHex"

    .line 143
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->setTxHex(Ljava/lang/String;)V

    const-string v5, "publicKeys"

    .line 145
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 147
    :goto_1
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 148
    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {v4, v5}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->setPublicKeys(Ljava/util/List;)V

    .line 152
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
