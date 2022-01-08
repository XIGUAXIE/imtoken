.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;
.super Ljava/lang/Object;
.source "SSLEngineManager.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final handshakeCallback:Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;

.field private handshakeStarted:Z

.field private final input:Ljava/io/InputStream;

.field private final myApplicationBuffer:Ljava/nio/ByteBuffer;

.field private final myNetworkBuffer:Ljava/nio/ByteBuffer;

.field private final output:Ljava/io/OutputStream;

.field private final peerApplicationBuffer:Ljava/nio/ByteBuffer;

.field private final peerNetworkBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeStarted:Z

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    .line 39
    iput-object p2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeCallback:Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;

    .line 40
    iput-object p3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->input:Ljava/io/InputStream;

    .line 41
    iput-object p4, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createApplicationBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    .line 44
    invoke-static {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createPacketBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    .line 45
    invoke-static {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createApplicationBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    .line 46
    invoke-static {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createPacketBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static createApplicationBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result p0

    invoke-static {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 58
    new-array p0, p0, [B

    .line 59
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createPacketBuffer(Ljavax/net/ssl/SSLSession;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 54
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p0

    invoke-static {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private handshakeFinished()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeCallback:Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lcom/subgraph/orchid/sockets/sslengine/HandshakeCallbackHandler;->handshakeCompleted()V

    :cond_0
    return-void
.end method

.method private handshakeUnwrap()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "handshakeUnwrap()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->networkReadBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 242
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 243
    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 245
    sget-object v2, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logResult(Ljavax/net/ssl/SSLEngineResult;)V

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v2, v3, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeFinished()V

    .line 252
    :cond_2
    sget-object v2, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    return v3

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    return v1

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->networkReadBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_7

    return v1

    :cond_7
    return v3
.end method

.method private handshakeWrap()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "handshakeWrap()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 274
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 276
    sget-object v1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logResult(Ljavax/net/ssl/SSLEngineResult;)V

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeFinished()V

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->flush()V

    .line 294
    :goto_0
    sget-object v1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    return v2
.end method

.method private logResult(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 3

    .line 311
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " consumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " produced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method private networkReadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 332
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    .line 335
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->input:Ljava/io/InputStream;

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    add-int v3, v1, v0

    .line 337
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    :cond_0
    sget-object p1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkReadBuffer(b, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0
.end method

.method private networkWriteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    .line 324
    sget-object v3, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkWriteBuffer(b, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 326
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 327
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private processHandshake()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHandshake() hs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeWrap()Z

    move-result v0

    return v0

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeUnwrap()Z

    move-result v0

    return v0

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->synchronousRunDelegatedTasks()V

    .line 208
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->processHandshake()Z

    move-result v0

    return v0
.end method

.method private runHandshake()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->processHandshake()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private synchronousRunDelegatedTasks()V
    .locals 4

    .line 222
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "runDelegatedTasks()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running a task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 229
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->flush()V

    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 174
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->runHandshake()Z

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 177
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->runHandshake()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->networkWriteBuffer(Ljava/nio/ByteBuffer;)V

    .line 187
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method getRecvBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getSendBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "read()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeStarted:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->startHandshake()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->networkReadBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 136
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 137
    iget-object v4, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 138
    sget-object v4, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    invoke-direct {p0, v3}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logResult(Ljavax/net/ssl/SSLEngineResult;)V

    .line 142
    :cond_3
    sget-object v4, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->input:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 158
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->runHandshake()Z

    if-ne v0, v1, :cond_5

    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->peerApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v2

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_8
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method startHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "startHandshake()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeStarted:Z

    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 66
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->runHandshake()Z

    return-void
.end method

.method write()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "write()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->handshakeStarted:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->startHandshake()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myNetworkBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 91
    sget-object v2, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->logResult(Ljavax/net/ssl/SSLEngineResult;)V

    .line 95
    :cond_2
    sget-object v2, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->flush()V

    .line 110
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->runHandshake()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->write()I

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->myApplicationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 101
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSLEngine is closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_5
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0

    .line 97
    :cond_6
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method
