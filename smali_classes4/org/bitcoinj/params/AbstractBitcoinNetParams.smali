.class public abstract Lorg/bitcoinj/params/AbstractBitcoinNetParams;
.super Lorg/bitcoinj/core/NetworkParameters;
.source "AbstractBitcoinNetParams.java"


# static fields
.field public static final BITCOIN_SCHEME:Ljava/lang/String; = "bitcoin"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/bitcoinj/params/AbstractBitcoinNetParams;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/bitcoinj/core/NetworkParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDifficultyTransitions(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/store/BlockStore;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    .line 70
    invoke-virtual {p0, p1}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->isDifficultyTransitionPoint(Lorg/bitcoinj/core/StoredBlock;)Z

    move-result v1

    const-string v2, " vs "

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-nez p3, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance p3, Lorg/bitcoinj/core/VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected change in difficulty at height "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 82
    :cond_1
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object p1

    .line 83
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/bitcoinj/store/BlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    const/4 v3, 0x0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->getInterval()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/bitcoinj/store/BlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Difficulty transition point but we did not find a way back to the genesis block."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 93
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p3}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide/16 v5, 0x32

    cmp-long p3, v3, v5

    if-lez p3, :cond_4

    .line 94
    sget-object p3, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->log:Lorg/slf4j/Logger;

    const-string v3, "Difficulty transition traversal took {}"

    invoke-interface {p3, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_4
    invoke-virtual {v1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    .line 97
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p1, v3

    .line 99
    invoke-virtual {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->getTargetTimespan()I

    move-result p3

    .line 100
    div-int/lit8 v1, p3, 0x4

    if-ge p1, v1, :cond_5

    move p1, v1

    :cond_5
    mul-int/lit8 v1, p3, 0x4

    if-le p1, v1, :cond_6

    move p1, v1

    .line 105
    :cond_6
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v0

    int-to-long v3, p1

    .line 106
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    int-to-long v0, p3

    .line 107
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->getMaxTarget()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-lez p3, :cond_7

    .line 110
    sget-object p3, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->log:Lorg/slf4j/Logger;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Difficulty hit proof of work limit: {}"

    invoke-interface {p3, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->getMaxTarget()Ljava/math/BigInteger;

    move-result-object p1

    .line 114
    :cond_7
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v0

    const/16 p3, 0x18

    ushr-long/2addr v0, p3

    long-to-int p3, v0

    add-int/lit8 p3, p3, -0x3

    .line 115
    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getDifficultyTarget()J

    move-result-wide v0

    const-wide/32 v3, 0xffffff

    .line 118
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    mul-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->encodeCompactBits(Ljava/math/BigInteger;)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_8

    return-void

    .line 123
    :cond_8
    new-instance p3, Lorg/bitcoinj/core/VerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network provided difficulty bits do not match what was calculated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getMaxMoney()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 129
    sget-object v0, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public getMinNonDustOutput()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 134
    sget-object v0, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public getMonetaryFormat()Lorg/bitcoinj/utils/MonetaryFormat;
    .locals 1

    .line 139
    new-instance v0, Lorg/bitcoinj/utils/MonetaryFormat;

    invoke-direct {v0}, Lorg/bitcoinj/utils/MonetaryFormat;-><init>()V

    return-object v0
.end method

.method public getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I
    .locals 0

    .line 144
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->getBitcoinProtocolVersion()I

    move-result p1

    return p1
.end method

.method public getSerializer(Z)Lorg/bitcoinj/core/BitcoinSerializer;
    .locals 1

    .line 149
    new-instance v0, Lorg/bitcoinj/core/BitcoinSerializer;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/BitcoinSerializer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Z)V

    return-object v0
.end method

.method public getUriScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "bitcoin"

    return-object v0
.end method

.method public hasMaxMoney()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isDifficultyTransitionPoint(Lorg/bitcoinj/core/StoredBlock;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bitcoinj/params/AbstractBitcoinNetParams;->getInterval()I

    move-result v1

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
