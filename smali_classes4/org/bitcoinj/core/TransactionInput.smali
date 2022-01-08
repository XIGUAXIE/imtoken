.class public Lorg/bitcoinj/core/TransactionInput;
.super Lorg/bitcoinj/core/ChildMessage;
.source "TransactionInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/TransactionInput$ConnectMode;,
        Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[B

.field public static final NO_SEQUENCE:J = 0xffffffffL

.field public static final SEQUENCE_LOCKTIME_DISABLE_FLAG:J = 0x80000000L

.field private static final UNCONNECTED:J = 0xffffffffL


# instance fields
.field private outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

.field private scriptBytes:[B

.field private scriptSig:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/bitcoinj/script/Script;",
            ">;"
        }
    .end annotation
.end field

.field private sequence:J

.field private value:Lorg/bitcoinj/core/Coin;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 54
    sput-object v0, Lorg/bitcoinj/core/TransactionInput;->EMPTY_ARRAY:[B

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionOutput;)V
    .locals 4

    .line 100
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 101
    invoke-virtual {p3}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v0

    int-to-long v0, v0

    .line 102
    invoke-virtual {p3}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {p3}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Transaction;)V

    iput-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-direct {v0, p1, p3}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/TransactionOutput;)V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    .line 107
    :goto_0
    sget-object p1, Lorg/bitcoinj/core/TransactionInput;->EMPTY_ARRAY:[B

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    const-wide v0, 0xffffffffL

    .line 108
    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    .line 109
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/TransactionInput;->setParent(Lorg/bitcoinj/core/Message;)V

    .line 110
    invoke-virtual {p3}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    const/16 p1, 0x29

    .line 111
    iput p1, p0, Lorg/bitcoinj/core/TransactionInput;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[B)V
    .locals 4
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    new-instance v0, Lorg/bitcoinj/core/TransactionOutPoint;

    const/4 v1, 0x0

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Transaction;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;)V

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

    .line 118
    invoke-direct {p0, p1, p3, p4}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    .line 119
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/TransactionInput;->setParent(Lorg/bitcoinj/core/Message;)V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BILorg/bitcoinj/core/MessageSerializer;)V
    .locals 7
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

    .line 133
    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;)V
    .locals 6
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 82
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/core/Coin;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BLorg/bitcoinj/core/TransactionOutPoint;Lorg/bitcoinj/core/Coin;)V
    .locals 2
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 88
    iput-object p3, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    .line 89
    iput-object p4, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    const-wide v0, 0xffffffffL

    .line 90
    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    .line 91
    iput-object p5, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    .line 92
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/TransactionInput;->setParent(Lorg/bitcoinj/core/Message;)V

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    array-length p1, p3

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result p1

    array-length p2, p3

    add-int/2addr p1, p2

    :goto_0
    add-int/lit8 p1, p1, 0x28

    iput p1, p0, Lorg/bitcoinj/core/TransactionInput;->length:I

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

    .line 149
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/TransactionOutPoint;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 150
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 151
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 152
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    return-void
.end method

