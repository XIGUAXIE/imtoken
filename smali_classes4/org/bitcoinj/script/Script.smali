.class public Lorg/bitcoinj/script/Script;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/script/Script$VerifyFlag;,
        Lorg/bitcoinj/script/Script$ScriptType;
    }
.end annotation


# static fields
.field public static final ALL_VERIFY_FLAGS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_P2SH_SIGOPS:I = 0xf

.field public static final MAX_SCRIPT_ELEMENT_SIZE:J = 0x208L

.field public static final SIG_SIZE:I = 0x4b

.field private static final STANDARD_TRANSACTION_SCRIPT_CHUNKS:[Lorg/bitcoinj/script/ScriptChunk;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/ScriptChunk;",
            ">;"
        }
    .end annotation
.end field

.field private creationTimeSeconds:J

.field protected program:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    const-class v0, Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/script/Script;->ALL_VERIFY_FLAGS:Ljava/util/EnumSet;

    .line 82
    const-class v0, Lorg/bitcoinj/script/Script;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/script/Script;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bitcoinj/script/ScriptChunk;

    .line 163
    new-instance v1, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x76

    invoke-direct {v1, v4, v3, v2}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v2, 0x1

    const/16 v4, 0xa9

    invoke-direct {v1, v4, v3, v2}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x88

    const/16 v4, 0x17

    invoke-direct {v1, v2, v3, v4}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0xac

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/bitcoinj/script/Script;->STANDARD_TRANSACTION_SCRIPT_CHUNKS:[Lorg/bitcoinj/script/ScriptChunk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/ScriptChunk;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    .line 105
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/script/Script;->creationTimeSeconds:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/bitcoinj/script/Script;->program:[B

    .line 115
    invoke-direct {p0, p1}, Lorg/bitcoinj/script/Script;->parse([B)V

    const-wide/16 v0, 0x0

    .line 116
    iput-wide v0, p0, Lorg/bitcoinj/script/Script;->creationTimeSeconds:J

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/bitcoinj/script/Script;->program:[B

    .line 121
    invoke-direct {p0, p1}, Lorg/bitcoinj/script/Script;->parse([B)V

    .line 122
    iput-wide p2, p0, Lorg/bitcoinj/script/Script;->creationTimeSeconds:J

    return-void
.end method

.method private static castToBigInteger([B)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 811
    array-length v0, p0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 813
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bitcoinj/core/Utils;->decodeMPI([BZ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 812
    :cond_0
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string v0, "Script attempted to use an integer larger than 4 bytes"

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static castToBigInteger([BI)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 825
    array-length v0, p0

    if-gt v0, p1, :cond_0

    .line 828
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/bitcoinj/core/Utils;->decodeMPI([BZ)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 826
    :cond_0
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Script attempted to use an integer larger than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static castToBool([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 794
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 797
    aget-byte v2, p0, v1

    if-eqz v2, :cond_2

    .line 798
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0x80

    if-eq p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static createInputScript([B)[B
    .locals 2

    .line 432
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 433
    invoke-static {v0, p0}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 434
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createInputScript([B[B)[B
    .locals 3

    .line 420
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 421
    invoke-static {v0, p0}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 422
    invoke-static {v0, p1}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 423
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 425
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createMultiSigOutputScript(ILjava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 397
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gt p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 400
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 401
    sget-object v0, Lorg/bitcoinj/script/Script;->log:Lorg/slf4j/Logger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Creating a multi-signature output that is non-standard: {} pubkeys, should be <= 3"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 405
    invoke-static {p0}, Lorg/bitcoinj/script/Script;->encodeToOpN(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 406
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 407
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V

    goto :goto_3

    .line 409
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Lorg/bitcoinj/script/Script;->encodeToOpN(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p0, 0xae

    .line 410
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static decodeFromOpN(I)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x51

    const/16 v2, 0x4f

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v2, :cond_1

    if-lt p0, v1, :cond_0

    const/16 v4, 0x60

    if-gt p0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const-string v5, "decodeFromOpN called on non OP_N opcode"

    .line 577
    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p0, :cond_2

    return v0

    :cond_2
    if-ne p0, v2, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    add-int/2addr p0, v3

    sub-int/2addr p0, v1

    return p0
.end method

.method static encodeToOpN(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lt p0, v2, :cond_0

    const/16 v3, 0x10

    if-gt p0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 587
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeToOpN called for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " which we cannot encode in an opcode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-ne p0, v2, :cond_2

    const/16 p0, 0x4f

    return p0

    :cond_2
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x51

    return p0
.end method

.method private static equalsRange([BI[B)Z
    .locals 4

    .line 737
    array-length v0, p2

    add-int/2addr v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 739
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    add-int v1, v0, p1

    .line 740
    aget-byte v1, p0, v1

    aget-byte v3, p2, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static executeCheckLockTimeVerify(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "I",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/LinkedList<",
            "[B>;II",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1389
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p2

    const/4 p4, 0x1

    if-lt p2, p4, :cond_6

    .line 1394
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const/4 p3, 0x5

    invoke-static {p2, p3}, Lorg/bitcoinj/script/Script;->castToBigInteger([BI)Ljava/math/BigInteger;

    move-result-object p2

    .line 1396
    sget-object p3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-ltz p3, :cond_5

    .line 1401
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide p3

    const-wide/32 p5, 0x1dcd6500

    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    sget-object p3, Lorg/bitcoinj/core/Transaction;->LOCKTIME_THRESHOLD_BIG:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-ltz p3, :cond_1

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide p3

    cmp-long v0, p3, p5

    if-ltz v0, :cond_4

    sget-object p3, Lorg/bitcoinj/core/Transaction;->LOCKTIME_THRESHOLD_BIG:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-ltz p3, :cond_4

    .line 1408
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_3

    int-to-long p1, p1

    .line 1421
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->hasSequence()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 1422
    :cond_2
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Transaction contains a final transaction input for a CHECKLOCKTIMEVERIFY script."

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1409
    :cond_3
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Locktime requirement not satisfied"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1404
    :cond_4
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Locktime requirement type mismatch"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1397
    :cond_5
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Negative locktime"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1390
    :cond_6
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Attempted OP_CHECKLOCKTIMEVERIFY on a stack with size < 1"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static executeCheckSig(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "I",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/LinkedList<",
            "[B>;II",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1428
    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->STRICTENC:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->DERSIG:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 1429
    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 1430
    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1431
    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_7

    .line 1433
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1434
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1436
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    .line 1437
    array-length v5, p2

    invoke-static {p2, p4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 1439
    new-instance p4, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v5, v4

    add-int/2addr v5, v2

    invoke-direct {p4, v5}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1441
    :try_start_0
    invoke-static {p4, v4}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1445
    invoke-virtual {p4}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/bitcoinj/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object p2

    .line 1450
    :try_start_1
    sget-object p4, Lorg/bitcoinj/script/Script$VerifyFlag;->LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 1451
    invoke-interface {p6, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    .line 1450
    invoke-static {v4, v0, p4}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p4

    .line 1454
    iget p6, p4, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    int-to-byte p6, p6

    invoke-virtual {p0, p1, p2, p6}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BB)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    .line 1455
    invoke-virtual {p0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p4, v3}, Lorg/bitcoinj/core/ECKey;->verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1462
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Reached past end of ASN.1 stream"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1463
    sget-object p1, Lorg/bitcoinj/script/Script;->log:Lorg/slf4j/Logger;

    const-string p2, "Signature checking failed!"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    :goto_2
    const/16 p1, 0xac

    if-ne p5, p1, :cond_4

    if-eqz p0, :cond_3

    new-array p0, v2, [B

    aput-byte v2, p0, v1

    goto :goto_3

    :cond_3
    new-array p0, v1, [B

    .line 1467
    :goto_3
    invoke-virtual {p3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/16 p1, 0xad

    if-ne p5, p1, :cond_6

    if-eqz p0, :cond_5

    goto :goto_4

    .line 1470
    :cond_5
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Script failed OP_CHECKSIGVERIFY"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    return-void

    :catch_1
    move-exception p0

    .line 1443
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1432
    :cond_7
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Attempted OP_CHECKSIG(VERIFY) on a stack with size < 2"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static executeMultiSig(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IIILjava/util/Set;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "I",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/LinkedList<",
            "[B>;III",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1476
    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->STRICTENC:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {p7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->DERSIG:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 1477
    invoke-interface {p7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->LOW_S:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 1478
    invoke-interface {p7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1479
    :goto_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_12

    .line 1481
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-ltz v3, :cond_11

    const/16 v4, 0x14

    if-gt v3, v4, :cond_11

    add-int/2addr p4, v3

    const/16 v4, 0xc9

    if-gt p4, v4, :cond_10

    .line 1487
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-lt v4, v5, :cond_f

    .line 1490
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_2

    .line 1492
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1493
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1496
    :cond_2
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ltz v5, :cond_e

    if-gt v5, v3, :cond_e

    .line 1499
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v6, v5, 0x1

    if-lt v3, v6, :cond_d

    .line 1502
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    .line 1504
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1505
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1508
    :cond_3
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    .line 1509
    array-length v5, p2

    invoke-static {p2, p5, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 1511
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1512
    new-instance v6, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v7, v5

    add-int/2addr v7, v2

    invoke-direct {v6, v7}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1514
    :try_start_0
    invoke-static {v6, v5}, Lorg/bitcoinj/script/Script;->writeBytes(Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    invoke-virtual {v6}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {p2, v5}, Lorg/bitcoinj/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object p2

    goto :goto_4

    :catch_0
    move-exception p0

    .line 1516
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1522
    :cond_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p5

    if-lez p5, :cond_6

    .line 1523
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [B

    .line 1527
    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v0}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object v5

    .line 1528
    iget v6, v5, Lorg/bitcoinj/crypto/TransactionSignature;->sighashFlags:I

    int-to-byte v6, v6

    invoke-virtual {p0, p1, p2, v6}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BB)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    .line 1529
    invoke-virtual {v6}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v5, p5}, Lorg/bitcoinj/core/ECKey;->verify([BLorg/bitcoinj/core/ECKey$ECDSASignature;[B)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 1530
    invoke-virtual {v3}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 1536
    :cond_5
    :goto_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p5

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-le p5, v5, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_6
    const/4 p0, 0x1

    .line 1543
    :goto_6
    invoke-virtual {p3}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 1544
    sget-object p2, Lorg/bitcoinj/script/Script$VerifyFlag;->NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {p7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    array-length p2, p1

    if-gtz p2, :cond_7

    goto :goto_7

    .line 1545
    :cond_7
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OP_CHECKMULTISIG(VERIFY) with non-null nulldummy: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_7
    const/16 p1, 0xae

    if-ne p6, p1, :cond_a

    if-eqz p0, :cond_9

    new-array p0, v2, [B

    aput-byte v2, p0, v1

    goto :goto_8

    :cond_9
    new-array p0, v1, [B

    .line 1548
    :goto_8
    invoke-virtual {p3, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/16 p1, 0xaf

    if-ne p6, p1, :cond_c

    if-eqz p0, :cond_b

    goto :goto_9

    .line 1551
    :cond_b
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Script failed OP_CHECKMULTISIGVERIFY"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_9
    return p4

    .line 1500
    :cond_d
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < num_of_pubkeys + num_of_signatures + 3"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1498
    :cond_e
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "OP_CHECKMULTISIG(VERIFY) with sig count out of range"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1488
    :cond_f
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < num_of_pubkeys + 2"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1486
    :cond_10
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Total op count > 201 during OP_CHECKMULTISIG(VERIFY)"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1483
    :cond_11
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "OP_CHECKMULTISIG(VERIFY) with pubkey count out of range"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1480
    :cond_12
    new-instance p0, Lorg/bitcoinj/core/ScriptException;

    const-string p1, "Attempted OP_CHECKMULTISIG(VERIFY) on a stack with size < 2"

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Ljava/util/Set;)V
    .locals 21
    .param p0    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "J",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/LinkedList<",
            "[B>;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    move-wide/from16 v9, p1

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    .line 867
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 868
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v14, p3

    .line 870
    iget-object v1, v14, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v8, 0x0

    .line 871
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 870
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    .line 871
    invoke-virtual {v13, v7}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 873
    iget v5, v2, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-nez v5, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v8, [B

    .line 877
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 878
    :cond_1
    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 879
    iget-object v4, v2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v4, v4

    int-to-long v4, v4

    const-wide/16 v17, 0x208

    cmp-long v6, v4, v17

    if-gtz v6, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 885
    :cond_2
    iget-object v2, v2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v20, v7

    const/4 v11, 0x0

    goto/16 :goto_d

    .line 880
    :cond_3
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted to push a data string larger than 520 bytes"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_4
    iget v6, v2, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v5, 0x60

    if-le v6, v5, :cond_6

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0xc9

    if-gt v1, v5, :cond_5

    goto :goto_2

    .line 891
    :cond_5
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "More script operations than is allowed"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    move/from16 v17, v1

    const/16 v1, 0x65

    if-eq v6, v1, :cond_4d

    const/16 v1, 0x66

    if-eq v6, v1, :cond_4d

    const/16 v1, 0x7e

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x7f

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x80

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x81

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x83

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x84

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x85

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x86

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x8d

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x8e

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x95

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x96

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x97

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x98

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x99

    if-eq v6, v1, :cond_4c

    const/16 v1, 0x63

    if-eq v6, v1, :cond_49

    const/16 v1, 0x64

    if-eq v6, v1, :cond_46

    const/16 v1, 0x67

    if-eq v6, v1, :cond_44

    const/16 v1, 0x68

    if-eq v6, v1, :cond_42

    if-nez v3, :cond_7

    move-object v1, v7

    const/4 v11, 0x0

    goto/16 :goto_10

    :cond_7
    const/16 v1, 0x4f

    if-eq v6, v1, :cond_3f

    packed-switch v6, :pswitch_data_0

    const/4 v1, 0x4

    const-string v5, "Attempted to use disabled Script Op."

    packed-switch v6, :pswitch_data_1

    const-string v1, "Script attempted signature check but no tx was provided"

    const-string v8, "Attempted OP_SHA256 on an empty stack"

    const-string v3, "Script used a reserved opcode "

    packed-switch v6, :pswitch_data_2

    .line 1373
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :pswitch_0
    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->CHECKLOCKTIMEVERIFY:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1351
    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->DISCOURAGE_UPGRADABLE_NOPS:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_a

    .line 1352
    :cond_8
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    long-to-int v2, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v16

    move-object v8, v7

    move-object/from16 v7, p5

    .line 1356
    invoke-static/range {v1 .. v7}, Lorg/bitcoinj/script/Script;->executeCheckLockTimeVerify(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IILjava/util/Set;)V

    goto :goto_3

    :pswitch_1
    move-object v8, v7

    .line 1367
    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->DISCOURAGE_UPGRADABLE_NOPS:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {v11, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    move-object/from16 v20, v8

    goto/16 :goto_b

    .line 1368
    :cond_a
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move-object v8, v7

    if-eqz p0, :cond_b

    long-to-int v2, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v17

    move v7, v6

    move/from16 v6, v16

    move-object/from16 v20, v8

    const/4 v11, 0x0

    move-object/from16 v8, p5

    .line 1346
    invoke-static/range {v1 .. v8}, Lorg/bitcoinj/script/Script;->executeMultiSig(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IIILjava/util/Set;)I

    move-result v1

    goto/16 :goto_d

    .line 1345
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    if-eqz p0, :cond_c

    long-to-int v2, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, v16

    move v6, v7

    move-object/from16 v7, p5

    .line 1340
    invoke-static/range {v1 .. v7}, Lorg/bitcoinj/script/Script;->executeCheckSig(Lorg/bitcoinj/core/Transaction;ILorg/bitcoinj/script/Script;Ljava/util/LinkedList;IILjava/util/Set;)V

    goto/16 :goto_c

    .line 1339
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1334
    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->getStartLocationInProgram()I

    move-result v1

    add-int/2addr v1, v4

    move/from16 v16, v1

    goto/16 :goto_c

    :pswitch_5
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1329
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_d

    .line 1331
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1330
    :cond_d
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v8}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1324
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_e

    .line 1326
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1325
    :cond_e
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_HASH160 on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1319
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_f

    .line 1321
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1320
    :cond_f
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v8}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1310
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_10

    :try_start_0
    const-string v1, "SHA-1"

    .line 1313
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    .line 1315
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1311
    :cond_10
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_SHA1 on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1300
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_11

    .line 1302
    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    .line 1303
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1304
    array-length v3, v2

    invoke-virtual {v1, v2, v11, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->update([BII)V

    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 1306
    invoke-virtual {v1, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->doFinal([BI)I

    .line 1307
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1301
    :cond_11
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_RIPEMD160 on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1289
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_13

    .line 1291
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 1292
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 1293
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v3

    .line 1294
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_12

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_12

    .line 1295
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1297
    :cond_12
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1290
    :cond_13
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_WITHIN on a stack with size < 3"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1280
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_15

    .line 1282
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 1283
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 1285
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_c

    .line 1286
    :cond_14
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "OP_NUMEQUALVERIFY failed"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_15
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_NUMEQUALVERIFY on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :pswitch_c
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v5}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    .line 1194
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_20

    .line 1196
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 1197
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v2

    packed-switch v7, :pswitch_data_3

    .line 1268
    :pswitch_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Opcode switched at runtime?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :pswitch_f
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_1f

    goto :goto_4

    .line 1256
    :pswitch_10
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1f

    :goto_4
    move-object v1, v2

    goto/16 :goto_6

    .line 1250
    :pswitch_11
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_16

    .line 1251
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto/16 :goto_6

    .line 1253
    :cond_16
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto/16 :goto_6

    .line 1244
    :pswitch_12
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_17

    .line 1245
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto/16 :goto_6

    .line 1247
    :cond_17
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto/16 :goto_6

    .line 1238
    :pswitch_13
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_18

    .line 1239
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto/16 :goto_6

    .line 1241
    :cond_18
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1232
    :pswitch_14
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_19

    .line 1233
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_6

    .line 1235
    :cond_19
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1226
    :pswitch_15
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1227
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_6

    .line 1229
    :cond_1a
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1220
    :pswitch_16
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1221
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_6

    .line 1223
    :cond_1b
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1214
    :pswitch_17
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_5

    .line 1217
    :cond_1c
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1215
    :cond_1d
    :goto_5
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_6

    .line 1208
    :pswitch_18
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1209
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_6

    .line 1211
    :cond_1e
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_6

    .line 1205
    :pswitch_19
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_6

    .line 1202
    :pswitch_1a
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1271
    :cond_1f
    :goto_6
    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1195
    :cond_20
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted a numeric op on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :pswitch_1b
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v5}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    .line 1143
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_24

    .line 1145
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    packed-switch v7, :pswitch_data_4

    .line 1174
    :pswitch_1d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1168
    :pswitch_1e
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1169
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_7

    .line 1171
    :cond_21
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_7

    .line 1162
    :pswitch_1f
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1163
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_7

    .line 1165
    :cond_22
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_7

    .line 1158
    :pswitch_20
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_23

    .line 1159
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_7

    .line 1155
    :pswitch_21
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_7

    .line 1152
    :pswitch_22
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_7

    .line 1149
    :pswitch_23
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1177
    :cond_23
    :goto_7
    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1144
    :cond_24
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted a numeric op on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1132
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_26

    .line 1134
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_c

    .line 1135
    :cond_25
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "OP_EQUALVERIFY: non-equal data"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_26
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_EQUALVERIFY on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1127
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_28

    .line 1129
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_27

    new-array v1, v4, [B

    aput-byte v4, v1, v11

    goto :goto_8

    :cond_27
    new-array v1, v11, [B

    :goto_8
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1128
    :cond_28
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_EQUAL on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :pswitch_26
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v5}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_27
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1117
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_29

    .line 1119
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1118
    :cond_29
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_SIZE on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :pswitch_28
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {v0, v5}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    .line 1102
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2a

    .line 1104
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1105
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1106
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x7d

    if-ne v7, v2, :cond_40

    .line 1109
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1103
    :cond_2a
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_SWAP on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2a
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1091
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2b

    .line 1093
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1094
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1095
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1096
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1097
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1098
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1092
    :cond_2b
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_ROT on a stack with size < 3"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2b
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    .line 1077
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_2f

    .line 1079
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2e

    .line 1080
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v5

    int-to-long v5, v5

    cmp-long v8, v1, v5

    if-gez v8, :cond_2e

    .line 1082
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    cmp-long v6, v3, v1

    if-gez v6, :cond_2c

    .line 1084
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const-wide/16 v18, 0x1

    add-long v3, v3, v18

    goto :goto_9

    .line 1085
    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/16 v2, 0x7a

    if-ne v7, v2, :cond_2d

    .line 1087
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1088
    :cond_2d
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1081
    :cond_2e
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "OP_PICK/OP_ROLL attempted to get data deeper than stack size"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1078
    :cond_2f
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_PICK/OP_ROLL on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1069
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_30

    .line 1071
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1072
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1073
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1070
    :cond_30
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_OVER on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2d
    move-object/from16 v20, v7

    const/4 v2, 0x2

    const/4 v11, 0x0

    .line 1062
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v2, :cond_31

    .line 1064
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1065
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 1066
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1063
    :cond_31
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_NIP on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2e
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1057
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_32

    .line 1059
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1058
    :cond_32
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_DUP on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1052
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_33

    .line 1054
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    goto/16 :goto_c

    .line 1053
    :cond_33
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_DROP on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1049
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_31
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1043
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_34

    .line 1045
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1046
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1044
    :cond_34
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_IFDUP on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_32
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1031
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, v1, :cond_35

    .line 1033
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1034
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1035
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1036
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1037
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1039
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1032
    :cond_35
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_2SWAP on a stack with size < 4"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_33
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1015
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_36

    .line 1017
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1018
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1019
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1020
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1021
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1022
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1023
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1016
    :cond_36
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_2ROT on a stack with size < 6"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_34
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 1005
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, v1, :cond_37

    .line 1007
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1008
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1009
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1010
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1011
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1006
    :cond_37
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_2OVER on a stack with size < 4"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_35
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 995
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_38

    .line 997
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 998
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 999
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1000
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 996
    :cond_38
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_3DUP on a stack with size < 3"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_36
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 987
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_39

    .line 989
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 990
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 991
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 988
    :cond_39
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_2DUP on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_37
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 981
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3a

    .line 983
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 984
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    goto/16 :goto_c

    .line 982
    :cond_3a
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_2DROP on a stack with size < 2"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_38
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 976
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_3b

    .line 978
    invoke-virtual {v12}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 977
    :cond_3b
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_FROMALTSTACK on an empty altstack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 971
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_3c

    .line 973
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 972
    :cond_3c
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_TOALTSTACK on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :pswitch_3a
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Script called OP_RETURN"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 963
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v4, :cond_3e

    .line 965
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_c

    .line 966
    :cond_3d
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "OP_VERIFY failed"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_3e
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_VERIFY on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    :pswitch_3c
    move-object/from16 v20, v7

    :goto_b
    const/4 v11, 0x0

    goto :goto_c

    :pswitch_3d
    move-object/from16 v20, v7

    const/4 v11, 0x0

    move v7, v6

    .line 958
    invoke-static {v7}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_3f
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 940
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v11}, Lorg/bitcoinj/core/Utils;->encodeMPI(Ljava/math/BigInteger;Z)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_c
    move/from16 v1, v17

    .line 1377
    :goto_d
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_41

    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ltz v2, :cond_41

    move-object/from16 v11, p5

    move-object/from16 v7, v20

    :goto_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1378
    :cond_41
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Stack size exceeded range"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 928
    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 930
    invoke-virtual {v13}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    :goto_f
    move-object/from16 v1, v20

    goto/16 :goto_10

    .line 929
    :cond_43
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_ENDIF without OP_IF/NOTIF"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move-object/from16 v20, v7

    const/4 v11, 0x0

    .line 923
    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 925
    invoke-virtual {v13}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 924
    :cond_45
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_ELSE without OP_IF/NOTIF"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move-object/from16 v20, v7

    const/4 v11, 0x0

    if-nez v3, :cond_47

    move-object/from16 v1, v20

    .line 915
    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_47
    move-object/from16 v1, v20

    .line 918
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, v4, :cond_48

    .line 920
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 919
    :cond_48
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_NOTIF on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move-object v1, v7

    const/4 v11, 0x0

    if-nez v3, :cond_4a

    .line 906
    invoke-virtual {v13, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 909
    :cond_4a
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, v4, :cond_4b

    .line 911
    invoke-virtual/range {p4 .. p4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 v11, p5

    move-object v7, v1

    move/from16 v1, v17

    goto/16 :goto_e

    .line 910
    :cond_4b
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Attempted OP_IF on an empty stack"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_4c
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Script included a disabled Script Op."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_4d
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Script included OP_VERIF or OP_VERNOTIF"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :cond_4e
    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    return-void

    .line 1382
    :cond_4f
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "OP_IF/OP_NOTIF without OP_ENDIF"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x69
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x93
        :pswitch_1a
        :pswitch_19
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8b
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public static executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Z)V
    .locals 6
    .param p0    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "J",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/LinkedList<",
            "[B>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p5, :cond_0

    .line 848
    sget-object p5, Lorg/bitcoinj/script/Script$VerifyFlag;->NULLDUMMY:Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 849
    invoke-static {p5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-class p5, Lorg/bitcoinj/script/Script$VerifyFlag;

    .line 850
    invoke-static {p5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p5

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 852
    invoke-static/range {v0 .. v5}, Lorg/bitcoinj/script/Script;->executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Ljava/util/Set;)V

    return-void
.end method

.method private findKeyInRedeem(Lorg/bitcoinj/core/ECKey;)I
    .locals 5

    .line 506
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 507
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 509
    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v2, v2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find matching key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in script "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findSigInRedeem([BLorg/bitcoinj/core/Sha256Hash;)I
    .locals 5

    .line 534
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 535
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0

    const/4 v2, 0x1

    .line 536
    invoke-static {p1, v2}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 538
    iget-object v3, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v3, v3, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v3}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lorg/bitcoinj/core/ECKey;->verify(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey$ECDSASignature;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    move v1, v4

    goto :goto_0

    .line 543
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find matching key for signature on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sig "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p2, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getP2SHSigOpCount([B)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 613
    new-instance v0, Lorg/bitcoinj/script/Script;

    invoke-direct {v0}, Lorg/bitcoinj/script/Script;-><init>()V

    .line 615
    :try_start_0
    invoke-direct {v0, p0}, Lorg/bitcoinj/script/Script;->parse([B)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :catch_0
    iget-object p0, v0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_1

    .line 620
    iget-object v2, v0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    new-instance v2, Lorg/bitcoinj/script/Script;

    invoke-direct {v2}, Lorg/bitcoinj/script/Script;-><init>()V

    .line 622
    iget-object v0, v0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object p0, p0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-direct {v2, p0}, Lorg/bitcoinj/script/Script;->parse([B)V

    .line 623
    iget-object p0, v2, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-static {p0, v1}, Lorg/bitcoinj/script/Script;->getSigOpCount(Ljava/util/List;Z)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getQuickProgram()[B
    .locals 1

    .line 1641
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->program:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    return-object v0
.end method

.method private static getSigOpCount(Ljava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/ScriptChunk;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 553
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    .line 554
    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    iget v3, v2, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p1, :cond_1

    const/16 v3, 0x51

    if-lt v1, v3, :cond_1

    const/16 v3, 0x60

    if-gt v1, v3, :cond_1

    .line 563
    invoke-static {v1}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x14

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 570
    :goto_1
    iget v1, v2, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    goto :goto_0

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSigOpCount([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 600
    new-instance v0, Lorg/bitcoinj/script/Script;

    invoke-direct {v0}, Lorg/bitcoinj/script/Script;-><init>()V

    .line 602
    :try_start_0
    invoke-direct {v0, p0}, Lorg/bitcoinj/script/Script;->parse([B)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :catch_0
    iget-object p0, v0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bitcoinj/script/Script;->getSigOpCount(Ljava/util/List;Z)I

    move-result p0

    return p0
.end method

.method private parse([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    .line 183
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_d

    .line 184
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v1, p1, v1

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    const/16 v3, 0x4c

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    if-ltz v2, :cond_0

    if-ge v2, v3, :cond_0

    int-to-long v7, v2

    goto :goto_2

    :cond_0
    const-string v7, "Unexpected end of script"

    if-ne v2, v3, :cond_2

    .line 192
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    :goto_1
    int-to-long v7, v3

    goto :goto_2

    .line 192
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {p1, v7}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/16 v3, 0x4d

    const/16 v8, 0x8

    if-ne v2, v3, :cond_4

    .line 196
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    const/4 v9, 0x2

    if-lt v3, v9, :cond_3

    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/2addr v7, v8

    or-int/2addr v3, v7

    goto :goto_1

    .line 196
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {p1, v7}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_6

    .line 201
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    const/4 v9, 0x4

    if-lt v3, v9, :cond_5

    .line 202
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-long v11, v3

    shl-long v7, v11, v8

    or-long/2addr v7, v9

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-long v9, v3

    const/16 v3, 0x10

    shl-long/2addr v9, v3

    or-long/2addr v7, v9

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-long v9, v3

    const/16 v3, 0x18

    shl-long/2addr v9, v3

    or-long/2addr v7, v9

    goto :goto_2

    .line 201
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    invoke-direct {p1, v7}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-wide v7, v4

    :goto_2
    const/4 v3, 0x0

    cmp-long v9, v7, v4

    if-nez v9, :cond_7

    .line 207
    new-instance v4, Lorg/bitcoinj/script/ScriptChunk;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    goto :goto_4

    .line 209
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    int-to-long v4, v4

    cmp-long v9, v7, v4

    if-gtz v9, :cond_c

    long-to-int v4, v7

    .line 211
    new-array v5, v4, [B

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_9

    .line 212
    invoke-virtual {v0, v5, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    int-to-long v9, v4

    cmp-long v4, v9, v7

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :cond_9
    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 213
    new-instance v4, Lorg/bitcoinj/script/ScriptChunk;

    invoke-direct {v4, v2, v5, v1}, Lorg/bitcoinj/script/ScriptChunk;-><init>(I[BI)V

    .line 216
    :goto_4
    sget-object v1, Lorg/bitcoinj/script/Script;->STANDARD_TRANSACTION_SCRIPT_CHUNKS:[Lorg/bitcoinj/script/ScriptChunk;

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_b

    aget-object v5, v1, v3

    .line 217
    invoke-virtual {v5, v4}, Lorg/bitcoinj/script/ScriptChunk;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v4, v5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 219
    :cond_b
    iget-object v1, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :cond_c
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string v0, "Push of data element that is larger than remaining data"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-void
.end method

.method public static removeAllInstancesOf([B[B)[B
    .locals 8

    .line 750
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    array-length v1, p0

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 753
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 754
    invoke-static {p0, v2, p1}, Lorg/bitcoinj/script/Script;->equalsRange([BI[B)Z

    move-result v3

    add-int/lit8 v4, v2, 0x1

    .line 756
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x4c

    if-ltz v2, :cond_0

    if-ge v2, v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    if-ne v2, v5, :cond_1

    .line 761
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x4d

    if-ne v2, v5, :cond_2

    .line 763
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    const/16 v5, 0x4e

    if-ne v2, v5, :cond_3

    .line 766
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v3, :cond_4

    .line 773
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write(I)V

    add-int v2, v4, v5

    .line 774
    invoke-static {p0, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 776
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_2
    add-int v2, v4, v5

    goto :goto_0

    .line 781
    :cond_5
    invoke-virtual {v0}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static removeAllInstancesOfOp([BI)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 788
    invoke-static {p0, v0}, Lorg/bitcoinj/script/Script;->removeAllInstancesOf([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeBytes(Ljava/io/OutputStream;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    array-length v0, p1

    const/16 v1, 0x4c

    if-ge v0, v1, :cond_0

    .line 379
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 380
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 381
    :cond_0
    array-length v0, p1

    const/16 v2, 0x100

    if-ge v0, v2, :cond_1

    .line 382
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 383
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 384
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 385
    :cond_1
    array-length v0, p1

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    const/16 v0, 0x4d

    .line 386
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 387
    array-length v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 388
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 389
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    .line 391
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unimplemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1570
    sget-object v5, Lorg/bitcoinj/script/Script;->ALL_VERIFY_FLAGS:Ljava/util/EnumSet;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/Set;)V

    return-void
.end method

.method public correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "J",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1587
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object p1
    :try_end_0
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_9

    invoke-virtual {p4}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_9

    .line 1594
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p0

    move-object v5, v0

    move-object v6, p5

    .line 1597
    invoke-static/range {v1 .. v6}, Lorg/bitcoinj/script/Script;->executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Ljava/util/Set;)V

    .line 1598
    sget-object v1, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {p5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :cond_0
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, v0

    move-object v6, p5

    .line 1600
    invoke-static/range {v1 .. v6}, Lorg/bitcoinj/script/Script;->executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Ljava/util/Set;)V

    .line 1602
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1605
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1621
    sget-object v0, Lorg/bitcoinj/script/Script$VerifyFlag;->P2SH:Lorg/bitcoinj/script/Script$VerifyFlag;

    invoke-interface {p5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p4}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 1622
    iget-object p4, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 1623
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    const/16 v1, 0x60

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 1624
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "Attempted to spend a P2SH scriptPubKey with a script that contained script ops"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1626
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    .line 1627
    new-instance v4, Lorg/bitcoinj/script/Script;

    invoke-direct {v4, p4}, Lorg/bitcoinj/script/Script;-><init>([B)V

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v7

    move-object v6, p5

    .line 1629
    invoke-static/range {v1 .. v6}, Lorg/bitcoinj/script/Script;->executeScript(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/LinkedList;Ljava/util/Set;)V

    .line 1631
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    .line 1634
    invoke-virtual {v7}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bitcoinj/script/Script;->castToBool([B)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 1635
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "P2SH script execution resulted in a non-true stack"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1632
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "P2SH stack empty at end of script execution."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void

    .line 1606
    :cond_7
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Script resulted in a non-true stack: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1603
    :cond_8
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "Stack empty at end of script execution."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1592
    :cond_9
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "Script larger than 10,000 bytes"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 1589
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createEmptyInputScript(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;
    .locals 4
    .param p1    # Lorg/bitcoinj/core/ECKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/bitcoinj/script/Script;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 447
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p2, "Key required to create pay-to-address input script"

    .line 448
    invoke-static {v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 449
    invoke-static {v3, p1}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1

    .line 450
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 451
    invoke-static {v3}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1

    .line 452
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const-string p1, "Redeem script required to create P2SH input script"

    .line 453
    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 454
    invoke-static {v3, p2}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHMultiSigInputScript(Ljava/util/List;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1

    .line 456
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Do not understand script type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1665
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1666
    :cond_1
    invoke-direct {p0}, Lorg/bitcoinj/script/Script;->getQuickProgram()[B

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/script/Script;

    invoke-direct {p1}, Lorg/bitcoinj/script/Script;->getQuickProgram()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCLTVPaymentChannelExpiry()Ljava/math/BigInteger;
    .locals 3

    .line 330
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToCLTVPaymentChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/bitcoinj/script/Script;->castToBigInteger([BI)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script not a standard CHECKLOCKTIMEVERIFY transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCLTVPaymentChannelRecipientPubKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToCLTVPaymentChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script not a standard CHECKLOCKTIMVERIFY transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCLTVPaymentChannelSenderPubKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToCLTVPaymentChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script not a standard CHECKLOCKTIMVERIFY transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/ScriptChunk;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimeSeconds()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lorg/bitcoinj/script/Script;->creationTimeSeconds:J

    return-wide v0
.end method

.method public getFromAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    new-instance v0, Lorg/bitcoinj/core/Address;

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public getNumberOfBytesRequiredToSpend(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)I
    .locals 3
    .param p1    # Lorg/bitcoinj/core/ECKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/bitcoinj/script/Script;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 651
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x4b

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p1, "P2SH script requires redeemScript to be spent"

    .line 653
    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 654
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getNumberOfSignaturesRequiredToSpend()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4b

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p1, p2

    return p1

    .line 655
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 657
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getNumberOfSignaturesRequiredToSpend()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4b

    add-int/2addr p1, v1

    return p1

    .line 658
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    .line 661
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x41

    if-eqz p1, :cond_4

    .line 664
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    array-length p2, p1

    :cond_4
    add-int/2addr p2, v2

    return p2

    .line 666
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported script type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumberOfSignaturesRequiredToSpend()I
    .locals 2

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 635
    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0

    return v0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "For P2SH number of signatures depends on redeem script"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported script type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getProgram()[B
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->program:[B

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->program:[B

    iget-object v1, p0, Lorg/bitcoinj/script/Script;->program:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    iget-object v1, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    .line 149
    invoke-virtual {v2, v0}, Lorg/bitcoinj/script/ScriptChunk;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/script/Script;->program:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPubKey()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 290
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 291
    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    .line 292
    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    .line 293
    iget-object v3, v2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    if-eqz v0, :cond_0

    .line 294
    array-length v4, v0

    if-le v4, v1, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v3

    if-le v4, v1, :cond_0

    return-object v3

    :cond_0
    const/16 v3, 0xac

    .line 297
    invoke-virtual {v2, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v1, :cond_1

    return-object v0

    .line 301
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script did not match expected form: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Script not of right size, expecting 2 but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPubKeyHash()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    return-object v0

    .line 275
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Script not in the standard scriptPubKey form"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPubKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/script/ScriptChunk;

    iget v1, v1, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v1}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 529
    iget-object v3, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v3, v3, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v3}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 524
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "Only usable for multisig scripts."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScriptSigWithSignature(Lorg/bitcoinj/script/Script;[BI)Lorg/bitcoinj/script/Script;
    .locals 3

    .line 466
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 469
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 474
    :goto_1
    invoke-static {p1, p2, p3, v1, v2}, Lorg/bitcoinj/script/ScriptBuilder;->updateScriptWithSignature(Lorg/bitcoinj/script/Script;[BIII)Lorg/bitcoinj/script/Script;

    move-result-object p1

    return-object p1
.end method

.method public getScriptType()Lorg/bitcoinj/script/Script$ScriptType;
    .locals 2

    .line 1651
    sget-object v0, Lorg/bitcoinj/script/Script$ScriptType;->NO_TYPE:Lorg/bitcoinj/script/Script$ScriptType;

    .line 1652
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1653
    sget-object v0, Lorg/bitcoinj/script/Script$ScriptType;->P2PKH:Lorg/bitcoinj/script/Script$ScriptType;

    goto :goto_0

    .line 1654
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1655
    sget-object v0, Lorg/bitcoinj/script/Script$ScriptType;->PUB_KEY:Lorg/bitcoinj/script/Script$ScriptType;

    goto :goto_0

    .line 1656
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1657
    sget-object v0, Lorg/bitcoinj/script/Script$ScriptType;->P2SH:Lorg/bitcoinj/script/Script$ScriptType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getSigInsertionIndex(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey;)I
    .locals 5

    .line 485
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/script/ScriptChunk;

    .line 487
    iget-object v2, v1, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v2, Lorg/bitcoinj/script/Script;

    iget-object v1, v1, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-direct {v2, v1}, Lorg/bitcoinj/script/Script;-><init>([B)V

    .line 491
    invoke-direct {v2, p2}, Lorg/bitcoinj/script/Script;->findKeyInRedeem(Lorg/bitcoinj/core/ECKey;)I

    move-result p2

    .line 492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/script/ScriptChunk;

    .line 493
    iget v4, v3, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    if-nez v4, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v4, v3, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v3, v3, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-direct {v2, v3, p1}, Lorg/bitcoinj/script/Script;->findSigInRedeem([BLorg/bitcoinj/core/Sha256Hash;)I

    move-result v3

    if-ge p2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 350
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;Z)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1
.end method

.method public getToAddress(Lorg/bitcoinj/core/NetworkParameters;Z)Lorg/bitcoinj/core/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance p2, Lorg/bitcoinj/core/Address;

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p2

    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-static {p1, p0}, Lorg/bitcoinj/core/Address;->fromP2SHScript(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 365
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 366
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1

    .line 368
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    const-string p2, "Cannot cast this script to a pay-to-address type"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 1671
    invoke-direct {p0}, Lorg/bitcoinj/script/Script;->getQuickProgram()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isOpReturn()Z
    .locals 3

    .line 832
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x6a

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isPayToScriptHash()Z
    .locals 5

    .line 687
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    .line 688
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-ne v1, v4, :cond_0

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0xa9

    if-ne v1, v4, :cond_0

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v4, 0x14

    if-ne v1, v4, :cond_0

    const/16 v1, 0x16

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x87

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSentToAddress()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v3, 0x76

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v3, 0xa9

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x2

    .line 244
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x3

    .line 245
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v3, 0x88

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v3, 0x4

    .line 246
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSentToCLTVPaymentChannel()Z
    .locals 3

    .line 721
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    return v1

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 725
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0xad

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 726
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 728
    :cond_3
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0xb1

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 729
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x75

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 730
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 732
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public isSentToMultiSig()Z
    .locals 4

    .line 698
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 699
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 701
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xae

    .line 702
    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xaf

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 705
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 706
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 707
    :cond_3
    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0

    if-lt v0, v3, :cond_8

    .line 708
    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v0, 0x3

    if-eq v2, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 709
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_6

    .line 710
    iget-object v2, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget v0, v0, Lorg/bitcoinj/script/ScriptChunk;->opcode:I

    invoke-static {v0}, Lorg/bitcoinj/script/Script;->decodeFromOpN(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v3, :cond_7

    return v1

    :cond_7
    return v3

    :catch_0
    :cond_8
    :goto_1
    return v1
.end method

.method public isSentToP2SH()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    return v0
.end method

.method public isSentToRawPubKey()Z
    .locals 4

    .line 230
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    const/16 v3, 0xac

    invoke-virtual {v0, v3}, Lorg/bitcoinj/script/ScriptChunk;->equalsOpCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCreationTimeSeconds(J)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lorg/bitcoinj/script/Script;->creationTimeSeconds:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bitcoinj/script/Script;->chunks:Ljava/util/List;

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
