.class public Lorg/bitcoinj/core/TransactionOutput;
.super Lorg/bitcoinj/core/ChildMessage;
.source "TransactionOutput.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private availableForSpending:Z

.field private scriptBytes:[B

.field private scriptLen:I

.field private scriptPubKey:Lorg/bitcoinj/script/Script;

.field private spentBy:Lorg/bitcoinj/core/TransactionInput;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/bitcoinj/core/TransactionOutput;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V
    .locals 0
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    invoke-static {p4}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/ECKey;)V
    .locals 0
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-static {p4}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V
    .locals 4
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 105
    invoke-virtual {p3}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    sget-object v0, Lorg/bitcoinj/core/Coin;->NEGATIVE_SATOSHI:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p3, v0}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Negative values not allowed"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p1

    if-gtz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string p1, "Values larger than MAX_MONEY not allowed"

    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    iget-wide v0, p3, Lorg/bitcoinj/core/Coin;->value:J

    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    .line 108
    iput-object p4, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    .line 109
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/TransactionOutput;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 110
    iput-boolean v2, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    .line 111
    array-length p1, p4

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    array-length p2, p4

    add-int/2addr p1, p2

    iput p1, p0, Lorg/bitcoinj/core/TransactionOutput;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BI)V
    .locals 0
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p3, p4}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/TransactionOutput;->setParent(Lorg/bitcoinj/core/Message;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BILorg/bitcoinj/core/MessageSerializer;)V
    .locals 7
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/high16 v6, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    .line 79
    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->int64ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 171
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public duplicateDetached()Lorg/bitcoinj/core/TransactionOutput;
    .locals 5

    .line 414
    new-instance v0, Lorg/bitcoinj/core/TransactionOutput;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-wide v2, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 421
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/TransactionOutput;

    .line 422
    iget-wide v2, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    iget-wide v4, p1, Lorg/bitcoinj/core/TransactionOutput;->value:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    iget-object v3, p1, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    iget-object p1, p1, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    .line 423
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAddressFromP2PKHScript(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAddressFromP2SH(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndex()I
    .locals 3

    .line 201
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output linked to wrong parent transaction?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinNonDustValue()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 247
    sget-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/TransactionOutput;->getMinNonDustValue(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    return-object v0
.end method

.method public getMinNonDustValue(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;
    .locals 2

    .line 237
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->unsafeBitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit16 v0, v0, 0x94

    int-to-long v0, v0

    .line 238
    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;
    .locals 5

    .line 409
    new-instance v0, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Transaction;)V

    return-object v0
.end method

.method public getParentTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public getParentTransactionDepthInBlocks()I
    .locals 3

    .line 395
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v1, v2, :cond_0

    .line 398
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Message;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScriptBytes()[B
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    return-object v0
.end method

.method public getScriptPubKey()Lorg/bitcoinj/script/Script;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptPubKey:Lorg/bitcoinj/script/Script;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lorg/bitcoinj/script/Script;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    invoke-direct {v0, v1}, Lorg/bitcoinj/script/Script;-><init>([B)V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptPubKey:Lorg/bitcoinj/script/Script;

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptPubKey:Lorg/bitcoinj/script/Script;

    return-object v0
.end method

.method public getSpentBy()Lorg/bitcoinj/core/TransactionInput;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->spentBy:Lorg/bitcoinj/core/TransactionInput;

    return-object v0
.end method

.method public getValue()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 181
    :try_start_0
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 428
    iget-wide v1, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAvailableForSpending()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    return v0
.end method

.method public isDust()Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isOpReturn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getMinNonDustValue()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->isLessThan(Lorg/bitcoinj/core/Coin;)Z

    move-result v0

    return v0
.end method

.method public isMine(Lorg/bitcoinj/core/TransactionBag;)Z
    .locals 3

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v0

    .line 325
    invoke-interface {p1, v0}, Lorg/bitcoinj/core/TransactionBag;->isPubKeyMine([B)Z

    move-result p1

    return p1

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bitcoinj/core/TransactionBag;->isPayToScriptHashMine([B)Z

    move-result p1

    return p1

    .line 329
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    .line 330
    invoke-interface {p1, v0}, Lorg/bitcoinj/core/TransactionBag;->isPubKeyHashMine([B)Z

    move-result p1
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 334
    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Message;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "(no parent)"

    :goto_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Could not parse tx {} output script: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z
    .locals 1

    .line 300
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionOutput;->isWatched(Lorg/bitcoinj/core/TransactionBag;)Z

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

.method public isWatched(Lorg/bitcoinj/core/TransactionBag;)Z
    .locals 2

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 309
    invoke-interface {p1, v0}, Lorg/bitcoinj/core/TransactionBag;->isWatchedScript(Lorg/bitcoinj/script/Script;)Z

    move-result p1
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 312
    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Could not parse tx output script: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public markAsSpent(Lorg/bitcoinj/core/TransactionInput;)V
    .locals 4

    .line 256
    iget-boolean v0, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    .line 258
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionOutput;->spentBy:Lorg/bitcoinj/core/TransactionInput;

    .line 259
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v1, :cond_1

    .line 260
    sget-object v1, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "Marked {}:{} as spent by {}"

    invoke-interface {v1, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_0
    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    const-string v1, "Marked floating output as spent by {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markAsUnspent()V
    .locals 5

    .line 269
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bitcoinj/core/TransactionOutput;->spentBy:Lorg/bitcoinj/core/TransactionInput;

    aput-object v4, v2, v3

    const-string v3, "Un-marked {}:{} as spent by {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_0
    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bitcoinj/core/TransactionOutput;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutput;->spentBy:Lorg/bitcoinj/core/TransactionInput;

    const-string v3, "Un-marked floating output as spent by {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lorg/bitcoinj/core/TransactionOutput;->availableForSpending:Z

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->spentBy:Lorg/bitcoinj/core/TransactionInput;

    return-void
.end method

.method protected parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    .line 161
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptLen:I

    .line 162
    iget v0, p0, Lorg/bitcoinj/core/TransactionOutput;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/TransactionOutput;->offset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptLen:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/TransactionOutput;->length:I

    .line 163
    iget v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptLen:I

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/TransactionOutput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionOutput;->scriptBytes:[B

    return-void
.end method

.method public setValue(Lorg/bitcoinj/core/Coin;)V
    .locals 2

    .line 191
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->unCache()V

    .line 193
    iget-wide v0, p1, Lorg/bitcoinj/core/Coin;->value:J

    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TxOut of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    iget-wide v2, p0, Lorg/bitcoinj/core/TransactionOutput;->value:J

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " to pubkey "

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " to multisig"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, " (unknown type)"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, " to "

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutput;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, " script:"

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