.method public clearScriptBytes()V
    .locals 1

    .line 240
    sget-object v0, Lorg/bitcoinj/core/TransactionInput;->EMPTY_ARRAY:[B

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/TransactionInput;->setScriptBytes([B)V

    return-void
.end method

.method public connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/TransactionInput$ConnectMode;",
            ")",
            "Lorg/bitcoinj/core/TransactionInput$ConnectionResult;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Transaction;

    if-nez p1, :cond_0

    .line 319
    sget-object p1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p1

    .line 321
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/TransactionInput;->connect(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;
    .locals 3

    .line 334
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget-object p1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p1

    .line 336
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "Corrupt transaction"

    invoke-static {v1, v0, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 337
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v1, v1, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    sget-object p1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p1

    .line 342
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    if-ne p2, v0, :cond_2

    .line 343
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->markAsUnspent()V

    goto :goto_0

    .line 344
    :cond_2
    sget-object v0, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    if-ne p2, v0, :cond_3

    .line 345
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    iput-object p1, p2, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    .line 346
    sget-object p1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p1

    .line 349
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionInput;->connect(Lorg/bitcoinj/core/TransactionOutput;)V

    .line 350
    sget-object p1, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    return-object p1
.end method

.method public connect(Lorg/bitcoinj/core/TransactionOutput;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    iput-object v1, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    .line 356
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/TransactionOutput;->markAsSpent(Lorg/bitcoinj/core/TransactionInput;)V

    .line 357
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public disconnect()Z
    .locals 4

    .line 367
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v0, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v0, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 370
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->markAsUnspent()V

    .line 371
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public duplicateDetached()Lorg/bitcoinj/core/TransactionInput;
    .locals 5

    .line 456
    new-instance v0, Lorg/bitcoinj/core/TransactionInput;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->bitcoinSerialize()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/bitcoinj/core/TransactionInput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/TransactionInput;

    .line 475
    iget-wide v2, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    iget-wide v4, p1, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->parent:Lorg/bitcoinj/core/Message;

    iget-object v3, p1, Lorg/bitcoinj/core/TransactionInput;->parent:Lorg/bitcoinj/core/Message;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v3, p1, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    .line 476
    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/TransactionOutPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    iget-object p1, p1, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 441
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method getConnectedOutput(Ljava/util/Map;)Lorg/bitcoinj/core/TransactionOutput;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Lorg/bitcoinj/core/TransactionOutput;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Transaction;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 289
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionOutput;

    return-object p1
.end method

.method public getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 298
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1
.end method

.method public getConnectedTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 451
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    iget-object v0, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public getFromAddress()Lorg/bitcoinj/core/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->isCoinBase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/script/Script;->getFromAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ScriptException;

    const-string v1, "This is a coinbase transaction which generates new coins. It does not have a from address."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    return-object v0
.end method

.method public getParentTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->parent:Lorg/bitcoinj/core/Message;

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public getScriptBytes()[B
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    return-object v0
.end method

.method public getScriptSig()Lorg/bitcoinj/script/Script;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/Script;

    :goto_0
    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lorg/bitcoinj/script/Script;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    invoke-direct {v0, v1}, Lorg/bitcoinj/script/Script;-><init>([B)V

    .line 173
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    return-wide v0
.end method

.method public getValue()Lorg/bitcoinj/core/Coin;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->value:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public hasRelativeLockTime()Z
    .locals 5

    .line 398
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSequence()Z
    .locals 5

    .line 382
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 481
    iget-wide v1, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

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

.method public isCoinBase()Z
    .locals 5

    .line 159
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    .line 160
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOptInFullRBF()Z
    .locals 5

    .line 390
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    const-wide v2, 0xfffffffeL

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandard()Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 1

    .line 467
    invoke-static {p0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->isInputStandard(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v0

    return-object v0
.end method

.method protected parse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 139
    new-instance v6, Lorg/bitcoinj/core/TransactionOutPoint;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionInput;->payload:[B

    iget v3, p0, Lorg/bitcoinj/core/TransactionInput;->cursor:I

    iget-object v5, p0, Lorg/bitcoinj/core/TransactionInput;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;)V

    iput-object v6, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    .line 140
    iget v0, p0, Lorg/bitcoinj/core/TransactionInput;->cursor:I

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutPoint;->getMessageSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/TransactionInput;->cursor:I

    .line 141
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    .line 142
    iget v0, p0, Lorg/bitcoinj/core/TransactionInput;->cursor:I

    iget v2, p0, Lorg/bitcoinj/core/TransactionInput;->offset:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/core/TransactionInput;->length:I

    .line 143
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/TransactionInput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    .line 144
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    return-void
.end method

.method setScriptBytes([B)V
    .locals 3

    .line 247
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->unCache()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    .line 249
    iget v0, p0, Lorg/bitcoinj/core/TransactionInput;->length:I

    .line 250
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionInput;->scriptBytes:[B

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    array-length p1, p1

    add-int/2addr p1, v1

    :goto_0
    add-int/lit8 p1, p1, 0x28

    sub-int/2addr p1, v0

    .line 253
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionInput;->adjustLength(I)V

    return-void
.end method

.method public setScriptSig(Lorg/bitcoinj/script/Script;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionInput;->scriptSig:Ljava/lang/ref/WeakReference;

    .line 182
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/TransactionInput;->setScriptBytes([B)V

    return-void
.end method

.method public setSequenceNumber(J)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->unCache()V

    .line 217
    iput-wide p1, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxIn"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->isCoinBase()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ": COINBASE"

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, " for ["

    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionInput;->outpoint:Lorg/bitcoinj/core/TransactionOutPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 495
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Joiner;->skipNulls()Lcom/google/common/base/Joiner;

    move-result-object v1

    .line 496
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->hasSequence()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sequence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/bitcoinj/core/TransactionInput;->sequence:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 497
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->isOptInFullRBF()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "opts into full RBF"

    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 495
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, " ("

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 503
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    iget-object v0, v0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    .line 408
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v1

    const-string v3, "Not connected"

    .line 409
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    long-to-int v2, v1

    int-to-long v1, v2

    .line 410
    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/TransactionInput;->verify(Lorg/bitcoinj/core/TransactionOutput;)V

    return-void
.end method

.method public verify(Lorg/bitcoinj/core/TransactionOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 423
    iget-object v0, p1, Lorg/bitcoinj/core/TransactionOutput;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "This input refers to a different output on the given tx."

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "This input does not refer to the tx containing the output."

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object p1

    .line 430
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 431
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;)V

    return-void
.end method
