.class public Lorg/consenlabs/imtoken/walletapi/WalletAPI;
.super Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;
.source "WalletAPI.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->transformToPasswordFreeMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signEthereumTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signBitcoinTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signEOSTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signCosmosTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private parseCosmosCoin(Lcom/facebook/react/bridge/ReadableMap;)Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;
    .locals 3

    const-string v0, "denom"

    .line 1320
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amount"

    .line 1321
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1322
    new-instance p1, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;

    invoke-direct {p1, v0, v1, v2}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;-><init>(Ljava/lang/String;J)V

    return-object p1
.end method

.method private parseCosmosCoins(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;",
            ">;"
        }
    .end annotation

    .line 1312
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1313
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1314
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseCosmosCoin(Lcom/facebook/react/bridge/ReadableMap;)Lorg/consenlabs/tokencore/wallet/transaction/cosmos/Coin;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private serializeSignResult(Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 1256
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 1257
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getSignature()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 1258
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hash"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 1259
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getWtxID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "wtxID"

    invoke-virtual {v0, v1, p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object p1

    .line 1260
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method private signBitcoinTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    .line 1175
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "internalUsed"

    .line 1176
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x1

    add-int/lit8 v3, v2, 0x1

    const-string v2, "outputs"

    .line 1178
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    const-string v4, "segWit"

    .line 1179
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "to"

    .line 1180
    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "amount"

    .line 1181
    invoke-interface {v1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "fee"

    .line 1182
    invoke-interface {v1, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v14, "extra"

    .line 1184
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_0

    .line 1185
    invoke-interface {v1, v14}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v14

    goto :goto_0

    :cond_0
    move-object/from16 v14, v16

    :goto_0
    const-string v15, "password"

    .line 1187
    invoke-interface {v1, v15}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "chainId"

    .line 1188
    invoke-interface {v1, v13}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    move/from16 v18, v3

    const/4 v13, 0x0

    .line 1190
    :goto_1
    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_1

    .line 1191
    invoke-interface {v2, v13}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    move-object/from16 v27, v2

    .line 1193
    new-instance v2, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;

    const-string v12, "txHash"

    .line 1194
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v12, "vout"

    .line 1195
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 1196
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v12, "address"

    .line 1197
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v12, "scriptPubKey"

    .line 1198
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v12, "derivedPath"

    .line 1199
    invoke-interface {v3, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, p2

    move-object/from16 v2, v27

    goto :goto_1

    :cond_1
    const-string v2, "protocol"

    .line 1204
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "BITCOIN"

    if-eqz v3, :cond_2

    .line 1205
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v5

    .line 1207
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x251419

    const/4 v12, -0x1

    if-eq v2, v3, :cond_4

    const v3, 0x24ac68fe

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const-string v2, "OMNI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, -0x1

    :goto_4
    const-string v13, "P2WPKH"

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const-string v1, "propertyId"

    .line 1224
    invoke-interface {v14, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v1, "feeMode"

    .line 1225
    invoke-interface {v14, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x10231

    if-eq v2, v3, :cond_7

    const v3, 0x27e3ae

    if-eq v2, v3, :cond_6

    goto :goto_5

    :cond_6
    const-string v2, "USDT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v12, 0x1

    goto :goto_5

    :cond_7
    const-string v2, "BTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v12, 0x0

    :cond_8
    :goto_5
    if-eqz v12, :cond_a

    const/4 v1, 0x1

    if-ne v12, v1, :cond_9

    const-string v1, "usdtFee"

    .line 1237
    invoke-interface {v14, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v1, "serverPubKey"

    .line 1238
    invoke-interface {v14, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v1, v4

    move-wide v2, v6

    move-wide v4, v8

    move/from16 v6, v16

    move-wide v7, v11

    move-object v9, v13

    move-object v11, v15

    move-object/from16 v12, p2

    .line 1239
    invoke-static/range {v1 .. v12}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signServerPayFeeOmniTx(Ljava/lang/String;JJIJLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/util/List;

    move-result-object v1

    .line 1241
    sget-object v2, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 1242
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {v0, v3}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->serializeSignResult(Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    const/4 v3, 0x1

    .line 1243
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->serializeSignResult(Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v2

    .line 1246
    :cond_9
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "Unsupport fee mode"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_a
    new-instance v12, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;

    move-object v1, v12

    move-object v2, v4

    move-wide v3, v6

    move-wide v5, v8

    move/from16 v7, v16

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;-><init>(Ljava/lang/String;JJILjava/util/List;)V

    .line 1230
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v5, p2

    move-object/from16 v3, v17

    .line 1231
    invoke-virtual {v12, v3, v15, v5}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object/from16 v5, p2

    move-object/from16 v3, v17

    .line 1233
    invoke-virtual {v12, v3, v15, v5}, Lorg/consenlabs/tokencore/wallet/transaction/OmniTransaction;->signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v1

    .line 1235
    :goto_6
    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->serializeSignResult(Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    return-object v1

    .line 1250
    :cond_c
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "Only support Bitcoin or omni network"

    invoke-direct {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object/from16 v5, p2

    move-object/from16 v3, v17

    if-eqz v14, :cond_e

    .line 1211
    invoke-interface {v14}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v16, v1

    .line 1213
    :cond_e
    new-instance v12, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;

    move-object v1, v12

    move-object v2, v4

    move-object v14, v3

    move/from16 v3, v18

    move-object v0, v5

    move-wide v4, v6

    move-wide v6, v8

    move-object v8, v10

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;-><init>(Ljava/lang/String;IJJLjava/util/List;Ljava/util/HashMap;)V

    .line 1215
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1216
    invoke-virtual {v12, v14, v15, v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->signSegWitTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v0

    goto :goto_7

    .line 1218
    :cond_f
    invoke-virtual {v12, v14, v15, v0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;->signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object v0

    :goto_7
    move-object/from16 v1, p0

    .line 1221
    invoke-direct {v1, v0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->serializeSignResult(Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method private signCosmosTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 12

    const-string v0, "password"

    .line 1279
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountNumber"

    .line 1280
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "chainId"

    .line 1282
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "memo"

    .line 1283
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "sequence"

    .line 1284
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v2, "fee"

    .line 1287
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v5, "gas"

    .line 1288
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v8, "amount"

    .line 1289
    invoke-interface {v2, v8}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseCosmosCoins(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v2

    .line 1290
    new-instance v8, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    invoke-direct {v8, v2, v5, v6}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;-><init>(Ljava/util/List;J)V

    .line 1292
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "msgs"

    .line 1293
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 1294
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1295
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    :cond_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;

    move-object v2, p1

    move-object v5, v1

    move-object v6, v8

    move-object v8, v11

    invoke-direct/range {v2 .. v10}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;-><init>(JLjava/lang/String;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;Ljava/lang/String;Ljava/util/List;J)V

    .line 1299
    invoke-virtual {p1, v1, v0, p2}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object p1

    .line 1302
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1303
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    const-string v0, "sign"

    .line 1304
    invoke-virtual {p0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->convertJsonToWritableMap(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object p1

    const-string p2, "hash"

    const-string v0, ""

    .line 1305
    invoke-virtual {p1, p2, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1307
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p2, "unknown_encode"

    invoke-direct {p1, p2}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private signEOSTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 3

    .line 1271
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->readEOSToSignObjs(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;

    move-result-object v0

    const-string v1, "password"

    .line 1272
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    new-instance v2, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;

    invoke-direct {v2, v0}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;-><init>(Ljava/util/List;)V

    const-string v0, "chainId"

    .line 1274
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->signTransactions(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/util/List;

    move-result-object p1

    .line 1275
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->presentEOSSignResult(Ljava/util/List;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    return-object p1
.end method

.method private signEthereumTransaction(Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 10

    const-string v0, "to"

    .line 1152
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1155
    new-instance v2, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;

    invoke-direct {v2, v1}, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/validators/ETHAddressValidator;->validate()Ljava/lang/Void;

    .line 1158
    :cond_0
    new-instance v1, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;

    const-string v2, "nonce"

    .line 1159
    invoke-virtual {p0, p1, v2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v2, "gasPrice"

    .line 1160
    invoke-virtual {p0, p1, v2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v2, "gasLimit"

    .line 1161
    invoke-virtual {p0, p1, v2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1162
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "value"

    .line 1163
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-string v0, "data"

    .line 1164
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "chainId"

    .line 1167
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "password"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumTransaction;->signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    move-result-object p1

    .line 1168
    new-instance p2, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {p2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 1169
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getSignature()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {p2, v1, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object p2

    .line 1170
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;->getTxHash()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hash"

    invoke-virtual {p2, v0, p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object p1

    .line 1171
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method private transformToPasswordFreeMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 4

    .line 1339
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1340
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "derivedKey"

    .line 1341
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1342
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 1343
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v2

    .line 1344
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 1346
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object p1

    .line 1347
    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1348
    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object p1

    new-instance v3, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;

    invoke-direct {v3, v2, v1}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p1, v3}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->setCachedDerivedKey(Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;)V

    const-string p1, "password"

    .line 1350
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public batchECRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 813
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public batchSign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 768
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public cacheDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1051
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public calcExternalAddress(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 705
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$22;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$22;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public checkBiometricMode(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1040
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/WalletAPI$39;

    invoke-direct {p1, p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$39;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)V

    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 68
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public decryptData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 994
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public decryptDataFromIpfs(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 211
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$7;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$7;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public deleteDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1097
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public deriveWalletsFromIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 165
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$5;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$5;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public ecRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 795
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public encryptDataToIpfs(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 191
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$6;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$6;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public eosEcRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 962
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public eosEcSign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 942
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$34;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$34;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public exportIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 122
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public exportKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 658
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$20;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$20;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public exportMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 610
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public exportPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 555
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public exportWalletMetadata(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1113
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public findEOSWalletByAccountName(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 930
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$33;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$33;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public findWalletByKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 406
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public findWalletByMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 338
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public findWalletByPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 524
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public generateMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 230
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/WalletAPI$8;

    invoke-direct {p1, p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$8;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)V

    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getChannel(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1328
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$44;

    invoke-direct {v0, p0}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$44;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)V

    invoke-virtual {p0, v0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1074
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "WalletAPI"

    return-object v0
.end method

.method public importWalletFromKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 377
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public importWalletFromMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 282
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public importWalletFromPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 438
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public migrateEOSDerivingToMnemonicPath(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 976
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$36;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$36;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public mnemonicToPublicKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 240
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$9;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$9;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method parseBigInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .line 695
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "0x"

    .line 696
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 697
    new-instance p2, Ljava/math/BigInteger;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-direct {p2, p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object p2

    .line 699
    :cond_0
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public personalSign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 726
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public privateKeyToPublicKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 254
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method readPermissions(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;",
            ">;"
        }
    .end annotation

    const-string v0, "permissions"

    .line 1132
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1136
    :cond_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1138
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1139
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 1140
    new-instance v3, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;

    invoke-direct {v3}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;-><init>()V

    const-string v4, "parent"

    .line 1141
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1142
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->setParent(Ljava/lang/String;)V

    :cond_1
    const-string v4, "permission"

    .line 1144
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->setPermission(Ljava/lang/String;)V

    const-string v4, "publicKey"

    .line 1145
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->setPublicKey(Ljava/lang/String;)V

    .line 1146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public recoverIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 94
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public removeIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 141
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$4;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$4;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public removeWallet(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 681
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$21;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$21;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public sign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 744
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$24;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$24;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public signAuthenticationMessage(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 892
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public signMessage(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 864
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$29;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$29;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public signTransaction(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 836
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public switchBTCWalletMode(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 877
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$30;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$30;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public tryImportWalletFromUnknownKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 1026
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$38;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$38;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public updateEOSWalletAccountName(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 913
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$32;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$32;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public verifyPassword(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 629
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;-><init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
