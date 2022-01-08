.class public Lorg/bitcoinj/core/Transaction;
.super Lorg/bitcoinj/core/ChildMessage;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/Transaction$SigHash;,
        Lorg/bitcoinj/core/Transaction$Purpose;
    }
.end annotation


# static fields
.field public static final DEFAULT_TX_FEE:Lorg/bitcoinj/core/Coin;

.field public static final LOCKTIME_THRESHOLD:I = 0x1dcd6500

.field public static final LOCKTIME_THRESHOLD_BIG:Ljava/math/BigInteger;

.field public static final MAX_INITIAL_INPUTS_OUTPUTS_SIZE:I = 0x14

.field public static final MAX_STANDARD_TX_SIZE:I = 0x186a0

.field public static final MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

.field public static final REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

.field public static final SIGHASH_ANYONECANPAY_VALUE:B = -0x80t

.field public static final SORT_TX_BY_HEIGHT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private appearsInHashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedForBag:Lorg/bitcoinj/core/TransactionBag;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private cachedValue:Lorg/bitcoinj/core/Coin;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private confidence:Lorg/bitcoinj/core/TransactionConfidence;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hash:Lorg/bitcoinj/core/Sha256Hash;

.field private inputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bitcoinj/core/TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private lockTime:J

.field private memo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private optimalEncodingMessageSize:I

.field private outputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private purpose:Lorg/bitcoinj/core/Transaction$Purpose;

.field private updatedAt:Ljava/util/Date;

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lorg/bitcoinj/core/Transaction$1;

    invoke-direct {v0}, Lorg/bitcoinj/core/Transaction$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    .line 78
    new-instance v0, Lorg/bitcoinj/core/Transaction$2;

    invoke-direct {v0}, Lorg/bitcoinj/core/Transaction$2;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    .line 92
    const-class v0, Lorg/bitcoinj/core/Transaction;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Transaction;->log:Lorg/slf4j/Logger;

    const-wide/32 v0, 0x1dcd6500

    .line 97
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Transaction;->LOCKTIME_THRESHOLD_BIG:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3e8

    .line 105
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    const-wide/32 v0, 0x186a0

    .line 111
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Transaction;->DEFAULT_TX_FEE:Lorg/bitcoinj/core/Coin;

    const-wide/16 v0, 0x222

    .line 118
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 2

    .line 200
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 184
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    const-wide/16 v0, 0x1

    .line 201
    iput-wide v0, p0, Lorg/bitcoinj/core/Transaction;->version:J

    .line 202
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    const/16 p1, 0x8

    .line 205
    iput p1, p0, Lorg/bitcoinj/core/Transaction;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    .line 184
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    .line 184
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V
    .locals 0
    .param p4    # Lorg/bitcoinj/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 237
    invoke-direct/range {p0 .. p6}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    .line 184
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V
    .locals 7
    .param p3    # Lorg/bitcoinj/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

    move-object v5, p4

    move v6, p5

    .line 245
    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    .line 184
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/core/Transaction$Purpose;

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-void
.end method

.method protected static calcLength([BI)I
    .locals 12

    add-int/lit8 v0, p1, 0x4

    .line 529
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v1, p0, v0}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 530
    iget-wide v2, v1, Lorg/bitcoinj/core/VarInt;->value:J

    .line 531
    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->getOriginalSizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    add-int/lit8 v0, v0, 0x24

    .line 536
    new-instance v5, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v5, p0, v0}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 537
    iget-wide v6, v5, Lorg/bitcoinj/core/VarInt;->value:J

    int-to-long v8, v0

    const-wide/16 v10, 0x4

    add-long/2addr v6, v10

    .line 539
    invoke-virtual {v5}, Lorg/bitcoinj/core/VarInt;->getOriginalSizeInBytes()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v6, v10

    add-long/2addr v8, v6

    long-to-int v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 542
    :cond_0
    new-instance v2, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v2, p0, v0}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 543
    iget-wide v3, v2, Lorg/bitcoinj/core/VarInt;->value:J

    .line 544
    invoke-virtual {v2}, Lorg/bitcoinj/core/VarInt;->getOriginalSizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    :goto_1
    int-to-long v5, v1

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    add-int/lit8 v0, v0, 0x8

    .line 549
    new-instance v2, Lorg/bitcoinj/core/VarInt;

    invoke-direct {v2, p0, v0}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 550
    iget-wide v5, v2, Lorg/bitcoinj/core/VarInt;->value:J

    int-to-long v7, v0

    .line 551
    invoke-virtual {v2}, Lorg/bitcoinj/core/VarInt;->getOriginalSizeInBytes()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v5, v9

    add-long/2addr v7, v5

    long-to-int v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public addBlockAppearance(Lorg/bitcoinj/core/Sha256Hash;I)V
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->appearsInHashes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/Transaction;->appearsInHashes:Ljava/util/Map;

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->appearsInHashes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInput(Lorg/bitcoinj/core/Sha256Hash;JLorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionInput;
    .locals 4

    .line 798
    new-instance v0, Lorg/bitcoinj/core/TransactionInput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p4}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p4

    new-instance v2, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v3, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v2, v3, p2, p3, p1}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    invoke-direct {v0, v1, p0, p4, v2}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;
    .locals 2

    .line 786
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    .line 787
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/TransactionInput;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 788
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lorg/bitcoinj/core/TransactionInput;->length:I

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Transaction;->adjustLength(II)V

    return-object p1
