.class public Lorg/bitcoinj/params/UnitTestParams;
.super Lorg/bitcoinj/params/AbstractBitcoinNetParams;
.source "UnitTestParams.java"


# static fields
.field public static final TESTNET_MAJORITY_ENFORCE_BLOCK_UPGRADE:I = 0x4

.field public static final TESTNET_MAJORITY_REJECT_BLOCK_OUTDATED:I = 0x6

.field public static final UNITNET_MAJORITY_WINDOW:I = 0x8

.field private static instance:Lorg/bitcoinj/params/UnitTestParams;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;-><init>()V

    const-string v0, "org.bitcoinj.unittest"

    .line 34
    iput-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->id:Ljava/lang/String;

    const-wide/32 v0, 0xb110907

    .line 35
    iput-wide v0, p0, Lorg/bitcoinj/params/UnitTestParams;->packetMagic:J

    const/16 v0, 0x6f

    .line 36
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->addressHeader:I

    const/16 v0, 0xc4

    .line 37
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->p2shHeader:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 38
    iget v1, p0, Lorg/bitcoinj/params/UnitTestParams;->addressHeader:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/params/UnitTestParams;->p2shHeader:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->acceptableAddressCodes:[I

    .line 39
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->maxTarget:Ljava/math/BigInteger;

    .line 40
    iget-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->genesisBlock:Lorg/bitcoinj/core/Block;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setTime(J)V

    .line 41
    iget-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v1, 0x207fffff

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setDifficultyTarget(J)V

    .line 42
    iget-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->genesisBlock:Lorg/bitcoinj/core/Block;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->solve()V

    const/16 v0, 0x479d

    .line 43
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->port:I

    const/16 v0, 0xa

    .line 44
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->interval:I

    const/16 v0, 0xef

    .line 45
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->dumpedPrivateKeyHeader:I

    const v0, 0xbebc200

    .line 46
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->targetTimespan:I

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->spendableCoinbaseDepth:I

    const/16 v0, 0x64

    .line 48
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->subsidyDecreaseBlockCount:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->dnsSeeds:[Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/bitcoinj/params/UnitTestParams;->addrSeeds:[I

    const v0, 0x43587cf

    .line 51
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->bip32HeaderPub:I

    const v0, 0x4358394

    .line 52
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->bip32HeaderPriv:I

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->majorityEnforceBlockUpgrade:I

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->majorityRejectBlockOutdated:I

    const/4 v0, 0x7

    .line 56
    iput v0, p0, Lorg/bitcoinj/params/UnitTestParams;->majorityWindow:I

    return-void
.end method

.method public static declared-synchronized get()Lorg/bitcoinj/params/UnitTestParams;
    .locals 2

    const-class v0, Lorg/bitcoinj/params/UnitTestParams;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lorg/bitcoinj/params/UnitTestParams;->instance:Lorg/bitcoinj/params/UnitTestParams;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lorg/bitcoinj/params/UnitTestParams;

    invoke-direct {v1}, Lorg/bitcoinj/params/UnitTestParams;-><init>()V

    sput-object v1, Lorg/bitcoinj/params/UnitTestParams;->instance:Lorg/bitcoinj/params/UnitTestParams;

    .line 64
    :cond_0
    sget-object v1, Lorg/bitcoinj/params/UnitTestParams;->instance:Lorg/bitcoinj/params/UnitTestParams;
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

    const-string v0, "unittest"

    return-object v0
.end method
