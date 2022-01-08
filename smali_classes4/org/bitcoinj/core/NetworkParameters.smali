.class public abstract Lorg/bitcoinj/core/NetworkParameters;
.super Ljava/lang/Object;
.source "NetworkParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;
    }
.end annotation


# static fields
.field public static final BIP16_ENFORCE_TIME:I = 0x4f779a80

.field public static final ID_MAINNET:Ljava/lang/String; = "org.bitcoin.production"

.field public static final ID_REGTEST:Ljava/lang/String; = "org.bitcoin.regtest"

.field public static final ID_TESTNET:Ljava/lang/String; = "org.bitcoin.test"

.field public static final ID_UNITTESTNET:Ljava/lang/String; = "org.bitcoinj.unittest"

.field public static final INTERVAL:I = 0x7e0

.field public static final MAX_COINS:J = 0x1406f40L

.field public static final MAX_MONEY:Lorg/bitcoinj/core/Coin;

.field public static final PAYMENT_PROTOCOL_ID_MAINNET:Ljava/lang/String; = "main"

.field public static final PAYMENT_PROTOCOL_ID_REGTEST:Ljava/lang/String; = "regtest"

.field public static final PAYMENT_PROTOCOL_ID_TESTNET:Ljava/lang/String; = "test"

.field public static final PAYMENT_PROTOCOL_ID_UNIT_TESTS:Ljava/lang/String; = "unittest"

