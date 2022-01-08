.class public Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsClientProtocol.java"


# instance fields
.field protected authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field protected tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 51
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 19
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 26
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 27
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    .line 36
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x14

    const/4 v3, 0x1

    .line 41
    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    return-object v1
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    .line 108
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 111
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 112
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 113
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 114
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_1

    .line 76
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/4 v1, 0x1

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 81
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(ZLorg/spongycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 89
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 96
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    .line 101
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 103
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    return-void

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(S[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    iget-boolean p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0x10

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/16 v6, 0xa

    if-eqz p2, :cond_1

    if-ne p1, v2, :cond_0

    .line 134
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v5, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 140
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 142
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 143
    iput-short v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 144
    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    return-void

    .line 136
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    const/16 p2, 0x28

    if-eqz p1, :cond_23

    const/16 v7, 0xc

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eq p1, v5, :cond_1f

    const/16 v10, 0xe

    const/4 v11, 0x4

    if-eq p1, v11, :cond_1c

    if-eq p1, v2, :cond_18

    const/16 v1, 0x16

    const/4 v2, 0x5

    if-eq p1, v1, :cond_15

    const/16 v1, 0x17

    if-eq p1, v1, :cond_13

    const/4 v1, 0x6

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    .line 576
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 314
    :pswitch_0
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_1

    .line 435
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 318
    :pswitch_1
    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 324
    :pswitch_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 325
    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 333
    :pswitch_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 340
    :pswitch_4
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 342
    iput-short v8, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 344
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 346
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_2
    const/16 p1, 0x9

    .line 351
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 354
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_3

    .line 356
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object p1, v9

    goto :goto_0

    .line 360
    :cond_3
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    if-nez p1, :cond_4

    .line 364
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 372
    sget-object p2, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    .line 376
    :cond_4
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 378
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 382
    :goto_0
    iput-short v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 388
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    const/16 p2, 0xb

    .line 389
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 391
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 392
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 394
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 396
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_7

    .line 398
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 408
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 414
    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-interface {p2, v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p2

    goto :goto_1

    .line 411
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 419
    :cond_6
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0, p2, v9}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object p2

    .line 422
    :goto_1
    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    .line 423
    new-instance p2, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {p2, v9, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 424
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V

    .line 426
    iput-short v7, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 429
    :cond_7
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    .line 430
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    .line 431
    iput-short v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 473
    :pswitch_5
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v11, :cond_9

    if-eq p1, v2, :cond_9

    if-ne p1, v1, :cond_8

    goto :goto_2

    .line 510
    :cond_8
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 479
    :cond_9
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 485
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-eqz p1, :cond_a

    .line 494
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 496
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 498
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 504
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 p1, 0x7

    .line 513
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 491
    :cond_a
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 441
    :pswitch_6
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_d

    if-eq p1, v11, :cond_e

    if-ne p1, v2, :cond_b

    goto :goto_3

    .line 465
    :cond_b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 445
    :cond_c
    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 451
    :cond_d
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    .line 452
    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 459
    :cond_e
    :goto_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 461
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 468
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 153
    :pswitch_7
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v5, :cond_10

    if-ne p1, v3, :cond_f

    goto :goto_4

    .line 182
    :cond_f
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 157
    :cond_10
    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    .line 164
    :goto_4
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 166
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 169
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 174
    :cond_12
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 176
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 177
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 185
    iput-short v11, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 300
    :cond_13
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v5, :cond_14

    .line 304
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_7

    .line 308
    :cond_14
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 190
    :cond_15
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v11, :cond_17

    .line 194
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-eqz p1, :cond_16

    .line 204
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 206
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 210
    iput-short v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 201
    :cond_16
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 214
    :cond_17
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 220
    :cond_18
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_1a

    if-ne p1, v10, :cond_19

    goto :goto_5

    .line 243
    :cond_19
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 224
    :cond_1a
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_1b

    .line 237
    :goto_5
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    .line 238
    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 239
    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_7

    .line 230
    :cond_1b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 518
    :cond_1c
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v4, :cond_1e

    .line 522
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_1d

    .line 535
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 537
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    .line 538
    iput-short v10, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    .line 528
    :cond_1d
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 542
    :cond_1e
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 249
    :cond_1f
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/4 p2, 0x1

    if-ne p1, p2, :cond_22

    .line 253
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    .line 254
    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 256
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short p1, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    if-ltz p1, :cond_20

    .line 258
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short p1, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    add-int/2addr p1, v8

    shl-int p1, p2, p1

    .line 259
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 262
    :cond_20
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v0

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result p2

    iput p2, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 270
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v7, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 272
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    .line 274
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz p1, :cond_21

    .line 276
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 277
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object p2

    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object p2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    goto :goto_7

    .line 283
    :cond_21
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    .line 285
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length p2, p1

    if-lez p2, :cond_25

    .line 287
    new-instance p2, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {p2, p1, v9}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    goto :goto_7

    .line 294
    :cond_22
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 547
    :cond_23
    :goto_6
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 555
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v3, :cond_25

    .line 561
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result p1

    if-nez p1, :cond_24

    const/16 p1, 0x64

    const-string p2, "Renegotiation not supported"

    .line 567
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->raiseWarning(SLjava/lang/String;)V

    goto :goto_7

    .line 563
    :cond_24
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_25
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 p1, 0x3

    .line 584
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    .line 586
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 587
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    .line 595
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 597
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_13

    .line 610
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 615
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 621
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 622
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 623
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 628
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v3, 0x20

    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v4

    iput-object v4, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 630
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    .line 631
    array-length v4, v1

    if-gt v4, v3, :cond_10

    .line 636
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v3, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 638
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v5

    invoke-static {v1, v5}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    .line 645
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 646
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v5, v1}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v1, :cond_f

    const/16 v5, 0xff

    if-eq v1, v5, :cond_f

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 654
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 660
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 661
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v0}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 666
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v5, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 676
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 685
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    .line 687
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 688
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 690
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 699
    sget-object v6, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 709
    :cond_1
    iget-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    .line 724
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v6, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 726
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 739
    :cond_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    .line 748
    iput-boolean v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    .line 750
    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-static {p1, v5}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 752
    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 758
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 760
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    .line 761
    iget-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v6, :cond_7

    .line 763
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result p1

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result p1

    if-ne v0, p1, :cond_6

    const/4 p1, 0x0

    .line 770
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v5

    goto :goto_3

    .line 766
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 773
    :cond_7
    :goto_3
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v1, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 774
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v0, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v5, :cond_c

    .line 783
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 786
    :cond_8
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 789
    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 791
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0, p1, v5, v2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 794
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 800
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_a

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    .line 804
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_b

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v3, 0x1

    :cond_b
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    :cond_c
    if-eqz p1, :cond_d

    .line 811
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_d
    return-void

    .line 663
    :cond_e
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 651
    :cond_f
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 633
    :cond_10
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 618
    :cond_11
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 612
    :cond_12
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 606
    :cond_13
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 820
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 822
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 830
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_7

    .line 836
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 842
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 843
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_1

    .line 845
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 846
    array-length v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 848
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 852
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    .line 854
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    .line 856
    array-length v2, v1

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v2, :cond_3

    .line 858
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v2

    if-nez v2, :cond_3

    .line 861
    :cond_2
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 865
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    .line 867
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 869
    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 871
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 873
    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 882
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 885
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    const/16 v4, 0xff

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 892
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    .line 895
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 898
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 900
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_6

    .line 902
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 905
    :cond_6
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    .line 833
    :cond_7
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 913
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 915
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
