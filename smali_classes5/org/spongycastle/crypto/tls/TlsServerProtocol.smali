.class public Lorg/spongycastle/crypto/tls/TlsServerProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsServerProtocol.java"


# instance fields
.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected clientCertificateType:S

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field protected tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

.field protected tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 19
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    const/4 p2, -0x1

    .line 25
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 26
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method


# virtual methods
.method public accept(Lorg/spongycastle/crypto/tls/TlsServer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    if-nez v0, :cond_0

    .line 51
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/4 v1, 0x0

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->shouldUseGMTUnixTime()Z

    move-result p1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsServerContextImpl;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRandomBlock(ZLorg/spongycastle/crypto/prng/RandomGenerator;)[B

    move-result-object p1

    iput-object p1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 61
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->init(Lorg/spongycastle/crypto/tls/TlsServerContext;)V

    .line 62
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 64
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 66
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->completeHandshake()V

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'accept\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsServer\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected cleanupHandshake()V
    .locals 1

    .line 71
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 74
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 75
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 76
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-void
.end method

.method protected expectCertificateVerifyMessage()Z
    .locals 1

    .line 776
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    if-ltz v0, :cond_0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasSigningCapability(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServerContext:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-eq p1, p2, :cond_13

    const/16 p2, 0x9

    const/16 v4, 0xb

    if-eq p1, v4, :cond_f

    const/16 v5, 0x14

    const/16 v6, 0xc

    const/16 v7, 0x10

    const/16 v8, 0xf

    if-eq p1, v5, :cond_a

    const/16 v5, 0x17

    if-eq p1, v5, :cond_8

    if-eq p1, v8, :cond_5

    if-ne p1, v7, :cond_4

    .line 227
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_0

    .line 273
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 231
    :pswitch_0
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 236
    :pswitch_1
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_0

    .line 238
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 252
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 261
    :cond_2
    sget-object p1, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 268
    :goto_0
    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V

    .line 269
    iput-short v4, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_4

    .line 250
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 345
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 279
    :cond_5
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v4, :cond_7

    .line 288
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 293
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V

    .line 294
    iput-short v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_4

    .line 290
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 299
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 188
    :cond_8
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-ne p1, v2, :cond_9

    .line 192
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 193
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_4

    .line 197
    :cond_9
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 305
    :cond_a
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v4, :cond_c

    if-ne p1, v6, :cond_b

    goto :goto_1

    .line 333
    :cond_b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 309
    :cond_c
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectCertificateVerifyMessage()Z

    move-result p1

    if-nez p1, :cond_e

    .line 317
    :goto_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0xd

    .line 318
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 320
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_d

    .line 322
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getNewSessionTicket()Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 323
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    :cond_d
    const/16 p1, 0xe

    .line 325
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 327
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendFinishedMessage()V

    .line 328
    iput-short v8, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 329
    iput-short v7, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_4

    .line 311
    :cond_e
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 203
    :cond_f
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-eq p1, v2, :cond_11

    if-ne p1, p2, :cond_10

    goto :goto_2

    .line 221
    :cond_10
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 207
    :cond_11
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientSupplementalData(Ljava/util/Vector;)V

    .line 212
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz p1, :cond_12

    .line 216
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V

    .line 217
    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    goto/16 :goto_4

    .line 214
    :cond_12
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 98
    :cond_13
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-nez p1, :cond_1b

    .line 102
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 103
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloMessage()V

    const/4 p1, 0x2

    .line 106
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 108
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 111
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_14
    const/4 p1, 0x3

    .line 113
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 115
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 116
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 118
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-nez p1, :cond_15

    .line 124
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    goto :goto_3

    .line 128
    :cond_15
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 130
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v1

    .line 131
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    :goto_3
    const/4 p1, 0x4

    .line 133
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    if-eqz v1, :cond_16

    .line 136
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 141
    :cond_17
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    if-eqz p1, :cond_18

    .line 143
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateStatus()Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 146
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V

    :cond_18
    const/4 p1, 0x5

    .line 150
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 152
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateServerKeyExchange()[B

    move-result-object p1

    if-eqz p1, :cond_19

    .line 155
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerKeyExchangeMessage([B)V

    :cond_19
    const/4 p1, 0x6

    .line 157
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 159
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz p1, :cond_1a

    .line 161
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsServer;->getCertificateRequest()Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz p1, :cond_1a

    .line 164
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 166
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 168
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    :cond_1a
    const/4 p1, 0x7

    .line 172
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 174
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendServerHelloDoneMessage()V

    .line 175
    iput-short v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->connection_state:S

    .line 177
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    :goto_4
    return-void

    .line 182
    :cond_1b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleWarningMessage(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x29

    if-eq p1, v0, :cond_0

    .line 368
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->handleWarningMessage(S)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz p1, :cond_1

    .line 362
    sget-object p1, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-nez v0, :cond_1

    .line 386
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 388
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 415
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-void

    .line 383
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 378
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected receiveCertificateMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 423
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 425
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->notifyClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-void
.end method

.method protected receiveCertificateVerifyMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v0

    .line 433
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/4 p1, 0x0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v1

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v1

    .line 449
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {v2, p1}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 451
    invoke-static {v2}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 453
    iget-short v3, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientCertificateType:S

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v3

    .line 454
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 455
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v0

    invoke-interface {v3, v4, v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz p1, :cond_1

    return-void

    .line 464
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receiveClientHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_7

    const/16 v1, 0x20

    .line 477
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 483
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 484
    array-length v4, v4

    if-gt v4, v1, :cond_6

    .line 494
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_5

    and-int/lit8 v5, v1, 0x1

    if-nez v5, :cond_5

    .line 499
    div-int/2addr v1, v4

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    .line 505
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    .line 510
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8Array(ILjava/io/InputStream;)[S

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    .line 517
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 519
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 521
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 523
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-object v3, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 525
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCipherSuites([I)V

    .line 526
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->notifyOfferedCompressionMethods([S)V

    .line 543
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    const/16 v0, 0xff

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 545
    iput-boolean v4, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 552
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 560
    iput-boolean v4, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    .line 562
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 569
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->notifySecureRenegotiation(Z)V

    .line 571
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    .line 573
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    :cond_3
    return-void

    .line 508
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 497
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 486
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 474
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected receiveClientKeyExchangeMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientKeyExchange(Ljava/io/InputStream;)V

    .line 582
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 584
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 585
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 587
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->prepareFinishHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 589
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->sendChangeCipherSpecMessage()V

    :cond_0
    return-void
.end method

.method protected sendCertificateRequestMessage(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 600
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 602
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendCertificateStatusMessage(Lorg/spongycastle/crypto/tls/CertificateStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 610
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 612
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendNewSessionTicketMessage(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 623
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 625
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 627
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    .line 620
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendServerHelloDoneMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0xe

    .line 758
    invoke-static {v3, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    const/4 v3, 0x1

    .line 759
    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 761
    invoke-virtual {p0, v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeHandshakeMessage([BII)V

    return-void
.end method

.method protected sendServerHelloMessage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 635
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 636
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v2

    const/16 v3, 0x50

    if-eqz v2, :cond_8

    .line 641
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 642
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 643
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->setRestrictReadVersion(Z)V

    .line 644
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 646
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 648
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v2, v2, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 654
    sget-object v2, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 656
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCipherSuite()I

    move-result v2

    .line 657
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCipherSuites:[I

    invoke-static {v5, v2}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    const/16 v5, 0xff

    if-eq v2, v5, :cond_7

    invoke-static {v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 664
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 666
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsServer;->getSelectedCompressionMethod()S

    move-result v1

    .line 667
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v1}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 671
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v1, v5, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 673
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 674
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 676
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->tlsServer:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsServer;->getServerExtensions()Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 681
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->secure_renegotiation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 701
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->createRenegotiationInfo([B)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz v1, :cond_4

    .line 713
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v5

    iput-boolean v5, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 715
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p0, v5, v6, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v5

    iput-short v5, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 718
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v5

    iput-boolean v5, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 724
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v1, v5, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->allowCertificateStatus:Z

    .line 728
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->resumedSession:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v1, v5, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->expectSessionTicket:Z

    .line 732
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 735
    :cond_4
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz v1, :cond_5

    .line 737
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/lit8 v1, v1, 0x8

    shl-int v1, v4, v1

    .line 738
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 741
    :cond_5
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v2

    iput v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 747
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v2, 0xc

    iput v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 749
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    .line 751
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    return-void

    .line 669
    :cond_6
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 662
    :cond_7
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 638
    :cond_8
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendServerKeyExchangeMessage([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    array-length v1, p1

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 769
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 771
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
