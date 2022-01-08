.class public Lorg/bitcoinj/params/RegTestParams;
.super Lorg/bitcoinj/params/TestNet2Params;
.source "RegTestParams.java"


# static fields
.field private static final MAX_TARGET:Ljava/math/BigInteger;

.field private static genesis:Lorg/bitcoinj/core/Block;

.field private static instance:Lorg/bitcoinj/params/RegTestParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bitcoinj/params/RegTestParams;->MAX_TARGET:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/bitcoinj/params/TestNet2Params;-><init>()V

    const v0, 0x7fffffff

    .line 35
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->interval:I

    .line 36
    sget-object v0, Lorg/bitcoinj/params/RegTestParams;->MAX_TARGET:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bitcoinj/params/RegTestParams;->maxTarget:Ljava/math/BigInteger;

    const/16 v0, 0x96

    .line 37
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->subsidyDecreaseBlockCount:I

    const/16 v0, 0x480c

    .line 38
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->port:I

    const-string v0, "org.bitcoin.regtest"

    .line 39
    iput-object v0, p0, Lorg/bitcoinj/params/RegTestParams;->id:Ljava/lang/String;

    const/16 v0, 0x2ee

    .line 41
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->majorityEnforceBlockUpgrade:I

    const/16 v0, 0x3b6

    .line 42
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->majorityRejectBlockOutdated:I

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lorg/bitcoinj/params/RegTestParams;->majorityWindow:I

    return-void
.end method

.method public static declared-synchronized get()Lorg/bitcoinj/params/RegTestParams;
    .locals 2

    const-class v0, Lorg/bitcoinj/params/RegTestParams;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->instance:Lorg/bitcoinj/params/RegTestParams;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lorg/bitcoinj/params/RegTestParams;

    invoke-direct {v1}, Lorg/bitcoinj/params/RegTestParams;-><init>()V

    sput-object v1, Lorg/bitcoinj/params/RegTestParams;->instance:Lorg/bitcoinj/params/RegTestParams;

    .line 72
    :cond_0
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->instance:Lorg/bitcoinj/params/RegTestParams;
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
.method public allowEmptyPeerChain()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getGenesisBlock()Lorg/bitcoinj/core/Block;
    .locals 4

    .line 55
    const-class v0, Lorg/bitcoinj/params/RegTestParams;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    if-nez v1, :cond_0

    .line 57
    invoke-super {p0}, Lorg/bitcoinj/params/TestNet2Params;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    const-wide/16 v2, 0x2

    .line 58
    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Block;->setNonce(J)V

    .line 59
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    const-wide/32 v2, 0x207fffff

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Block;->setDifficultyTarget(J)V

    .line 60
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    const-wide/32 v2, 0x4d49e5da

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Block;->setTime(J)V

    .line 61
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0f9188f13cb7b2c71f2a335e3a4fc328bf5beb436012afca590b1a11466e2206"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 63
    :cond_0
    sget-object v1, Lorg/bitcoinj/params/RegTestParams;->genesis:Lorg/bitcoinj/core/Block;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPaymentProtocolId()Ljava/lang/String;
    .locals 1

    const-string v0, "regtest"

    return-object v0
.end method
