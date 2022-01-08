.class public Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;
.super Ljava/lang/Object;
.source "CosmosTransaction.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/transaction/TransactionSigner;


# instance fields
.field accountNumber:J

.field chainId:Ljava/lang/String;

.field fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

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
.method public constructor <init>(JLjava/lang/String;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;J)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->accountNumber:J

    .line 97
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->chainId:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    .line 99
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->memo:Ljava/lang/String;

    .line 100
    iput-object p6, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->msgs:Ljava/util/List;

    .line 101
    iput-wide p7, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->sequence:J

    return-void
.end method

.method private jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4

    .line 105
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 106
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->ORDER_MAP_ENTRIES_BY_KEYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 107
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 108
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 109
    new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 110
    const-class v2, Ljava/lang/Double;

    new-instance v3, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction$1;

    invoke-direct {v3, p0}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction$1;-><init>(Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;)V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 119
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method private serializeTx()[B
    .locals 3

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v2, "store_wallet_failed"

    invoke-direct {v1, v2, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getAccountNumber()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 47
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->accountNumber:J

    return-wide v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->chainId:Ljava/lang/String;

    return-object v0
.end method

.method public getFee()Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->memo:Ljava/lang/String;

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

    .line 79
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->msgs:Ljava/util/List;

    return-object v0
.end method

.method public getSequence()J
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    .end annotation

    .line 88
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->sequence:J

    return-wide v0
.end method

.method public setAccountNumber(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->accountNumber:J

    return-void
.end method

.method public setChainId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->chainId:Ljava/lang/String;

    return-void
.end method

.method public setFee(Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->memo:Ljava/lang/String;

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

    .line 83
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->msgs:Ljava/util/List;

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->sequence:J

    return-void
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 7

    .line 136
    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance p2, Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPrivate(Ljava/math/BigInteger;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 138
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->serializeTx()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->of([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p2

    .line 140
    iget-object p3, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->r:Ljava/math/BigInteger;

    const/16 v0, 0x20

    invoke-static {p3, v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p3

    .line 141
    iget-object p2, p2, Lorg/bitcoinj/core/ECKey$ECDSASignature;->s:Ljava/math/BigInteger;

    invoke-static {p2, v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bigIntegerToBytesWithZeroPadded(Ljava/math/BigInteger;I)[B

    move-result-object p2

    .line 142
    invoke-static {p3, p2}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p2

    .line 143
    invoke-static {p2}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;

    iget-wide v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->accountNumber:J

    new-instance v4, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;

    invoke-direct {v4, p1}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->sequence:J

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdSignature;-><init>(JLjava/lang/String;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/PubKey;J)V

    .line 147
    new-instance p1, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;

    iget-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->msgs:Ljava/util/List;

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->fee:Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->memo:Ljava/lang/String;

    invoke-direct {p1, p3, v0, p2, v1}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdTx;-><init>(Ljava/util/List;Lorg/consenlabs/tokencore/wallet/transaction/cosmos/StdFee;Ljava/util/List;Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    invoke-direct {p0}, Lorg/consenlabs/tokencore/wallet/transaction/cosmos/CosmosTransaction;->jsonMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 152
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 153
    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    const-string p3, ""

    invoke-direct {p2, p1, p3}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string p3, "store_wallet_failed"

    invoke-direct {p2, p3, p1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
