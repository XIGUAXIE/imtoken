.class public Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;
.super Ljava/lang/Object;
.source "ImKeyCosmosTransaction.java"

# interfaces
.implements Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSigner;


# instance fields
.field accountNumber:J

.field chainId:Ljava/lang/String;

.field fee:Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;

.field memo:Ljava/lang/String;

.field msgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field sequence:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->accountNumber:J

    .line 102
    iput-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->chainId:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->fee:Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;

    .line 104
    iput-object p5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->memo:Ljava/lang/String;

    .line 105
    iput-object p6, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->msgs:Ljava/util/List;

    .line 106
    iput-wide p7, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->sequence:J

    return-void
.end method

.method private jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .line 110
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 111
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 112
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 113
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method private serializeTx()[B
    .locals 3

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v2, "imkey_cosmos_json_error"

    invoke-direct {v1, v2, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAccountNumber()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 52
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->accountNumber:J

    return-wide v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->chainId:Ljava/lang/String;

    return-object v0
.end method

.method public getCosmosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 214
    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->cosmosPub(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object p2

    invoke-virtual {p2, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x4

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p2}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signVerify([B[B)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 223
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x82

    .line 226
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_signature_verify_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFee()Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;
    .locals 1

    .line 68
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->fee:Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->msgs:Ljava/util/List;

    return-object v0
.end method

.method public getSequence()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 93
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->sequence:J

    return-wide v0
.end method

.method protected selectApplet()V
    .locals 2

    const-string v0, "695F636F736D6F73"

    .line 231
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setAccountNumber(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->accountNumber:J

    return-void
.end method

.method public setChainId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->chainId:Ljava/lang/String;

    return-void
.end method

.method public setFee(Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->fee:Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMsgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->msgs:Ljava/util/List;

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->sequence:J

    return-void
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 14

    move-object v1, p0

    .line 133
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->selectApplet()V

    .line 137
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->serializeTx()[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 138
    fill-array-data v3, :array_0

    .line 141
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    new-array v4, v2, [B

    .line 142
    fill-array-data v4, :array_1

    new-array v7, v2, [B

    .line 143
    fill-array-data v7, :array_2

    new-array v8, v2, [B

    .line 144
    fill-array-data v8, :array_3

    .line 145
    invoke-static {v4, v7}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 146
    invoke-static {v4, v8}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "UTF-8"

    .line 148
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    new-array v8, v2, [B

    const/4 v9, 0x7

    aput-byte v9, v8, v5

    .line 149
    array-length v9, v7

    int-to-byte v9, v9

    aput-byte v9, v8, v6

    .line 150
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    new-array v10, v2, [B

    const/16 v11, 0x8

    aput-byte v11, v10, v5

    .line 151
    array-length v11, v9

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    .line 152
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    move-object/from16 v11, p6

    invoke-virtual {v11, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    new-array v11, v2, [B

    const/16 v12, 0x9

    aput-byte v12, v11, v5

    .line 153
    array-length v12, v4

    int-to-byte v12, v12

    aput-byte v12, v11, v6

    .line 154
    invoke-static {v8, v7}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v7

    invoke-static {v10, v9}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v8

    invoke-static {v7, v8}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v7

    .line 155
    invoke-static {v11, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    invoke-static {v7, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 158
    :goto_0
    invoke-static {v3, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v0, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 161
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v3

    .line 162
    invoke-static {v3}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/Wallet;->signPackage(Lorg/bitcoinj/core/Sha256Hash;)[B

    move-result-object v3

    new-array v4, v6, [B

    aput-byte v5, v4, v5

    new-array v7, v6, [B

    .line 163
    array-length v8, v3

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    invoke-static {v7, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    invoke-static {v4, v3}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    .line 164
    invoke-static {v3, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 166
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->cosmosPrepare(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x14

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ne v5, v7, :cond_1

    const/16 v4, 0x78

    .line 175
    :cond_1
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v3}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 180
    :cond_2
    invoke-static/range {p2 .. p2}, Lim/imkey/imkeylibrary/core/Apdu;->cosmosSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v3

    invoke-virtual {v3, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/16 v3, 0x42

    .line 184
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x82

    .line 185
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x20

    invoke-static {v3, v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 188
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v0, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v5}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getLowS(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v2}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 189
    invoke-static {v3, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 190
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    .line 193
    invoke-virtual {p0, v0, v6}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->getCosmosXpubHex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/EccUtil;->getCompressECKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v2, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdSignature;

    iget-wide v8, v1, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->accountNumber:J

    new-instance v11, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/PubKey;

    invoke-direct {v11, v0}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/PubKey;-><init>(Ljava/lang/String;)V

    iget-wide v12, v1, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->sequence:J

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdSignature;-><init>(JLjava/lang/String;Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/PubKey;J)V

    .line 198
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdTx;

    iget-object v3, v1, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->msgs:Ljava/util/List;

    iget-object v4, v1, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->fee:Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v5, v1, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->memo:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v2, v5}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdTx;-><init>(Ljava/util/List;Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/StdFee;Ljava/util/List;Ljava/lang/String;)V

    .line 201
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/cosmos/ImKeyCosmosTransaction;->jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 203
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 204
    new-instance v2, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;

    const-string v3, ""

    invoke-direct {v2, v0, v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 206
    new-instance v2, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v3, "imkey_cosmos_json_error"

    invoke-direct {v2, v3, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :array_0
    .array-data 1
        0x1t
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x9t
        0x0t
    .end array-data
.end method
