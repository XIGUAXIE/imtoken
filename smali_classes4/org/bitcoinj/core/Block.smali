.class public Lorg/bitcoinj/core/Block;
.super Lorg/bitcoinj/core/Message;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/Block$VerifyFlag;
    }
.end annotation


# static fields
.field static final ALLOWED_TIME_DRIFT:J = 0x1c20L

.field public static final BLOCK_HEIGHT_GENESIS:I = 0x0

.field public static final BLOCK_HEIGHT_UNKNOWN:I = -0x1

.field public static final BLOCK_VERSION_BIP34:J = 0x2L

.field public static final BLOCK_VERSION_BIP65:J = 0x4L

.field public static final BLOCK_VERSION_BIP66:J = 0x3L

.field public static final BLOCK_VERSION_GENESIS:J = 0x1L

.field public static final EASIEST_DIFFICULTY_TARGET:J = 0x207fffffL

.field static final EMPTY_BYTES:[B

.field public static final HEADER_SIZE:I = 0x50

.field private static LARGEST_HASH:Ljava/math/BigInteger; = null

.field public static final MAX_BLOCK_SIGOPS:I = 0x4e20

.field public static final MAX_BLOCK_SIZE:I = 0xf4240

.field private static final log:Lorg/slf4j/Logger;

.field private static final pubkeyForTesting:[B

.field private static txCounter:I


# instance fields
.field private difficultyTarget:J

.field private hash:Lorg/bitcoinj/core/Sha256Hash;

.field protected headerBytesValid:Z

.field private merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

.field private nonce:J

.field protected optimalEncodingMessageSize:I

.field private prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

.field private time:J

.field protected transactionBytesValid:Z

.field transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lorg/bitcoinj/core/Block;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Block;->log:Lorg/slf4j/Logger;

    .line 437
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Block;->LARGEST_HASH:Ljava/math/BigInteger;

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 891
    sput-object v0, Lorg/bitcoinj/core/Block;->EMPTY_BYTES:[B

    .line 894
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey;-><init>()V

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Block;->pubkeyForTesting:[B

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;J)V
    .locals 2

    .line 117
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 119
    iput-wide p2, p0, Lorg/bitcoinj/core/Block;->version:J

    const-wide/32 p1, 0x1d07fff8

    .line 120
    iput-wide p1, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bitcoinj/core/Block;->time:J

    .line 122
    sget-object p1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    iput-object p1, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    const/16 p1, 0x50

    .line 124
    iput p1, p0, Lorg/bitcoinj/core/Block;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Sha256Hash;JJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "J",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "JJJ",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 198
    iput-wide p2, p0, Lorg/bitcoinj/core/Block;->version:J

    .line 199
    iput-object p4, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 200
    iput-object p5, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    .line 201
    iput-wide p6, p0, Lorg/bitcoinj/core/Block;->time:J

    .line 202
    iput-wide p8, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    .line 203
    iput-wide p10, p0, Lorg/bitcoinj/core/Block;->nonce:J

    .line 204
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    .line 205
    invoke-interface {p1, p12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v4

    array-length v5, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V
    .locals 6
    .param p4    # Lorg/bitcoinj/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    .line 181
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 162
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 147
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method private buildMerkleTree()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 621
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 622
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, -0x1

    .line 631
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v3, v4

    .line 632
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v7

    add-int/2addr v5, v3

    .line 633
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v10

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v11, 0x0

    const/16 v12, 0x20

    .line 634
    invoke-static/range {v7 .. v12}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII[BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_1
    add-int/2addr v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 626
    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private calculateHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 2

    .line 405
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 406
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 407
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private calculateMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;
    .locals 2

    .line 584
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->buildMerkleTree()Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    return-object v0
.end method

.method private checkMerkleRoot()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 576
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->calculateMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 578
    :cond_0
    sget-object v1, Lorg/bitcoinj/core/Block;->log:Lorg/slf4j/Logger;

    const-string v2, "Merkle tree did not verify"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 579
    new-instance v1, Lorg/bitcoinj/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Merkle hashes do not match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSigOps()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 569
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getSigOpCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e20

    if-gt v1, v0, :cond_1

    return-void

    .line 572
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v1, "Block had too many Signature Operations"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkTimestamp()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 559
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    .line 560
    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->time:J

    const-wide/16 v4, 0x1c20

    add-long/2addr v0, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    return-void

    .line 561
    :cond_0
    new-instance v2, Lorg/bitcoinj/core/VerificationException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lorg/bitcoinj/core/Block;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Block too far in future: %d vs %d"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkTransactions(ILjava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/core/Block$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    sget-object v0, Lorg/bitcoinj/core/Block$VerifyFlag;->HEIGHT_IN_COINBASE:Lorg/bitcoinj/core/Block$VerifyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    .line 655
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/Transaction;->checkCoinBaseHeight(I)V

    :cond_0
    const/4 p1, 0x1

    .line 658
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 659
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result p2

    if-nez p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    new-instance p2, Lorg/bitcoinj/core/VerificationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is coinbase when it should not be."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void

    .line 653
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "First tx is not coinbase"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private guessTransactionsLength()I
    .locals 5

    .line 361
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x50

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 365
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v0

    .line 366
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 368
    iget v3, v2, Lorg/bitcoinj/core/Transaction;->length:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    const/16 v2, 0xff

    goto :goto_1

    :cond_2
    iget v2, v2, Lorg/bitcoinj/core/Transaction;->length:I

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private unCacheHeader()V
    .locals 2

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    .line 382
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 383
    iput-object v1, p0, Lorg/bitcoinj/core/Block;->payload:[B

    .line 384
    :cond_0
    iput-object v1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method private unCacheTransactions()V
    .locals 2

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    .line 389
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    iput-object v1, p0, Lorg/bitcoinj/core/Block;->payload:[B

    .line 394
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 396
    iput-object v1, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method private writeTransactions(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    array-length v0, v0

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    iget v2, p0, Lorg/bitcoinj/core/Block;->length:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 302
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    add-int/lit8 v1, v1, 0x50

    iget v2, p0, Lorg/bitcoinj/core/Block;->length:I

    add-int/lit8 v2, v2, -0x50

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 307
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 308
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 309
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method addCoinbaseTransaction([BLorg/bitcoinj/core/Coin;I)V
    .locals 5

    .line 866
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheTransactions()V

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    .line 868
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 869
    new-instance v1, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v1}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    if-ltz p3, :cond_0

    int-to-long v2, p3

    .line 872
    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/script/ScriptBuilder;->number(J)Lorg/bitcoinj/script/ScriptBuilder;

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [B

    const/4 v2, 0x0

    .line 874
    sget v3, Lorg/bitcoinj/core/Block;->txCounter:I

    int-to-byte v4, v3

    aput-byte v4, p3, v2

    add-int/lit8 v2, v3, 0x1

    sput v2, Lorg/bitcoinj/core/Block;->txCounter:I

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p3, v3

    invoke-virtual {v1, p3}, Lorg/bitcoinj/script/ScriptBuilder;->data([B)Lorg/bitcoinj/script/ScriptBuilder;

    .line 881
    new-instance p3, Lorg/bitcoinj/core/TransactionInput;

    iget-object v2, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 882
    invoke-virtual {v1}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v1

    invoke-direct {p3, v2, v0, v1}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[B)V

    .line 881
    invoke-virtual {v0, p3}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 883
    new-instance p3, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 884
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    invoke-direct {p3, v1, v0, p2, p1}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    .line 883
    invoke-virtual {v0, p3}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    .line 885
    iget-object p1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {v0, p0}, Lorg/bitcoinj/core/Transaction;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 887
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object p1

    array-length p1, p1

    iput p1, v0, Lorg/bitcoinj/core/Transaction;->length:I

    .line 888
    iget-object p1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, v0, Lorg/bitcoinj/core/Transaction;->length:I

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Block;->adjustLength(II)V

    return-void
.end method

.method public addTransaction(Lorg/bitcoinj/core/Transaction;)V
    .locals 1

    const/4 v0, 0x1

    .line 753
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/Block;->addTransaction(Lorg/bitcoinj/core/Transaction;Z)V

    return-void
.end method

.method addTransaction(Lorg/bitcoinj/core/Transaction;Z)V
    .locals 2

    .line 758
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheTransactions()V

    .line 759
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    .line 762
    :cond_0
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->setParent(Lorg/bitcoinj/core/Message;)V

    if-eqz p2, :cond_2

    .line 763
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 764
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add a non-coinbase transaction as the first transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 765
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 766
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add a coinbase transaction when there already is one: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 767
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object p2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p1, p1, Lorg/bitcoinj/core/Transaction;->length:I

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Block;->adjustLength(II)V

    const/4 p1, 0x0

    .line 770
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    .line 771
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public bitcoinSerialize()[B
    .locals 5

    .line 321
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    const-string v1, "Bytes should never be null if headerBytesValid && transactionBytesValid"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget v0, p0, Lorg/bitcoinj/core/Block;->length:I

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->payload:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    return-object v0

    .line 327
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/Block;->length:I

    new-array v0, v0, [B

    .line 328
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->payload:[B

    iget v2, p0, Lorg/bitcoinj/core/Block;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lorg/bitcoinj/core/Block;->length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 335
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    iget v1, p0, Lorg/bitcoinj/core/Block;->length:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->guessTransactionsLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x50

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/bitcoinj/core/Block;->length:I

    :goto_0
    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 337
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 338
    invoke-direct {p0, v0}, Lorg/bitcoinj/core/Block;->writeTransactions(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Block;->writeHeader(Ljava/io/OutputStream;)V

    .line 349
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Block;->writeTransactions(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected checkProofOfWork(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 549
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash is higher than target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    .line 550
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public cloneAsHeader()Lorg/bitcoinj/core/Block;
    .locals 4

    .line 454
    new-instance v0, Lorg/bitcoinj/core/Block;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/core/Block;-><init>(Lorg/bitcoinj/core/NetworkParameters;J)V

    .line 455
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->copyBitcoinHeaderTo(Lorg/bitcoinj/core/Block;)V

    return-object v0
.end method

.method protected final copyBitcoinHeaderTo(Lorg/bitcoinj/core/Block;)V
    .locals 2

    .line 461
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->nonce:J

    iput-wide v0, p1, Lorg/bitcoinj/core/Block;->nonce:J

    .line 462
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    iput-object v0, p1, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 463
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p1, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    .line 464
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    iput-wide v0, p1, Lorg/bitcoinj/core/Block;->version:J

    .line 465
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->time:J

    iput-wide v0, p1, Lorg/bitcoinj/core/Block;->time:J

    .line 466
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    iput-wide v0, p1, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    const/4 v0, 0x0

    .line 467
    iput-object v0, p1, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    .line 468
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p1, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public createNextBlock(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/Block;
    .locals 1
    .param p1    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 969
    sget-object v0, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Block;

    move-result-object p1

    return-object p1
.end method

.method public createNextBlock(Lorg/bitcoinj/core/Address;JJI)Lorg/bitcoinj/core/Block;
    .locals 10

    .line 901
    sget-object v7, Lorg/bitcoinj/core/Block;->pubkeyForTesting:[B

    sget-object v8, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;

    move-result-object v0

    return-object v0
.end method

.method createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;
    .locals 3
    .param p1    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/bitcoinj/core/TransactionOutPoint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 914
    new-instance v0, Lorg/bitcoinj/core/Block;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p2, p3}, Lorg/bitcoinj/core/Block;-><init>(Lorg/bitcoinj/core/NetworkParameters;J)V

    .line 915
    iget-wide v1, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Block;->setDifficultyTarget(J)V

    .line 916
    invoke-virtual {v0, p7, p8, p9}, Lorg/bitcoinj/core/Block;->addCoinbaseTransaction([BLorg/bitcoinj/core/Coin;I)V

    if-eqz p1, :cond_1

    .line 920
    new-instance p7, Lorg/bitcoinj/core/Transaction;

    iget-object p8, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p7, p8}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 921
    new-instance p8, Lorg/bitcoinj/core/TransactionOutput;

    iget-object p9, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v1, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    invoke-direct {p8, p9, p7, v1, p1}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    invoke-virtual {p7, p8}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    if-nez p4, :cond_0

    .line 925
    new-instance p1, Lorg/bitcoinj/core/TransactionInput;

    iget-object p4, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object p8, Lorg/bitcoinj/core/Block;->EMPTY_BYTES:[B

    invoke-static {p8, p8}, Lorg/bitcoinj/script/Script;->createInputScript([B[B)[B

    move-result-object p8

    invoke-direct {p1, p4, p7, p8}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[B)V

    const/16 p4, 0x20

    new-array p4, p4, [B

    const/4 p8, 0x0

    .line 929
    sget p9, Lorg/bitcoinj/core/Block;->txCounter:I

    int-to-byte v1, p9

    aput-byte v1, p4, p8

    add-int/lit8 p8, p9, 0x1

    .line 930
    sput p8, Lorg/bitcoinj/core/Block;->txCounter:I

    shr-int/lit8 p8, p9, 0x8

    int-to-byte p8, p8

    const/4 p9, 0x1

    aput-byte p8, p4, p9

    .line 931
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object p8

    invoke-static {p4}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p4

    invoke-virtual {p8, p4}, Lorg/bitcoinj/core/TransactionOutPoint;->setHash(Lorg/bitcoinj/core/Sha256Hash;)V

    goto :goto_0

    .line 933
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/TransactionInput;

    iget-object p8, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object p9, Lorg/bitcoinj/core/Block;->EMPTY_BYTES:[B

    invoke-static {p9, p9}, Lorg/bitcoinj/script/Script;->createInputScript([B[B)[B

    move-result-object p9

    invoke-direct {p1, p8, p7, p9, p4}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;)V

    .line 935
    :goto_0
    invoke-virtual {p7, p1}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 936
    invoke-virtual {v0, p7}, Lorg/bitcoinj/core/Block;->addTransaction(Lorg/bitcoinj/core/Transaction;)V

    .line 939
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Block;->setPrevBlockHash(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 941
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide p7

    cmp-long p1, p7, p5

    if-ltz p1, :cond_2

    .line 942
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide p4

    const-wide/16 p6, 0x1

    add-long/2addr p4, p6

    invoke-virtual {v0, p4, p5}, Lorg/bitcoinj/core/Block;->setTime(J)V

    goto :goto_1

    .line 944
    :cond_2
    invoke-virtual {v0, p5, p6}, Lorg/bitcoinj/core/Block;->setTime(J)V

    .line 945
    :goto_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->solve()V

    .line 947
    :try_start_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->verifyHeader()V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getVersion()J

    move-result-wide p4

    cmp-long p1, p4, p2

    if-nez p1, :cond_3

    return-object v0

    .line 952
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 949
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createNextBlock(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Block;
    .locals 14
    .param p1    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 964
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long v9, v0, v2

    sget-object v11, Lorg/bitcoinj/core/Block;->pubkeyForTesting:[B

    const-wide/16 v6, 0x1

    const/4 v8, 0x0

    const/4 v13, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v12, p2

    invoke-virtual/range {v4 .. v13}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public createNextBlock(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/TransactionOutPoint;)Lorg/bitcoinj/core/Block;
    .locals 14
    .param p1    # Lorg/bitcoinj/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 959
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    add-long v9, v0, v2

    sget-object v11, Lorg/bitcoinj/core/Block;->pubkeyForTesting:[B

    sget-object v12, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    const-wide/16 v6, 0x1

    const/4 v13, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v13}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;

    move-result-object v0

    return-object v0
.end method

.method createNextBlockWithCoinbase(J[BI)Lorg/bitcoinj/core/Block;
    .locals 11

    const/4 v0, 0x0

    .line 984
    move-object v5, v0

    check-cast v5, Lorg/bitcoinj/core/TransactionOutPoint;

    .line 985
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v6

    sget-object v9, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-object v8, p3

    move v10, p4

    .line 984
    invoke-virtual/range {v1 .. v10}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;

    move-result-object p1

    return-object p1
.end method

.method public createNextBlockWithCoinbase(J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;
    .locals 11

    const/4 v0, 0x0

    .line 974
    move-object v5, v0

    check-cast v5, Lorg/bitcoinj/core/TransactionOutPoint;

    .line 975
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v6

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-object v8, p3

    move-object v9, p4

    move/from16 v10, p5

    .line 974
    invoke-virtual/range {v1 .. v10}, Lorg/bitcoinj/core/Block;->createNextBlock(Lorg/bitcoinj/core/Address;JLorg/bitcoinj/core/TransactionOutPoint;J[BLorg/bitcoinj/core/Coin;I)Lorg/bitcoinj/core/Block;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/core/Block;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBlockInflation(I)Lorg/bitcoinj/core/Coin;
    .locals 2

    .line 219
    sget-object v0, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getSubsidyDecreaseBlockCount()I

    move-result v1

    div-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Coin;->shiftRight(I)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public getDifficultyTarget()J
    .locals 2

    .line 823
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    return-wide v0
.end method

.method public getDifficultyTargetAsInteger()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 527
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->decodeCompactBits(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v1, v1, Lorg/bitcoinj/core/NetworkParameters;->maxTarget:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    return-object v0

    .line 529
    :cond_0
    new-instance v1, Lorg/bitcoinj/core/VerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Difficulty target is bad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->calculateHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getHashAsString()Ljava/lang/String;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 738
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 739
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->calculateMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 838
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->nonce:J

    return-wide v0
.end method

.method public getOptimalEncodingMessageSize()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_0

    return v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->bitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    return v0
.end method

.method public getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 783
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 5

    .line 804
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeSeconds()J
    .locals 2

    .line 797
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->time:J

    return-wide v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 851
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 776
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    return-wide v0
.end method

.method public getWork()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getDifficultyTargetAsInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 449
    sget-object v1, Lorg/bitcoinj/core/Block;->LARGEST_HASH:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasTransactions()Z
    .locals 1

    .line 1005
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBIP34()Z
    .locals 5

    .line 1013
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBIP65()Z
    .locals 5

    .line 1029
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBIP66()Z
    .locals 5

    .line 1021
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHeaderBytesValid()Z
    .locals 1

    .line 990
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    return v0
.end method

.method isTransactionBytesValid()Z
    .locals 1

    .line 995
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    return v0
.end method

.method protected parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lorg/bitcoinj/core/Block;->offset:I

    iput v0, p0, Lorg/bitcoinj/core/Block;->cursor:I

    .line 256
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    .line 257
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 258
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    .line 259
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/Block;->time:J

    .line 260
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    .line 261
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/Block;->nonce:J

    .line 262
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    iget v2, p0, Lorg/bitcoinj/core/Block;->cursor:I

    iget v3, p0, Lorg/bitcoinj/core/Block;->offset:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 263
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v0}, Lorg/bitcoinj/core/MessageSerializer;->isParseRetainMode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    .line 266
    iget v0, p0, Lorg/bitcoinj/core/Block;->offset:I

    add-int/lit8 v0, v0, 0x50

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->parseTransactions(I)V

    .line 267
    iget v0, p0, Lorg/bitcoinj/core/Block;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/Block;->length:I

    return-void
.end method

.method protected parseTransactions(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 230
    iput p1, p0, Lorg/bitcoinj/core/Block;->cursor:I

    const/16 p1, 0x50

    .line 231
    iput p1, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    .line 232
    iget-object p1, p0, Lorg/bitcoinj/core/Block;->payload:[B

    array-length p1, p1

    iget v0, p0, Lorg/bitcoinj/core/Block;->cursor:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 234
    iput-boolean v1, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->readVarInt()J

    move-result-wide v2

    long-to-int p1, v2

    .line 239
    iget v0, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    :goto_0
    if-ge v1, p1, :cond_1

    .line 242
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    iget-object v3, p0, Lorg/bitcoinj/core/Block;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v4, p0, Lorg/bitcoinj/core/Block;->payload:[B

    iget v5, p0, Lorg/bitcoinj/core/Block;->cursor:I

    iget-object v7, p0, Lorg/bitcoinj/core/Block;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    const/high16 v8, -0x80000000

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    .line 244
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v2

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 245
    iget-object v2, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget v2, p0, Lorg/bitcoinj/core/Block;->cursor:I

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/core/Block;->cursor:I

    .line 247
    iget v2, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOptimalEncodingMessageSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bitcoinj/core/Block;->optimalEncodingMessageSize:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/Block;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {p1}, Lorg/bitcoinj/core/MessageSerializer;->isParseRetainMode()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bitcoinj/core/Block;->transactionBytesValid:Z

    return-void
.end method

.method public setDifficultyTarget(J)V
    .locals 0

    .line 828
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 829
    iput-wide p1, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    const/4 p1, 0x0

    .line 830
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method setMerkleRoot(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 746
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 747
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->merkleRoot:Lorg/bitcoinj/core/Sha256Hash;

    const/4 p1, 0x0

    .line 748
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public setNonce(J)V
    .locals 0

    .line 843
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 844
    iput-wide p1, p0, Lorg/bitcoinj/core/Block;->nonce:J

    const/4 p1, 0x0

    .line 845
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method setPrevBlockHash(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 787
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 788
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 808
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheHeader()V

    .line 809
    iput-wide p1, p0, Lorg/bitcoinj/core/Block;->time:J

    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lorg/bitcoinj/core/Block;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public solve()V
    .locals 4

    :goto_0
    const/4 v0, 0x0

    .line 511
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->checkProofOfWork(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getNonce()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Block;->setNonce(J)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 516
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " block: \n"

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   hash: "

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "   version: "

    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 481
    invoke-static {v2}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->isBIP34()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "BIP34"

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->isBIP66()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BIP66"

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 482
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->isBIP65()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v4, "BIP65"

    :cond_2
    aput-object v4, v6, v7

    .line 481
    invoke-virtual {v2, v3, v5, v6}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, " ("

    if-nez v3, :cond_3

    .line 484
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "   previous block: "

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   merkle root: "

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   time: "

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->time:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   difficulty target (nBits): "

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   nonce: "

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/Block;->nonce:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "   with "

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transaction(s):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 497
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unCache()V
    .locals 0

    .line 377
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->unCacheTransactions()V

    return-void
.end method

.method public verify(ILjava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/core/Block$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 716
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->verifyHeader()V

    .line 717
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Block;->verifyTransactions(ILjava/util/EnumSet;)V

    return-void
.end method

.method public verifyHeader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 678
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Block;->checkProofOfWork(Z)Z

    .line 679
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->checkTimestamp()V

    return-void
.end method

.method public verifyTransactions(ILjava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/core/Block$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 698
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getOptimalEncodingMessageSize()I

    move-result v0

    const v1, 0xf4240

    if-gt v0, v1, :cond_1

    .line 700
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/Block;->checkTransactions(ILjava/util/EnumSet;)V

    .line 701
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->checkMerkleRoot()V

    .line 702
    invoke-direct {p0}, Lorg/bitcoinj/core/Block;->checkSigOps()V

    .line 703
    iget-object p1, p0, Lorg/bitcoinj/core/Block;->transactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    .line 704
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->verify()V

    goto :goto_0

    :cond_0
    return-void

    .line 699
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Block larger than MAX_BLOCK_SIZE"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 697
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Block had no transactions"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lorg/bitcoinj/core/Block;->headerBytesValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    array-length v0, v0

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    const/16 v2, 0x50

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->payload:[B

    iget v1, p0, Lorg/bitcoinj/core/Block;->offset:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 285
    :cond_0
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->version:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/core/Block;->prevBlockHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 287
    invoke-virtual {p0}, Lorg/bitcoinj/core/Block;->getMerkleRoot()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 288
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->time:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 289
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->difficultyTarget:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 290
    iget-wide v0, p0, Lorg/bitcoinj/core/Block;->nonce:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    return-void
.end method
