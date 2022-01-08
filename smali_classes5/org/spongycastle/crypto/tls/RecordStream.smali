.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I = 0x4000


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private context:Lorg/spongycastle/crypto/tls/TlsContext;

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private readSeqNo:J

.field private readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:J

.field private writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 19
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    iput-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    .line 21
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 23
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 24
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 26
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    .line 36
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {p1}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 38
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 41
    sget p1, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    return-void
.end method

.method private static checkLength(IIS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gt p0, p1, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method private static checkType(SS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 353
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 337
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method


# virtual methods
.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v1, 0x16

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 181
    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v6

    .line 182
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    const-wide/16 p2, 0x1

    add-long/2addr p2, v3

    iput-wide p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    array-length v8, v6

    const/4 v7, 0x0

    move v5, p1

    invoke-interface/range {v2 .. v8}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object p2

    .line 184
    array-length p3, p2

    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 190
    iget-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p3, v0}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    .line 193
    array-length v1, p2

    invoke-virtual {p3, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object p2

    .line 203
    :cond_0
    array-length p3, p2

    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v1, 0x1e

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 209
    array-length p3, p2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    const/16 p3, 0x17

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method finaliseHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 129
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-void

    .line 126
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method getPlaintextLimit()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 47
    new-instance v0, Lorg/spongycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 48
    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method notifyHelloComplete()V
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 300
    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method public readRecord()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    const/16 v3, 0xa

    .line 147
    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 149
    iget-boolean v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 151
    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    const/16 v6, 0x300

    if-ne v3, v6, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 159
    :cond_2
    invoke-static {v0, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 160
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v6, :cond_3

    .line 162
    iput-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v3, v6}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    const/4 v3, 0x3

    .line 170
    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 171
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v2, v3, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v0

    .line 172
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v4, v0

    invoke-virtual {v3, v2, v0, v1, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    return v5

    .line 166
    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method receivedReadCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    .line 115
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 116
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:J

    return-void

    .line 113
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected safeClose()V
    .locals 1

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method sentWriteCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eqz v1, :cond_0

    .line 103
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 104
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const-wide/16 v0, 0x0

    .line 105
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 93
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 0

    .line 58
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 p1, p1, 0x400

    .line 59
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 p1, p1, 0x400

    .line 60
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    return-void
.end method

.method setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method setRestrictReadVersion(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    return-void
.end method

.method setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    return-void
.end method

.method protected writeRecord(S[BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v8, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 221
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v9, 0x50

    .line 230
    invoke-static {p1, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 235
    iget v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    invoke-static {v7, v1, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    const/4 v10, 0x1

    if-ge v7, v10, :cond_2

    const/16 v1, 0x17

    if-ne v8, v1, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_2
    :goto_0
    const/16 v1, 0x16

    if-ne v8, v1, :cond_3

    .line 248
    invoke-virtual {p0, p2, v6, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 251
    :cond_3
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v2, v0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 254
    iget-object v2, v0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 256
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v11, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long/2addr v3, v11

    iput-wide v3, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    move-wide v2, v11

    move v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v1

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {v1, p2, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 261
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v5

    .line 268
    array-length v1, v5

    add-int/lit16 v2, v7, 0x400

    invoke-static {v1, v2, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 270
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v6, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:J

    const/4 v11, 0x0

    array-length v12, v5

    move-wide v2, v6

    move v4, p1

    move v6, v11

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v1

    .line 276
    :goto_1
    array-length v2, v1

    iget v3, v0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    invoke-static {v2, v3, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 278
    array-length v2, v1

    const/4 v3, 0x5

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    .line 279
    invoke-static {p1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 280
    iget-object v5, v0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-static {v5, v2, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 281
    array-length v5, v1

    const/4 v6, 0x3

    invoke-static {v5, v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 282
    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v1, v0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