.end method

.method public addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;
    .locals 2

    .line 778
    new-instance v0, Lorg/bitcoinj/core/TransactionInput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionOutput;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;
    .locals 2

    .line 880
    new-instance v0, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/TransactionOutput;
    .locals 2

    .line 888
    new-instance v0, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/ECKey;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;
    .locals 2

    .line 896
    new-instance v0, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    return-object p1
.end method

.method public addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;
    .locals 2

    .line 869
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    .line 870
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/TransactionOutput;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 871
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lorg/bitcoinj/core/TransactionOutput;->length:I

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Transaction;->adjustLength(II)V

    return-object p1
.end method

.method public addSignedInput(Lorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/TransactionInput;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 832
    sget-object v4, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/core/Transaction;->addSignedInput(Lorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public addSignedInput(Lorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/TransactionInput;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Attempting to sign tx without outputs."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 813
    new-instance v0, Lorg/bitcoinj/core/TransactionInput;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;)V

    .line 814
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    .line 815
    iget-object p1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 816
    invoke-virtual {p3, p1}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    .line 817
    new-instance v1, Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-direct {v1, p1, p4, p5}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 818
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 819
    invoke-static {v1}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 821
    invoke-static {v1, p3}, Lorg/bitcoinj/script/ScriptBuilder;->createInputScript(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    :goto_0
    return-object v0

    .line 823
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Don\'t know how to sign for this kind of scriptPubKey: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSignedInput(Lorg/bitcoinj/core/TransactionOutput;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/TransactionInput;
    .locals 1

    .line 840
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lorg/bitcoinj/core/Transaction;->addSignedInput(Lorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method public addSignedInput(Lorg/bitcoinj/core/TransactionOutput;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/TransactionInput;
    .locals 6

    .line 848
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/core/Transaction;->addSignedInput(Lorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    return-object p1
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->version:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 1072
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1073
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1074
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/TransactionInput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 1075
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1076
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 1077
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/TransactionOutput;->bitcoinSerialize(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 1078
    :cond_1
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->lockTime:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    return-void
.end method

.method public calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;
    .locals 0

    .line 935
    invoke-virtual {p3}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p3

    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BLorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 936
    new-instance p3, Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    invoke-direct {p3, p1, p4, p5}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    return-object p3
.end method

.method public calculateSignature(ILorg/bitcoinj/core/ECKey;[BLorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;
    .locals 0

    .line 916
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BLorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 917
    new-instance p3, Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/ECKey;->sign(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object p1

    invoke-direct {p3, p1, p4, p5}, Lorg/bitcoinj/crypto/TransactionSignature;-><init>(Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    return-object p3
.end method

.method public checkCoinBaseHeight(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1227
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1228
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1231
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1232
    new-instance v2, Lorg/bitcoinj/script/ScriptBuilder;

    invoke-direct {v2}, Lorg/bitcoinj/script/ScriptBuilder;-><init>()V

    int-to-long v3, p1

    .line 1233
    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/script/ScriptBuilder;->number(J)Lorg/bitcoinj/script/ScriptBuilder;

    .line 1234
    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptBuilder;->build()Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    .line 1235
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v1

    .line 1236
    array-length v2, v1

    array-length v3, p1

    const-string v4, "Block height mismatch in coinbase."

    if-lt v2, v3, :cond_3

    .line 1239
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1240
    aget-byte v2, v1, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1241
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;

    invoke-direct {p1, v4}, Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 1237
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;

    invoke-direct {p1, v4}, Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearInputs()V
    .locals 3

    .line 761
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    .line 762
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    const/4 v2, 0x0

    .line 763
    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionInput;->setParent(Lorg/bitcoinj/core/Message;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 767
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/bitcoinj/core/Transaction;->length:I

    return-void
.end method

.method public clearOutputs()V
    .locals 3

    .line 856
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    .line 857
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    const/4 v2, 0x0

    .line 858
    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionOutput;->setParent(Lorg/bitcoinj/core/Message;)V

    goto :goto_0

    .line 860
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/bitcoinj/core/Transaction;->length:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1201
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public estimateLockTime(Lorg/bitcoinj/core/AbstractBlockChain;)Ljava/util/Date;
    .locals 5

    .line 1359
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->lockTime:J

    const-wide/32 v2, 0x1dcd6500

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1360
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/bitcoinj/core/AbstractBlockChain;->estimateBlockTime(I)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 1362
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public getAppearsInHashes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->appearsInHashes:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConfidence()Lorg/bitcoinj/core/TransactionConfidence;
    .locals 1

    .line 1172
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->getConfidence(Lorg/bitcoinj/core/Context;)Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence(Lorg/bitcoinj/core/Context;)Lorg/bitcoinj/core/TransactionConfidence;
    .locals 0

    .line 1180
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getConfidenceTable()Lorg/bitcoinj/core/TxConfidenceTable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Transaction;->getConfidence(Lorg/bitcoinj/core/TxConfidenceTable;)Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    return-object p1
.end method

.method public getConfidence(Lorg/bitcoinj/core/TxConfidenceTable;)Lorg/bitcoinj/core/TransactionConfidence;
    .locals 1

    .line 1187
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->confidence:Lorg/bitcoinj/core/TransactionConfidence;

    if-nez v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/TxConfidenceTable;->getOrCreate(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->confidence:Lorg/bitcoinj/core/TransactionConfidence;

    .line 1189
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/core/Transaction;->confidence:Lorg/bitcoinj/core/TransactionConfidence;

    return-object p1
.end method

.method public getExchangeRate()Lorg/bitcoinj/utils/ExchangeRate;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1386
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;

    return-object v0
.end method

.method public getFee()Lorg/bitcoinj/core/Coin;
    .locals 5

    .line 426
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 427
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 429
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    .line 430
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 432
    :cond_1
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_2
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 435
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    return-object v2
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->hash:Lorg/bitcoinj/core/Sha256Hash;

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Transaction;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getHashAsString()Ljava/lang/String;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInput(J)Lorg/bitcoinj/core/TransactionInput;
    .locals 1

    .line 1159
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionInput;

    return-object p1
.end method

.method public getInputSum()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 277
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 279
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 280
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionInput;",
            ">;"
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockTime()J
    .locals 2

    .line 1089
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->lockTime:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 1400
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSizeForPriorityCalc()I
    .locals 4

    .line 604
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v0

    .line 605
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    const/16 v3, 0x6e

    .line 608
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    if-le v0, v2, :cond_0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getOptimalEncodingMessageSize()I
    .locals 1

    .line 592
    iget v0, p0, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    if-eqz v0, :cond_0

    return v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    return v0
.end method

.method public getOutput(J)Lorg/bitcoinj/core/TransactionOutput;
    .locals 1

    .line 1164
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionOutput;

    return-object p1
.end method

.method public getOutputSum()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 391
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 393
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 394
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getOutputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPurpose()Lorg/bitcoinj/core/Transaction$Purpose;
    .locals 1

    .line 1370
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-object v0
.end method

.method public getSigOpCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 1215
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->getSigOpCount([B)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 1217
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/script/Script;->getSigOpCount([B)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 3

    .line 468
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    .line 472
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getValue(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 408
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->cachedValue:Lorg/bitcoinj/core/Coin;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->cachedForBag:Lorg/bitcoinj/core/TransactionBag;

    if-ne v2, p1, :cond_0

    return-object v1

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 413
    iput-object v1, p0, Lorg/bitcoinj/core/Transaction;->cachedValue:Lorg/bitcoinj/core/Coin;

    .line 414
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->cachedForBag:Lorg/bitcoinj/core/TransactionBag;

    :cond_1
    return-object v1
.end method

.method public getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 366
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 367
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 370
    sget-object v3, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-interface {p1, v3}, Lorg/bitcoinj/core/TransactionBag;->getTransactionPool(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v3

    if-nez v3, :cond_0

    .line 372
    sget-object v3, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-interface {p1, v3}, Lorg/bitcoinj/core/TransactionBag;->getTransactionPool(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    .line 374
    sget-object v3, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-interface {p1, v3}, Lorg/bitcoinj/core/TransactionBag;->getTransactionPool(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput(Ljava/util/Map;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v3, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;
    .locals 4

    .line 294
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 295
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 296
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 1116
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->version:J

    return-wide v0
.end method

.method public getWalletOutputs(Lorg/bitcoinj/core/TransactionBag;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/TransactionBag;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 1143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1144
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 1145
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasConfidence()Z
    .locals 2

    .line 1194
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRelativeLockTime()Z
    .locals 6

    .line 1321
    iget-wide v0, p0, Lorg/bitcoinj/core/Transaction;->version:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x2

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1324
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->hasRelativeLockTime()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 1206
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 975
    invoke-static {p3, p4}, Lorg/bitcoinj/crypto/TransactionSignature;->calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I

    move-result p3

    .line 976
    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p2

    int-to-byte p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BB)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    return-object p1
.end method

.method public hashForSignature(I[BB)Lorg/bitcoinj/core/Sha256Hash;
    .locals 10

    .line 992
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 997
    :goto_0
    iget-object v3, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 998
    iget-object v3, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->clearScriptBytes()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0xab

    .line 1008
    invoke-static {p2, v2}, Lorg/bitcoinj/script/Script;->removeAllInstancesOfOp([BI)[B

    move-result-object p2

    .line 1013
    iget-object v2, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 1014
    invoke-virtual {v2, p2}, Lorg/bitcoinj/core/TransactionInput;->setScriptBytes([B)V

    and-int/lit8 p2, p3, 0x1f

    .line 1016
    sget-object v3, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v3, v3, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    const-wide/16 v4, 0x0

    if-ne p2, v3, :cond_2

    .line 1018
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, v0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    .line 1020
    :goto_1
    iget-object p2, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    if-eq v1, p1, :cond_1

    .line 1022
    iget-object p2, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {p2, v4, v5}, Lorg/bitcoinj/core/TransactionInput;->setSequenceNumber(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1023
    :cond_2
    sget-object v3, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    iget v3, v3, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-ne p2, v3, :cond_6

    .line 1025
    iget-object p2, v0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_3

    const-string p1, "0100000000000000000000000000000000000000000000000000000000000000"

    .line 1034
    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->wrap(Ljava/lang/String;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    return-object p1

    .line 1038
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_4

    .line 1040
    iget-object v3, v0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    new-instance v6, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v7, v0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v8, Lorg/bitcoinj/core/Coin;->NEGATIVE_SATOSHI:Lorg/bitcoinj/core/Coin;

    new-array v9, v1, [B

    invoke-direct {v6, v7, v0, v8, v9}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    invoke-virtual {v3, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1042
    :cond_4
    :goto_3
    iget-object p2, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_6

    if-eq v1, p1, :cond_5

    .line 1044
    iget-object p2, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {p2, v4, v5}, Lorg/bitcoinj/core/TransactionInput;->setSequenceNumber(J)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1047
    :cond_6
    sget-object p1, Lorg/bitcoinj/core/Transaction$SigHash;->ANYONECANPAY:Lorg/bitcoinj/core/Transaction$SigHash;

    iget p1, p1, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    and-int/2addr p1, p3

    sget-object p2, Lorg/bitcoinj/core/Transaction$SigHash;->ANYONECANPAY:Lorg/bitcoinj/core/Transaction$SigHash;

    iget p2, p2, Lorg/bitcoinj/core/Transaction$SigHash;->value:I

    if-ne p1, p2, :cond_7

    .line 1050
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    .line 1051
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    :cond_7
    new-instance p1, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    iget p2, v0, Lorg/bitcoinj/core/Transaction;->length:I

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_8

    const/16 p2, 0x100

    goto :goto_4

    :cond_8
    iget p2, v0, Lorg/bitcoinj/core/Transaction;->length:I

    add-int/lit8 p2, p2, 0x4

    :goto_4
    invoke-direct {p1, p2}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 1055
    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    and-int/lit16 p2, p3, 0xff

    int-to-long p2, p2

    .line 1057
    invoke-static {p2, p3, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 1060
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->twiceOf([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p2

    .line 1061
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 1065
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hashForSignature(I[BLorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;
    .locals 0

    .line 955
    invoke-static {p3, p4}, Lorg/bitcoinj/crypto/TransactionSignature;->calcSigHashValue(Lorg/bitcoinj/core/Transaction$SigHash;Z)I

    move-result p3

    int-to-byte p3, p3

    .line 956
    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/core/Transaction;->hashForSignature(I[BB)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    return-object p1
.end method

.method public isAnyOutputSpent()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 445
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCoinBase()Z
    .locals 3

    .line 622
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEveryOwnedOutputSpent(Lorg/bitcoinj/core/TransactionBag;)Z
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 457
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isFinal(IJ)Z
    .locals 5

    .line 1350
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    const-wide/32 v2, 0x1dcd6500

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    int-to-long p2, p1

    :cond_0
    cmp-long p1, v0, p2

    if-ltz p1, :cond_2

    .line 1351
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->isTimeLocked()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isMature()Z
    .locals 4

    .line 629
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 632
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 635
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v0

    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOptInFullRBF()Z
    .locals 2

    .line 1334
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1335
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->isOptInFullRBF()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isPending()Z
    .locals 2

    .line 317
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTimeLocked()Z
    .locals 6

    .line 1307
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    .line 1309
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1310
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->hasSequence()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method protected parse()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 559
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->offset:I

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    .line 561
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->readUint32()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bitcoinj/core/Transaction;->version:J

    const/4 v7, 0x4

    .line 562
    iput v7, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 565
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->readVarInt()J

    move-result-wide v8

    .line 566
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    invoke-static {v8, v9}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    long-to-int v1, v8

    const/16 v10, 0x14

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    const-wide/16 v13, 0x0

    :goto_0
    const-wide/16 v15, 0x1

    cmp-long v0, v13, v8

    if-gez v0, :cond_0

    .line 569
    new-instance v5, Lorg/bitcoinj/core/TransactionInput;

    iget-object v1, v6, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v3, v6, Lorg/bitcoinj/core/Transaction;->payload:[B

    iget v4, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    iget-object v2, v6, Lorg/bitcoinj/core/Transaction;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    move-object v0, v5

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object v11, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BILorg/bitcoinj/core/MessageSerializer;)V

    .line 570
    iget-object v0, v6, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x24

    .line 571
    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->readVarInt(I)J

    move-result-wide v1

    .line 572
    iget v3, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    int-to-long v3, v3

    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v5

    add-int/2addr v5, v0

    int-to-long v11, v5

    add-long/2addr v11, v1

    const-wide/16 v18, 0x4

    add-long v11, v11, v18

    add-long/2addr v3, v11

    long-to-int v0, v3

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 573
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    int-to-long v3, v0

    add-long v1, v1, v18

    add-long/2addr v3, v1

    long-to-int v0, v3

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    add-long/2addr v13, v15

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->readVarInt()J

    move-result-wide v8

    .line 577
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    invoke-static {v8, v9}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    long-to-int v1, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v6, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    const-wide/16 v11, 0x0

    :goto_1
    cmp-long v0, v11, v8

    if-gez v0, :cond_1

    .line 580
    new-instance v10, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, v6, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v3, v6, Lorg/bitcoinj/core/Transaction;->payload:[B

    iget v4, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    iget-object v5, v6, Lorg/bitcoinj/core/Transaction;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    move-object v0, v10

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BILorg/bitcoinj/core/MessageSerializer;)V

    .line 581
    iget-object v0, v6, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    .line 582
    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Transaction;->readVarInt(I)J

    move-result-wide v1

    .line 583
    iget v3, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    int-to-long v3, v3

    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v5

    add-int/2addr v5, v0

    int-to-long v13, v5

    add-long/2addr v13, v1

    add-long/2addr v3, v13

    long-to-int v0, v3

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 584
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    int-to-long v3, v0

    add-long/2addr v3, v1

    long-to-int v0, v3

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    add-long/2addr v11, v15

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->readUint32()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/bitcoinj/core/Transaction;->lockTime:J

    .line 587
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    add-int/2addr v0, v7

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->optimalEncodingMessageSize:I

    .line 588
    iget v0, v6, Lorg/bitcoinj/core/Transaction;->cursor:I

    iget v1, v6, Lorg/bitcoinj/core/Transaction;->offset:I

    sub-int/2addr v0, v1

    iput v0, v6, Lorg/bitcoinj/core/Transaction;->length:I

    return-void
.end method

.method public setBlockAppearance(Lorg/bitcoinj/core/StoredBlock;ZI)V
    .locals 7

    .line 335
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    if-eqz p2, :cond_1

    .line 336
    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 337
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    .line 340
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bitcoinj/core/Transaction;->addBlockAppearance(Lorg/bitcoinj/core/Sha256Hash;I)V

    if-eqz p2, :cond_2

    .line 343
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p2

    .line 345
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/TransactionConfidence;->setAppearedAtChainHeight(I)V

    :cond_2
    return-void
.end method

.method public setExchangeRate(Lorg/bitcoinj/utils/ExchangeRate;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;

    return-void
.end method

.method setHash(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public setLockTime(J)V
    .locals 6

    .line 1099
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    .line 1101
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1102
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    :cond_2
    sget-object v0, Lorg/bitcoinj/core/Transaction;->log:Lorg/slf4j/Logger;

    const-string v1, "You are setting the lock time on a transaction but none of the inputs have non-default sequence numbers. This will not do what you expect!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1112
    :cond_3
    iput-wide p1, p0, Lorg/bitcoinj/core/Transaction;->lockTime:J

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 1408
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->memo:Ljava/lang/String;

    return-void
.end method

.method public setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V
    .locals 0

    .line 1378
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    int-to-long v0, p1

    .line 1120
    iput-wide v0, p0, Lorg/bitcoinj/core/Transaction;->version:J

    .line 1121
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->unCache()V

    return-void
.end method

.method public shuffleOutputs()V
    .locals 1

    .line 1154
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Transaction;->toString(Lorg/bitcoinj/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/bitcoinj/core/AbstractBlockChain;)Ljava/lang/String;
    .locals 17
    .param p1    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "???"

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    .line 649
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    iget-object v5, v1, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    if-eqz v5, :cond_0

    const-string v5, "  updated: "

    .line 651
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/bitcoinj/core/Transaction;->updatedAt:Ljava/util/Date;

    invoke-static {v5}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :cond_0
    iget-wide v5, v1, Lorg/bitcoinj/core/Transaction;->version:J

    const-wide/16 v7, 0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const-string v5, "  version "

    .line 653
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/bitcoinj/core/Transaction;->version:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->isTimeLocked()Z

    move-result v5

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_4

    const-string v5, "  time locked until "

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-wide v8, v1, Lorg/bitcoinj/core/Transaction;->lockTime:J

    const-wide/32 v10, 0x1dcd6500

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    const-string v5, "block "

    .line 657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lorg/bitcoinj/core/Transaction;->lockTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v5, " (estimated to be reached at "

    .line 659
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lorg/bitcoinj/core/Transaction;->lockTime:J

    long-to-int v5, v8

    .line 660
    invoke-virtual {v0, v5}, Lorg/bitcoinj/core/AbstractBlockChain;->estimateBlockTime(I)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    mul-long v8, v8, v6

    .line 663
    invoke-static {v8, v9}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_3
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->hasRelativeLockTime()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "  has relative lock time\n"

    .line 668
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->isOptInFullRBF()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "  opts into full replace-by-fee\n"

    .line 671
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 677
    :try_start_0
    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v5, v1, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/script/Script;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    goto :goto_1

    :catch_0
    move-object v0, v2

    :goto_1
    const-string v4, "     == COINBASE TXN (scriptSig "

    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")  (scriptPubKey "

    .line 684
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :cond_7
    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v2, " "

    const-string v5, "]"

    const-string v8, "[exception: "

    const-string v9, "     "

    if-nez v0, :cond_e

    .line 688
    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 689
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "in   "

    .line 690
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :try_start_1
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/script/Script;->toString()Ljava/lang/String;

    move-result-object v11

    .line 694
    invoke-static {v11}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    const-string v11, "<no scriptSig>"

    :goto_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 696
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v11, "\n          "

    .line 697
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "outpoint:"

    .line 698
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v11

    .line 700
    invoke-virtual {v11}, Lorg/bitcoinj/core/TransactionOutPoint;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v11}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 703
    invoke-virtual {v11}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v11

    .line 704
    invoke-virtual {v11}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v11}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    const-string v12, " hash160:"

    .line 705
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    sget-object v12, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v11}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_b
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->hasSequence()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "\n          sequence:"

    .line 710
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->isOptInFullRBF()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, ", opts into full RBF"

    .line 712
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_c
    iget-wide v11, v1, Lorg/bitcoinj/core/Transaction;->version:J

    const-wide/16 v13, 0x2

    cmp-long v15, v11, v13

    if-ltz v15, :cond_d

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->hasRelativeLockTime()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ", has RLT"

    .line 714
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 717
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_d
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 722
    :cond_e
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INCOMPLETE: No inputs!\n"

    .line 723
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_f
    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionOutput;

    .line 726
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "out  "

    .line 727
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :try_start_2
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/script/Script;->toString()Ljava/lang/String;

    move-result-object v11

    .line 730
    invoke-static {v11}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_6

    :cond_10
    const-string v11, "<no scriptPubKey>"

    :goto_6
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, " Spent"

    .line 734
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_11
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v11

    if-eqz v11, :cond_12

    const-string v11, " by "

    .line 737
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    .line 741
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_12
    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 745
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->getFee()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 747
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v2

    array-length v2, v2

    const-string v5, "     fee  "

    .line 748
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/kB, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_14
    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    if-eqz v0, :cond_15

    const-string v0, "     prps "

    .line 752
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/bitcoinj/core/Transaction;->purpose:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unCache()V
    .locals 1

    .line 517
    invoke-super {p0}, Lorg/bitcoinj/core/ChildMessage;->unCache()V

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lorg/bitcoinj/core/Transaction;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public verify()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1265
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getMessageSize()I

    move-result v0

    const v1, 0xf4240

    if-gt v0, v1, :cond_a

    .line 1268
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 1269
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1270
    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    .line 1271
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1273
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1272
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/VerificationException$DuplicatedOutPoint;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$DuplicatedOutPoint;-><init>()V

    throw v0

    .line 1276
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/Transaction;->outputs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 1277
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v3

    if-ltz v3, :cond_4

    .line 1279
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 1280
    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/Transaction;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_1

    .line 1281
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1278
    :cond_4
    new-instance v0, Lorg/bitcoinj/core/VerificationException$NegativeValueOutput;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$NegativeValueOutput;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1290
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_6

    goto :goto_3

    .line 1291
    :cond_6
    new-instance v0, Lorg/bitcoinj/core/VerificationException$CoinbaseScriptSizeOutOfRange;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$CoinbaseScriptSizeOutOfRange;-><init>()V

    throw v0

    .line 1293
    :cond_7
    iget-object v0, p0, Lorg/bitcoinj/core/Transaction;->inputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1294
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->isCoinBase()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    .line 1295
    :cond_8
    new-instance v0, Lorg/bitcoinj/core/VerificationException$UnexpectedCoinbaseInput;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$UnexpectedCoinbaseInput;-><init>()V

    throw v0

    :cond_9
    :goto_3
    return-void

    .line 1286
    :catch_0
    new-instance v0, Lorg/bitcoinj/core/VerificationException$ExcessiveValue;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$ExcessiveValue;-><init>()V

    throw v0

    .line 1284
    :catch_1
    new-instance v0, Lorg/bitcoinj/core/VerificationException$ExcessiveValue;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$ExcessiveValue;-><init>()V

    throw v0

    .line 1266
    :cond_a
    new-instance v0, Lorg/bitcoinj/core/VerificationException$LargerThanMaxBlockSize;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$LargerThanMaxBlockSize;-><init>()V

    throw v0

    .line 1264
    :cond_b
    new-instance v0, Lorg/bitcoinj/core/VerificationException$EmptyInputsOrOutputs;

    invoke-direct {v0}, Lorg/bitcoinj/core/VerificationException$EmptyInputsOrOutputs;-><init>()V

    throw v0
.end method
