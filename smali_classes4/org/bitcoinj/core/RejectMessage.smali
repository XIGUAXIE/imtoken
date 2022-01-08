.class public Lorg/bitcoinj/core/RejectMessage;
.super Lorg/bitcoinj/core/Message;
.source "RejectMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/RejectMessage$RejectCode;
    }
.end annotation


# instance fields
.field private code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

.field private message:Ljava/lang/String;

.field private messageHash:Lorg/bitcoinj/core/Sha256Hash;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/RejectMessage$RejectCode;Lorg/bitcoinj/core/Sha256Hash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 82
    iput-object p2, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 83
    iput-object p3, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 84
    iput-object p4, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

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

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    new-instance v2, Lorg/bitcoinj/core/VarInt;

    array-length v3, v0

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v2}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 103
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    iget-byte v0, v0, Lorg/bitcoinj/core/RejectMessage$RejectCode;->code:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 104
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    new-instance v1, Lorg/bitcoinj/core/VarInt;

    array-length v2, v0

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v1}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "tx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/RejectMessage;

    .line 160
    iget-object v2, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    iget-object v3, p1, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/RejectMessage$RejectCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    iget-object v3, p1, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    iget-object p1, p1, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

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

.method public getReasonCode()Lorg/bitcoinj/core/RejectMessage$RejectCode;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    return-object v0
.end method

.method public getReasonString()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectedMessage()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectedObjectHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v2, 0x3

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

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/RejectMessage;->readBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lorg/bitcoinj/core/RejectMessage$RejectCode;->fromCode(B)Lorg/bitcoinj/core/RejectMessage$RejectCode;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->code:Lorg/bitcoinj/core/RejectMessage$RejectCode;

    .line 92
    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->readStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->reason:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->message:Ljava/lang/String;

    const-string v1, "tx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/RejectMessage;->messageHash:Lorg/bitcoinj/core/Sha256Hash;

    .line 95
    :cond_1
    iget v0, p0, Lorg/bitcoinj/core/RejectMessage;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/RejectMessage;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/RejectMessage;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 150
    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->getRejectedObjectHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 151
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->getRejectedMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->getReasonString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/bitcoinj/core/RejectMessage;->getReasonCode()Lorg/bitcoinj/core/RejectMessage$RejectCode;

    move-result-object v3

    iget-byte v3, v3, Lorg/bitcoinj/core/RejectMessage$RejectCode;->code:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Reject: %s %s for reason \'%s\' (%d)"

    .line 151
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
