.class public Lorg/bitcoinj/core/TransactionOutPoint;
.super Lorg/bitcoinj/core/ChildMessage;
.source "TransactionOutPoint.java"


# static fields
.field static final MESSAGE_LENGTH:I = 0x24


# instance fields
.field private connectedOutput:Lorg/bitcoinj/core/TransactionOutput;

.field fromTx:Lorg/bitcoinj/core/Transaction;

.field private hash:Lorg/bitcoinj/core/Sha256Hash;

.field private index:J


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 64
    iput-wide p2, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    .line 65
    iput-object p4, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const/16 p1, 0x24

    .line 66
    iput p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Transaction;)V
    .locals 0
    .param p4    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 51
    iput-wide p2, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    if-eqz p4, :cond_0

    .line 53
    invoke-virtual {p4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 54
    iput-object p4, p0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    iput-object p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    :goto_0
    const/16 p1, 0x24

    .line 59
    iput p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/TransactionOutput;)V
    .locals 3

    .line 70
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getIndex()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bitcoinj/core/TransactionOutPoint;-><init>(Lorg/bitcoinj/core/NetworkParameters;JLorg/bitcoinj/core/Sha256Hash;)V

    .line 71
    iput-object p2, p0, Lorg/bitcoinj/core/TransactionOutPoint;->connectedOutput:Lorg/bitcoinj/core/TransactionOutput;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/16 v6, 0x24

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 90
    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/ChildMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method


# virtual methods
.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/TransactionOutPoint;

    .line 211
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

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

.method public getConnectedKey(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/core/ECKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    const-string v1, "Input is not connected so cannot retrieve key"

    .line 142
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    .line 146
    invoke-interface {p1, v0}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v0

    .line 149
    invoke-interface {p1, v0}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not understand form of connected output script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->fromTx:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    iget-wide v1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    long-to-int v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionOutput;

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->connectedOutput:Lorg/bitcoinj/core/TransactionOutput;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedPubKeyScript()[B
    .locals 2

    .line 126
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptBytes()[B

    move-result-object v0

    .line 127
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method public getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    const-string v1, "Input is not connected so cannot retrieve key"

    .line 165
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v1

    .line 169
    invoke-interface {p1, v1}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/bitcoinj/wallet/RedeemData;->of(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v1

    .line 172
    invoke-interface {p1, v1}, Lorg/bitcoinj/wallet/KeyBag;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/bitcoinj/wallet/RedeemData;->of(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v0

    .line 175
    invoke-interface {p1, v0}, Lorg/bitcoinj/wallet/KeyBag;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    return-object p1

    .line 177
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ScriptException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not understand form of connected output script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ScriptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/16 v0, 0x24

    .line 95
    iput v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->length:I

    .line 96
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 97
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutPoint;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    return-void
.end method

.method setHash(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method

.method public setIndex(J)V
    .locals 0

    .line 203
    iput-wide p1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/bitcoinj/core/TransactionOutPoint;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
