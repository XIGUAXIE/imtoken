.class public Lorg/bitcoinj/core/AlertMessage;
.super Lorg/bitcoinj/core/Message;
.source "AlertMessage.java"


# static fields
.field private static final MAX_SET_SIZE:J = 0x64L


# instance fields
.field private cancel:J

.field private comment:Ljava/lang/String;

.field private content:[B

.field private expiration:Ljava/util/Date;

.field private id:J

.field private maxVer:J

.field private minVer:J

.field private priority:J

.field private relayUntil:Ljava/util/Date;

.field private reserved:Ljava/lang/String;

.field private signature:[B

.field private statusBar:Ljava/lang/String;

.field private version:J


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    const-wide/16 p1, 0x1

    .line 45
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->version:J

    return-void
.end method


# virtual methods
.method public getCancel()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->cancel:J

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->id:J

    return-wide v0
.end method

.method public getMaxVer()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->maxVer:J

    return-wide v0
.end method

.method public getMinVer()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->minVer:J

    return-wide v0
.end method

.method public getPriority()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->priority:J

    return-wide v0
.end method

.method public getRelayUntil()Ljava/util/Date;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->relayUntil:Ljava/util/Date;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBar()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->statusBar:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->version:J

    return-wide v0
.end method

.method public isSignatureValid()Z
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->content:[B

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/AlertMessage;->signature:[B

    iget-object v2, p0, Lorg/bitcoinj/core/AlertMessage;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getAlertSigningKey()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/core/ECKey;->verify([B[B[B)Z

    move-result v0

    return v0
.end method

.method protected parse()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lorg/bitcoinj/core/AlertMessage;->cursor:I

    .line 71
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/AlertMessage;->content:[B

    .line 72
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/AlertMessage;->signature:[B

    .line 74
    iput v0, p0, Lorg/bitcoinj/core/AlertMessage;->cursor:I

    .line 75
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readVarInt()J

    .line 77
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->version:J

    .line 79
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->relayUntil:Ljava/util/Date;

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint64()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->expiration:Ljava/util/Date;

    .line 81
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->id:J

    .line 82
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->cancel:J

    .line 84
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readVarInt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    const-wide/16 v4, 0x64

    cmp-long v6, v0, v4

    if-gtz v6, :cond_3

    .line 90
    new-instance v6, Ljava/util/HashSet;

    long-to-int v7, v0

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    move-wide v7, v2

    :goto_0
    const-wide/16 v9, 0x1

    cmp-long v11, v7, v0

    if-gez v11, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-long/2addr v7, v9

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->minVer:J

    .line 95
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->maxVer:J

    .line 97
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readVarInt()J

    move-result-wide v0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_2

    cmp-long v6, v0, v4

    if-gtz v6, :cond_2

    .line 101
    new-instance v4, Ljava/util/HashSet;

    long-to-int v5, v0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    :goto_1
    cmp-long v5, v2, v0

    if-gez v5, :cond_1

    .line 103
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-long/2addr v2, v9

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/AlertMessage;->priority:J

    .line 106
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->comment:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->statusBar:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/AlertMessage;->reserved:Ljava/lang/String;

    .line 110
    iget v0, p0, Lorg/bitcoinj/core/AlertMessage;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/AlertMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/AlertMessage;->length:I

    return-void

    .line 99
    :cond_2
    new-instance v2, Lorg/bitcoinj/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad subver set size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_3
    new-instance v2, Lorg/bitcoinj/core/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad cancel set size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setCancel(J)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->cancel:J

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/bitcoinj/core/AlertMessage;->comment:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/bitcoinj/core/AlertMessage;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->id:J

    return-void
.end method

.method public setMaxVer(J)V
    .locals 0

    .line 197
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->maxVer:J

    return-void
.end method

.method public setMinVer(J)V
    .locals 0

    .line 184
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->minVer:J

    return-void
.end method

.method public setPriority(J)V
    .locals 0

    .line 209
    iput-wide p1, p0, Lorg/bitcoinj/core/AlertMessage;->priority:J

    return-void
.end method

.method public setRelayUntil(Ljava/util/Date;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/bitcoinj/core/AlertMessage;->relayUntil:Ljava/util/Date;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/bitcoinj/core/AlertMessage;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setStatusBar(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/bitcoinj/core/AlertMessage;->statusBar:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALERT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
