.class public Lorg/bitcoinj/params/TestNet2Params;
.super Lorg/bitcoinj/params/AbstractBitcoinNetParams;
.source "TestNet2Params.java"


# static fields
.field public static final TESTNET_MAJORITY_ENFORCE_BLOCK_UPGRADE:I = 0x33

.field public static final TESTNET_MAJORITY_REJECT_BLOCK_OUTDATED:I = 0x4b

.field public static final TESTNET_MAJORITY_WINDOW:I = 0x64

.field private static instance:Lorg/bitcoinj/params/TestNet2Params;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;-><init>()V

    const-string v0, "org.bitcoin.test"

    .line 34
    iput-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->id:Ljava/lang/String;

    const-wide v0, 0xfabfb5daL

    .line 35
    iput-wide v0, p0, Lorg/bitcoinj/params/TestNet2Params;->packetMagic:J

    const/16 v0, 0x479d

    .line 36
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->port:I

    const/16 v0, 0x6f

    .line 37
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->addressHeader:I

    const/16 v0, 0xc4

    .line 38
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->p2shHeader:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 39
    iget v1, p0, Lorg/bitcoinj/params/TestNet2Params;->addressHeader:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/params/TestNet2Params;->p2shHeader:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->acceptableAddressCodes:[I

    const/16 v0, 0x7e0

    .line 40
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->interval:I

    const v0, 0x127500

    .line 41
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->targetTimespan:I

    const-wide/32 v0, 0x1d0fffff

    .line 42
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->maxTarget:Ljava/math/BigInteger;

    const/16 v0, 0xef

    .line 43
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->dumpedPrivateKeyHeader:I

    .line 44
    iget-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v1, 0x4d49e5da

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setTime(J)V

    .line 45
    iget-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v1, 0x1d07fff8

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setDifficultyTarget(J)V

    .line 46
    iget-object v0, p0, Lorg/bitcoinj/params/TestNet2Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v1, 0x16ec0bff    # 1.90001995E-315

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setNonce(J)V

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->spendableCoinbaseDepth:I

    const v1, 0x33450

    .line 48
    iput v1, p0, Lorg/bitcoinj/params/TestNet2Params;->subsidyDecreaseBlockCount:I

    .line 49
    iget-object v1, p0, Lorg/bitcoinj/params/TestNet2Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00000007199508e34a9ff81e6ec0c477a4cccff2a4767a8eee39c11db367b008"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lorg/bitcoinj/params/TestNet2Params;->dnsSeeds:[Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/bitcoinj/params/TestNet2Params;->addrSeeds:[I

    const v1, 0x43587cf

    .line 53
    iput v1, p0, Lorg/bitcoinj/params/TestNet2Params;->bip32HeaderPub:I

    const v1, 0x4358394

    .line 54
    iput v1, p0, Lorg/bitcoinj/params/TestNet2Params;->bip32HeaderPriv:I

    const/16 v1, 0x33

    .line 56
    iput v1, p0, Lorg/bitcoinj/params/TestNet2Params;->majorityEnforceBlockUpgrade:I

    const/16 v1, 0x4b

    .line 57
    iput v1, p0, Lorg/bitcoinj/params/TestNet2Params;->majorityRejectBlockOutdated:I

    .line 58
    iput v0, p0, Lorg/bitcoinj/params/TestNet2Params;->majorityWindow:I

    return-void
.end method

.method public static declared-synchronized get()Lorg/bitcoinj/params/TestNet2Params;
    .locals 2

    const-class v0, Lorg/bitcoinj/params/TestNet2Params;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lorg/bitcoinj/params/TestNet2Params;->instance:Lorg/bitcoinj/params/TestNet2Params;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lorg/bitcoinj/params/TestNet2Params;

    invoke-direct {v1}, Lorg/bitcoinj/params/TestNet2Params;-><init>()V

    sput-object v1, Lorg/bitcoinj/params/TestNet2Params;->instance:Lorg/bitcoinj/params/TestNet2Params;

    .line 66
    :cond_0
    sget-object v1, Lorg/bitcoinj/params/TestNet2Params;->instance:Lorg/bitcoinj/params/TestNet2Params;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
