.class public Lorg/bitcoinj/params/TestNet3Params;
.super Lorg/bitcoinj/params/AbstractBitcoinNetParams;
.source "TestNet3Params.java"


# static fields
.field private static instance:Lorg/bitcoinj/params/TestNet3Params;

.field private static final testnetDiffDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x1357e4efc00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/bitcoinj/params/TestNet3Params;->testnetDiffDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 39
    invoke-direct {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;-><init>()V

    const-string v0, "org.bitcoin.test"

    .line 40
    iput-object v0, p0, Lorg/bitcoinj/params/TestNet3Params;->id:Ljava/lang/String;

    const-wide/32 v0, 0xb110907

    .line 42
    iput-wide v0, p0, Lorg/bitcoinj/params/TestNet3Params;->packetMagic:J

    const/16 v0, 0x7e0

    .line 43
    iput v0, p0, Lorg/bitcoinj/params/TestNet3Params;->interval:I

    const v0, 0x127500

    .line 44
    iput v0, p0, Lorg/bitcoinj/params/TestNet3Params;->targetTimespan:I

    const-wide/32 v0, 0x1d00ffff

    .line 45
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/params/TestNet3Params;->maxTarget:Ljava/math/BigInteger;

    const/16 v2, 0x479d

    .line 46
    iput v2, p0, Lorg/bitcoinj/params/TestNet3Params;->port:I

    const/16 v2, 0x6f

    .line 47
    iput v2, p0, Lorg/bitcoinj/params/TestNet3Params;->addressHeader:I

    const/16 v2, 0xc4

    .line 48
    iput v2, p0, Lorg/bitcoinj/params/TestNet3Params;->p2shHeader:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 49
    iget v3, p0, Lorg/bitcoinj/params/TestNet3Params;->addressHeader:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lorg/bitcoinj/params/TestNet3Params;->p2shHeader:I

    const/4 v4, 0x1

    aput v3, v2, v4

    iput-object v2, p0, Lorg/bitcoinj/params/TestNet3Params;->acceptableAddressCodes:[I

    const/16 v2, 0xef

    .line 50
    iput v2, p0, Lorg/bitcoinj/params/TestNet3Params;->dumpedPrivateKeyHeader:I

    .line 51
    iget-object v2, p0, Lorg/bitcoinj/params/TestNet3Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v3, 0x4d49e5da

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/core/Block;->setTime(J)V

    .line 52
    iget-object v2, p0, Lorg/bitcoinj/params/TestNet3Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    invoke-virtual {v2, v0, v1}, Lorg/bitcoinj/core/Block;->setDifficultyTarget(J)V

    .line 53
    iget-object v0, p0, Lorg/bitcoinj/params/TestNet3Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    const-wide/32 v1, 0x18aea41a

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setNonce(J)V

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lorg/bitcoinj/params/TestNet3Params;->spendableCoinbaseDepth:I

    const v1, 0x33450

    .line 55
    iput v1, p0, Lorg/bitcoinj/params/TestNet3Params;->subsidyDecreaseBlockCount:I

    .line 56
    iget-object v1, p0, Lorg/bitcoinj/params/TestNet3Params;->genesisBlock:Lorg/bitcoinj/core/Block;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000000933ea01ad0ee984209779baaec3ced90fa3f408719526f8d77f4943"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 58
    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    const-string v2, "04302390343f91cc401d56d68b123028bf52e5fca1939df127f63c6467cdf9c8e2c14b61104cf817d0b780da337893ecc4aaff1309e536162dabbdb45200ca2b0a"

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/params/TestNet3Params;->alertSigningKey:[B

    const-string v1, "testnet-seed.bitcoin.jonasschnelli.ch"

    const-string v2, "testnet-seed.bluematt.me"

    const-string v3, "testnet-seed.bitcoin.petertodd.org"

    const-string v4, "testnet-seed.bitcoin.schildbach.de"

    const-string v5, "bitcoin-testnet.bloqseeds.net"

    .line 60
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/params/TestNet3Params;->dnsSeeds:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lorg/bitcoinj/params/TestNet3Params;->addrSeeds:[I

    const v1, 0x43587cf

    .line 68
    iput v1, p0, Lorg/bitcoinj/params/TestNet3Params;->bip32HeaderPub:I

    const v1, 0x4358394

    .line 69
    iput v1, p0, Lorg/bitcoinj/params/TestNet3Params;->bip32HeaderPriv:I

    const/16 v1, 0x33

    .line 71
    iput v1, p0, Lorg/bitcoinj/params/TestNet3Params;->majorityEnforceBlockUpgrade:I

    const/16 v1, 0x4b

    .line 72
    iput v1, p0, Lorg/bitcoinj/params/TestNet3Params;->majorityRejectBlockOutdated:I

    .line 73
    iput v0, p0, Lorg/bitcoinj/params/TestNet3Params;->majorityWindow:I

    return-void
.end method

.method public static declared-synchronized get()Lorg/bitcoinj/params/TestNet3Params;
    .locals 2

    const-class v0, Lorg/bitcoinj/params/TestNet3Params;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lorg/bitcoinj/params/TestNet3Params;->instance:Lorg/bitcoinj/params/TestNet3Params;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lorg/bitcoinj/params/TestNet3Params;

    invoke-direct {v1}, Lorg/bitcoinj/params/TestNet3Params;-><init>()V

    sput-object v1, Lorg/bitcoinj/params/TestNet3Params;->instance:Lorg/bitcoinj/params/TestNet3Params;

    .line 81
    :cond_0
    sget-object v1, Lorg/bitcoinj/params/TestNet3Params;->instance:Lorg/bitcoinj/params/TestNet3Params;
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
.method public checkDifficultyTransitions(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/store/BlockStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lorg/bitcoinj/params/TestNet3Params;->isDifficultyTransitionPoint(Lorg/bitcoinj/core/StoredBlock;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getTime()Ljava/util/Date;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/params/TestNet3Params;->testnetDiffDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    .line 101
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v1

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_3

    const-wide/16 v3, 0x4b0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_3

    .line 108
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/params/TestNet3Params;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Block;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/bitcoinj/params/TestNet3Params;->getInterval()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/params/TestNet3Params;->getMaxTarget()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1, p3}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bitcoinj/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 113
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 114
    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    new-instance p3, Lorg/bitcoinj/core/VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Testnet block transition that is not allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 120
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->checkDifficultyTransitions(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/store/BlockStore;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    const-string v0, "test"

    return-object v0
.end method
