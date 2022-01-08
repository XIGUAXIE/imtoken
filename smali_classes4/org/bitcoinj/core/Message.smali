.class public abstract Lorg/bitcoinj/core/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final MAX_SIZE:I = 0x2000000

.field private static final SELF_CHECK:Z = false

.field public static final UNKNOWN_LENGTH:I = -0x80000000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected cursor:I

.field protected length:I

.field protected offset:I

.field protected params:Lorg/bitcoinj/core/NetworkParameters;

.field protected payload:[B

.field protected protocolVersion:I

.field protected recached:Z

.field protected serializer:Lorg/bitcoinj/core/MessageSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/bitcoinj/core/Message;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Message;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/bitcoinj/core/Message;->recached:Z

    .line 65
    sget-object v0, Lorg/bitcoinj/core/DummySerializer;->DEFAULT:Lorg/bitcoinj/core/DummySerializer;

    iput-object v0, p0, Lorg/bitcoinj/core/Message;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/bitcoinj/core/Message;->recached:Z

    .line 69
    iput-object p1, p0, Lorg/bitcoinj/core/Message;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 70
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Message;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 123
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v5

    .line 124
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v6

    const/high16 v7, -0x80000000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 123
    invoke-direct/range {v1 .. v7}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v5

    const/high16 v6, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/MessageSerializer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lorg/bitcoinj/core/Message;->recached:Z

    .line 89
    iput-object p5, p0, Lorg/bitcoinj/core/Message;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    .line 90
    iput p4, p0, Lorg/bitcoinj/core/Message;->protocolVersion:I

    .line 91
    iput-object p1, p0, Lorg/bitcoinj/core/Message;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 92
    iput-object p2, p0, Lorg/bitcoinj/core/Message;->payload:[B

    .line 93
    iput p3, p0, Lorg/bitcoinj/core/Message;->offset:I

    iput p3, p0, Lorg/bitcoinj/core/Message;->cursor:I

    .line 94
    iput p6, p0, Lorg/bitcoinj/core/Message;->length:I

    .line 96
    invoke-virtual {p0}, Lorg/bitcoinj/core/Message;->parse()V

    .line 98
    iget p1, p0, Lorg/bitcoinj/core/Message;->length:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Length field has not been set in constructor for %s after parse."

    .line 99
    invoke-static {v1, p2, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {p5}, Lorg/bitcoinj/core/MessageSerializer;->isParseRetainMode()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lorg/bitcoinj/core/Message;->payload:[B

    :cond_1
    return-void
.end method

.method protected constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 128
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->CURRENT:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 374
    iget-object p1, p0, Lorg/bitcoinj/core/Message;->params:Lorg/bitcoinj/core/NetworkParameters;

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Message;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    :cond_0
    return-void
.end method

.method private selfCheck([BI)V
    .locals 3

    .line 111
    instance-of v0, p0, Lorg/bitcoinj/core/VersionMessage;

    if-nez v0, :cond_1

    .line 112
    iget v0, p0, Lorg/bitcoinj/core/Message;->cursor:I

    sub-int v1, v0, p2

    new-array v1, v1, [B

    const/4 v2, 0x0

    sub-int/2addr v0, p2

    .line 113
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-virtual {p0}, Lorg/bitcoinj/core/Message;->bitcoinSerialize()[B

    move-result-object p1

    .line 115
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serialization is wrong: \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    .line 117
    invoke-virtual {v2, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " vs \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    .line 118
    invoke-virtual {p1, v1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustLength(II)V
    .locals 3

    .line 148
    iget v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ne p2, v1, :cond_1

    .line 152
    iput v1, p0, Lorg/bitcoinj/core/Message;->length:I

    return-void

    :cond_1
    add-int/2addr v0, p2

    .line 155
    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    add-int/2addr v0, p2

    .line 158
    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    int-to-long v1, p1

    .line 160
    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    sub-int/2addr p1, p2

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result p1

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/Message;->length:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final bitcoinSerialize(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/bitcoinj/core/Message;->length:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 259
    iget v2, p0, Lorg/bitcoinj/core/Message;->offset:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Message;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public bitcoinSerialize()[B
    .locals 4

    .line 181
    invoke-virtual {p0}, Lorg/bitcoinj/core/Message;->unsafeBitcoinSerialize()[B

    move-result-object v0

    .line 182
    array-length v1, v0

    new-array v1, v1, [B

    .line 183
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object p1, Lorg/bitcoinj/core/Message;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Error: {} class has not implemented bitcoinSerializeToStream method.  Generating message with no payload"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getMessageSize()I
    .locals 3

    .line 285
    iget v0, p0, Lorg/bitcoinj/core/Message;->length:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Length field has not been set in %s."

    invoke-static {v2, v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/Message;->length:I

    return v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method protected hasMoreBytes()Z
    .locals 2

    .line 360
    iget v0, p0, Lorg/bitcoinj/core/Message;->cursor:I

    iget-object v1, p0, Lorg/bitcoinj/core/Message;->payload:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecached()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/bitcoinj/core/Message;->recached:Z

    return v0
.end method

.method protected abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation
.end method

.method protected readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lorg/bitcoinj/core/Message;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    .line 345
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Message;->readBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected readBytes(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/high16 v0, 0x2000000

    if-gt p1, v0, :cond_0

    .line 334
    :try_start_0
    new-array v0, p1, [B

    .line 335
    iget-object v1, p0, Lorg/bitcoinj/core/Message;->payload:[B

    iget v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget v1, p0, Lorg/bitcoinj/core/Message;->cursor:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/bitcoinj/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 339
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 331
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Claimed value length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 356
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Message;->readBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    return-object v0
.end method

.method protected readInt64()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    iget v1, p0, Lorg/bitcoinj/core/Message;->cursor:I

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->readInt64([BI)J

    move-result-wide v0

    .line 303
    iget v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bitcoinj/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Lorg/bitcoinj/core/ProtocolException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected readStr()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lorg/bitcoinj/core/Message;->readVarInt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    .line 350
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Message;->readBytes(I)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected readUint32()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    iget v1, p0, Lorg/bitcoinj/core/Message;->cursor:I

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->readUint32([BI)J

    move-result-wide v0

    .line 293
    iget v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/core/Message;->cursor:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Lorg/bitcoinj/core/ProtocolException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected readUint64()Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Message;->readBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method protected readVarInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Message;->readVarInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readVarInt(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 321
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/Message;->payload:[B

    iget v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>([BI)V

    .line 322
    iget v1, p0, Lorg/bitcoinj/core/Message;->cursor:I

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->getOriginalSizeInBytes()I

    move-result v2

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lorg/bitcoinj/core/Message;->cursor:I

    .line 323
    iget-wide v0, v0, Lorg/bitcoinj/core/VarInt;->value:J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 325
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method protected unCache()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lorg/bitcoinj/core/Message;->recached:Z

    return-void
.end method

.method public unsafeBitcoinSerialize()[B
    .locals 5

    .line 206
    iget-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 207
    iget v2, p0, Lorg/bitcoinj/core/Message;->offset:I

    if-nez v2, :cond_0

    iget v2, p0, Lorg/bitcoinj/core/Message;->length:I

    array-length v3, v0

    if-ne v2, v3, :cond_0

    return-object v0

    .line 213
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/Message;->length:I

    new-array v2, v0, [B

    .line 214
    iget-object v3, p0, Lorg/bitcoinj/core/Message;->payload:[B

    iget v4, p0, Lorg/bitcoinj/core/Message;->offset:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 219
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;

    iget v2, p0, Lorg/bitcoinj/core/Message;->length:I

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v3, v2

    :goto_0
    invoke-direct {v0, v3}, Lorg/bitcoinj/core/UnsafeByteArrayOutputStream;-><init>(I)V

    .line 221
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Message;->bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 226
    :goto_1
    iget-object v2, p0, Lorg/bitcoinj/core/Message;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v2}, Lorg/bitcoinj/core/MessageSerializer;->isParseRetainMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/Message;->payload:[B

    .line 236
    iget v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    iget v3, p0, Lorg/bitcoinj/core/Message;->offset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/core/Message;->cursor:I

    .line 237
    iput v1, p0, Lorg/bitcoinj/core/Message;->offset:I

    const/4 v1, 0x1

    .line 238
    iput-boolean v1, p0, Lorg/bitcoinj/core/Message;->recached:Z

    .line 239
    array-length v1, v0

    iput v1, p0, Lorg/bitcoinj/core/Message;->length:I

    return-object v0

    .line 245
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 246
    array-length v1, v0

    iput v1, p0, Lorg/bitcoinj/core/Message;->length:I

    return-object v0
.end method
