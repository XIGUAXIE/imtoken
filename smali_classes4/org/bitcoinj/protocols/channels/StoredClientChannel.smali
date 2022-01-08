.class Lorg/bitcoinj/protocols/channels/StoredClientChannel;
.super Ljava/lang/Object;
.source "StoredPaymentChannelClientStates.java"


# instance fields
.field active:Z

.field close:Lorg/bitcoinj/core/Transaction;

.field contract:Lorg/bitcoinj/core/Transaction;

.field expiryTime:J

.field id:Lorg/bitcoinj/core/Sha256Hash;

.field majorVersion:I

.field myKey:Lorg/bitcoinj/core/ECKey;

.field refund:Lorg/bitcoinj/core/Transaction;

.field refundFees:Lorg/bitcoinj/core/Coin;

.field serverKey:Lorg/bitcoinj/core/ECKey;

.field valueToMe:Lorg/bitcoinj/core/Coin;


# direct methods
.method constructor <init>(ILorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;JZ)V
    .locals 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    .line 402
    iput p1, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->majorVersion:I

    .line 403
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    .line 404
    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 405
    iput-object p4, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    .line 406
    iput-object p5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 407
    iput-object p6, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 408
    iput-object p7, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 409
    iput-object p8, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 410
    iput-wide p9, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTime:J

    .line 411
    iput-boolean p11, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    return-void
.end method


# virtual methods
.method expiryTimeSeconds()J
    .locals 4

    .line 415
    iget v0, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->majorVersion:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 419
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTime:J

    :goto_0
    add-long/2addr v0, v2

    return-wide v0

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 427
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "%n"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    if-nez v2, :cond_0

    const-string v2, "still open"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 429
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-boolean v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    if-eqz v5, :cond_1

    const-string v5, "active"

    goto :goto_1

    :cond_1
    const-string v5, "inactive"

    :goto_1
    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->majorVersion:I

    .line 439
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    aput-object v5, v4, v1

    const/4 v1, 0x4

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->serverKey:Lorg/bitcoinj/core/ECKey;

    aput-object v5, v4, v1

    const/4 v1, 0x5

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    aput-object v5, v4, v1

    const/4 v1, 0x6

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    aput-object v5, v4, v1

    const/4 v1, 0x7

    iget-wide v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x8

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 440
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x9

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    .line 441
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/16 v0, 0xa

    aput-object v2, v4, v0

    const-string v0, "Stored client channel for server ID %s (%s)%n    Version:     %d%n    Key:         %s%n    Server key:  %s%n    Value left:  %s%n    Refund fees: %s%n    Expiry     : %s%n    Contract:  %sRefund:    %sClose:     %s"

    .line 429
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