.field public static final SATOSHI_KEY:[B

.field public static final TARGET_SPACING:I = 0x258

.field public static final TARGET_TIMESPAN:I = 0x127500


# instance fields
.field protected acceptableAddressCodes:[I

.field protected addrSeeds:[I

.field protected addressHeader:I

.field protected alertSigningKey:[B

.field protected bip32HeaderPriv:I

.field protected bip32HeaderPub:I

.field protected checkpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field protected transient defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

.field protected dnsSeeds:[Ljava/lang/String;

.field protected dumpedPrivateKeyHeader:I

.field protected genesisBlock:Lorg/bitcoinj/core/Block;

.field protected httpSeeds:[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

.field protected id:Ljava/lang/String;

.field protected interval:I

.field protected majorityEnforceBlockUpgrade:I

.field protected majorityRejectBlockOutdated:I

.field protected majorityWindow:I

.field protected maxTarget:Ljava/math/BigInteger;

.field protected p2shHeader:I

.field protected packetMagic:J

.field protected port:I

.field protected spendableCoinbaseDepth:I

.field protected subsidyDecreaseBlockCount:I

.field protected targetTimespan:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    const-string v1, "04fc9702847840aaf195de8442ebecedf5b095cdbb9bc716bda9110971b28a49e0ead8564ff0db22209e0374782c093bb899692d524e9d6a6956e7c5ecbcd68284"

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters;->SATOSHI_KEY:[B

    .line 157
    sget-object v0, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    const-wide/32 v1, 0x1406f40

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/NetworkParameters;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    .line 106
    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->httpSeeds:[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

    .line 111
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters;->SATOSHI_KEY:[B

    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->alertSigningKey:[B

    .line 112
    invoke-static {p0}, Lorg/bitcoinj/core/NetworkParameters;->createGenesis(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Block;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->genesisBlock:Lorg/bitcoinj/core/Block;

    return-void
.end method

.method private static createGenesis(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Block;
    .locals 5

    .line 116
    new-instance v0, Lorg/bitcoinj/core/Block;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/bitcoinj/core/Block;-><init>(Lorg/bitcoinj/core/NetworkParameters;J)V

    .line 117
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 122
    :try_start_0
    sget-object v2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    const-string v3, "04ffff001d0104455468652054696d65732030332f4a616e2f32303039204368616e63656c6c6f72206f6e206272696e6b206f66207365636f6e64206261696c6f757420666f722062616e6b73"

    .line 123
    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 124
    new-instance v3, Lorg/bitcoinj/core/TransactionInput;

    invoke-direct {v3, p0, v1, v2}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[B)V

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 125
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    sget-object v3, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    const-string v4, "04678afdb0fe5548271967f1a67130b7105cd6a828e03909a67962e0ea1f61deb649f6bc3f4cef38c4f35504e51ec112de5c384df7ba0b8d578a4c702b6bf11d5f"

    .line 127
    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    const/16 v3, 0xac

    .line 128
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    new-instance v3, Lorg/bitcoinj/core/TransactionOutput;

    sget-object v4, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v3, p0, v1, v4, v2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Block;->addTransaction(Lorg/bitcoinj/core/Transaction;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "org.bitcoin.production"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "org.bitcoin.test"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "org.bitcoinj.unittest"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-static {}, Lorg/bitcoinj/params/UnitTestParams;->get()Lorg/bitcoinj/params/UnitTestParams;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "org.bitcoin.regtest"

    .line 225
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 226
    invoke-static {}, Lorg/bitcoinj/params/RegTestParams;->get()Lorg/bitcoinj/params/RegTestParams;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromPmtProtocolID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "main"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "test"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "unittest"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-static {}, Lorg/bitcoinj/params/UnitTestParams;->get()Lorg/bitcoinj/params/UnitTestParams;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "regtest"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 242
    invoke-static {}, Lorg/bitcoinj/params/RegTestParams;->get()Lorg/bitcoinj/params/RegTestParams;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prodNet()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-static {}, Lorg/bitcoinj/params/MainNetParams;->get()Lorg/bitcoinj/params/MainNetParams;

    move-result-object v0

    return-object v0
.end method

.method public static regTests()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-static {}, Lorg/bitcoinj/params/RegTestParams;->get()Lorg/bitcoinj/params/RegTestParams;

    move-result-object v0

    return-object v0
.end method

.method public static testNet()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    return-object v0
.end method

.method public static testNet2()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-static {}, Lorg/bitcoinj/params/TestNet2Params;->get()Lorg/bitcoinj/params/TestNet2Params;

    move-result-object v0

    return-object v0
.end method

.method public static testNet3()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {}, Lorg/bitcoinj/params/TestNet3Params;->get()Lorg/bitcoinj/params/TestNet3Params;

    move-result-object v0

    return-object v0
.end method

.method public static unitTests()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-static {}, Lorg/bitcoinj/params/UnitTestParams;->get()Lorg/bitcoinj/params/UnitTestParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowEmptyPeerChain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract checkDifficultyTransitions(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/store/BlockStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAcceptableAddressCodes()[I
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->acceptableAddressCodes:[I

    return-object v0
.end method

.method public getAddrSeeds()[I
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->addrSeeds:[I

    return-object v0
.end method

.method public getAddressHeader()I
    .locals 1

    .line 325
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->addressHeader:I

    return v0
.end method

.method public getAlertSigningKey()[B
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->alertSigningKey:[B

    return-object v0
.end method

.method public getBip32HeaderPriv()I
    .locals 1

    .line 390
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->bip32HeaderPriv:I

    return v0
.end method

.method public getBip32HeaderPub()I
    .locals 1

    .line 385
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->bip32HeaderPub:I

    return v0
.end method

.method public getBlockVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Lorg/bitcoinj/utils/VersionTally;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/core/Block$VerifyFlag;",
            ">;"
        }
    .end annotation

    .line 487
    const-class p3, Lorg/bitcoinj/core/Block$VerifyFlag;

    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    .line 489
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->isBIP34()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2

    .line 490
    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/utils/VersionTally;->getCountAtOrAbove(J)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getMajorityEnforceBlockUpgrade()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 492
    sget-object p1, Lorg/bitcoinj/core/Block$VerifyFlag;->HEIGHT_IN_COINBASE:Lorg/bitcoinj/core/Block$VerifyFlag;

    invoke-virtual {p3, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p3
.end method

.method public final getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

    if-nez v0, :cond_1

    .line 431
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/NetworkParameters;->getSerializer(Z)Lorg/bitcoinj/core/BitcoinSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

    .line 440
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 442
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->defaultSerializer:Lorg/bitcoinj/core/MessageSerializer;

    return-object v0
.end method

.method public getDnsSeeds()[Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->dnsSeeds:[Ljava/lang/String;

    return-object v0
.end method

.method public getDumpedPrivateKeyHeader()I
    .locals 1

    .line 337
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->dumpedPrivateKeyHeader:I

    return v0
.end method

.method public getGenesisBlock()Lorg/bitcoinj/core/Block;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->genesisBlock:Lorg/bitcoinj/core/Block;

    return-object v0
.end method

.method public getHttpSeeds()[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->httpSeeds:[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 367
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->interval:I

    return v0
.end method

.method public getMajorityEnforceBlockUpgrade()I
    .locals 1

    .line 456
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->majorityEnforceBlockUpgrade:I

    return v0
.end method

.method public getMajorityRejectBlockOutdated()I
    .locals 1

    .line 465
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->majorityRejectBlockOutdated:I

    return v0
.end method

.method public getMajorityWindow()I
    .locals 1

    .line 473
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->majorityWindow:I

    return v0
.end method

.method public abstract getMaxMoney()Lorg/bitcoinj/core/Coin;
.end method

.method public getMaxTarget()Ljava/math/BigInteger;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->maxTarget:Ljava/math/BigInteger;

    return-object v0
.end method

.method public abstract getMinNonDustOutput()Lorg/bitcoinj/core/Coin;
.end method

.method public abstract getMonetaryFormat()Lorg/bitcoinj/utils/MonetaryFormat;
.end method

.method public getP2SHHeader()I
    .locals 1

    .line 332
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->p2shHeader:I

    return v0
.end method

.method public getPacketMagic()J
    .locals 2

    .line 316
    iget-wide v0, p0, Lorg/bitcoinj/core/NetworkParameters;->packetMagic:J

    return-wide v0
.end method

.method public abstract getPaymentProtocolId()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .line 311
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->port:I

    return v0
.end method

.method public abstract getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I
.end method

.method public abstract getSerializer(Z)Lorg/bitcoinj/core/BitcoinSerializer;
.end method

.method public getSpendableCoinbaseDepth()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->spendableCoinbaseDepth:I

    return v0
.end method

.method public getSubsidyDecreaseBlockCount()I
    .locals 1

    .line 276
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->subsidyDecreaseBlockCount:I

    return v0
.end method

.method public getTargetTimespan()I
    .locals 1

    .line 346
    iget v0, p0, Lorg/bitcoinj/core/NetworkParameters;->targetTimespan:I

    return v0
.end method

.method public getTransactionVerificationFlags(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/utils/VersionTally;Ljava/lang/Integer;)Ljava/util/EnumSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Block;",
            "Lorg/bitcoinj/core/Transaction;",
            "Lorg/bitcoinj/utils/VersionTally;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;"
        }
    .end annotation

    .line 510
    const-class p2, Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 511
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const-wide/32 v2, 0x4f779a80

    cmp-long p4, v0, v2

    if-ltz p4, :cond_0

    .line 512
    sget-object p4, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-virtual {p2, p4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 517
    invoke-virtual {p3, v2, v3}, Lorg/bitcoinj/utils/VersionTally;->getCountAtOrAbove(J)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getMajorityEnforceBlockUpgrade()I

    move-result p3

    if-le p1, p3, :cond_1

    .line 518
    sget-object p1, Lorg/bitcoinj/script/Script$VerifyFlag;->CHECKLOCKTIMEVERIFY:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method

.method public abstract getUriScheme()Ljava/lang/String;
.end method

.method public abstract hasMaxMoney()Z
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCheckpoint(I)Z
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Sha256Hash;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public passesCheckpoint(ILorg/bitcoinj/core/Sha256Hash;)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/bitcoinj/core/NetworkParameters;->checkpoints:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Sha256Hash;

    if-eqz p1, :cond_1

    .line 264
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
