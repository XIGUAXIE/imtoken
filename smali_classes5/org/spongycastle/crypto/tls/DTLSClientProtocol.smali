.class public Lorg/spongycastle/crypto/tls/DTLSClientProtocol;
.super Lorg/spongycastle/crypto/tls/DTLSProtocol;
.source "DTLSClientProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/DTLSProtocol;-><init>(Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected static patchClientHelloWithCookie([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 792
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    const/16 v1, 0x23

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 797
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 798
    invoke-static {p0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    array-length v4, p1

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 800
    array-length v4, p1

    invoke-static {v4, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    .line 801
    array-length v1, p1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    array-length p1, p1

    add-int/2addr p1, v0

    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-static {p0, v0, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected clientHandshake(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 82
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 83
    new-instance v4, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-direct {v4, v5, v2}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    .line 85
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateClientHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/TlsClient;)[B

    move-result-object v5

    const/4 v6, 0x1

    .line 86
    invoke-virtual {v4, v6, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 88
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v7

    .line 90
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    const/4 v9, 0x3

    const/16 v10, 0x2f

    if-ne v8, v9, :cond_1

    .line 92
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->resetDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v8

    .line 93
    iget-object v9, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v9

    .line 101
    invoke-virtual {v8, v9}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processHelloVerifyRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B

    move-result-object v7

    .line 107
    invoke-static {v5, v7}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->patchClientHelloWithCookie([B[B)[B

    move-result-object v7

    .line 109
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->resetHandshakeMessagesDigest()V

    .line 110
    invoke-virtual {v4, v6, v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 112
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v7

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 115
    :cond_1
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1b

    .line 117
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getDiscoveredPeerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 119
    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 126
    iget-short v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    if-ltz v5, :cond_2

    .line 128
    iget-short v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    add-int/lit8 v5, v5, 0x8

    shl-int v5, v6, v5

    .line 129
    invoke-virtual {v2, v5}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    .line 132
    :cond_2
    iget v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    iput v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 133
    iget-short v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    iput-short v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 134
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget v7, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v5, v7}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v5

    iput v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    const/16 v5, 0xc

    .line 140
    iput v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 142
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->notifyHelloComplete()V

    .line 144
    iget-object v7, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v7, v7

    const/4 v8, 0x0

    if-lez v7, :cond_3

    iget-object v7, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    iget-object v11, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v11}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v11

    invoke-static {v7, v11}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    const-string v7, "client finished"

    const-string v11, "server finished"

    const/16 v12, 0x14

    const/4 v13, 0x0

    if-eqz v6, :cond_5

    .line 149
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v5

    iget-object v6, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCompressionAlgorithm()S

    move-result v5

    iget-object v6, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v6

    if-ne v5, v6, :cond_4

    .line 155
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 156
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 159
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v6

    invoke-static {v5, v6, v13}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    invoke-static {v3, v11, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 161
    invoke-virtual {v4, v12}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    .line 164
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v6

    invoke-static {v5, v6, v13}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    invoke-static {v3, v7, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v3

    .line 166
    invoke-virtual {v4, v12, v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 168
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 170
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v4, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V

    .line 172
    iget-object v1, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    .line 174
    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSTransport;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/DTLSTransport;-><init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    return-object v1

    .line 152
    :cond_4
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 177
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->invalidateSession(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V

    .line 179
    iget-object v6, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v6, v6

    if-lez v6, :cond_6

    .line 181
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    invoke-direct {v6, v10, v13}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object v6, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 184
    :cond_6
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v10

    const/16 v14, 0x17

    if-ne v10, v14, :cond_7

    .line 188
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerSupplementalData(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 189
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v6

    goto :goto_2

    .line 193
    :cond_7
    iget-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10, v13}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    .line 196
    :goto_2
    iget-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v10}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v10

    iput-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 197
    iget-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v15, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v10, v15}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 201
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v10

    const/16 v15, 0xb

    if-ne v10, v15, :cond_8

    .line 203
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerCertificate(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v6

    .line 204
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v10

    goto :goto_3

    .line 209
    :cond_8
    iget-object v10, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v10}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    move-object v10, v6

    move-object v6, v13

    :goto_3
    if-eqz v6, :cond_9

    .line 213
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 215
    :cond_9
    iput-boolean v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 218
    :cond_a
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_b

    .line 220
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 221
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v10

    .line 228
    :cond_b
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v8

    if-ne v8, v5, :cond_c

    .line 230
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processServerKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 231
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v10

    goto :goto_4

    .line 236
    :cond_c
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 239
    :goto_4
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/16 v8, 0xd

    if-ne v5, v8, :cond_d

    .line 241
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    .line 247
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 250
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v10

    .line 257
    :cond_d
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v5

    const/16 v8, 0xe

    if-ne v5, v8, :cond_1a

    .line 259
    invoke-virtual {v10}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_19

    .line 269
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    .line 271
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 274
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateSupplementalData(Ljava/util/Vector;)[B

    move-result-object v5

    .line 275
    invoke-virtual {v4, v14, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 278
    :cond_e
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v5, :cond_11

    .line 280
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v5, v8}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v5

    iput-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 289
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v5, :cond_f

    .line 291
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v5

    goto :goto_5

    :cond_f
    move-object v5, v13

    :goto_5
    if-nez v5, :cond_10

    .line 295
    sget-object v5, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 298
    :cond_10
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateCertificate(Lorg/spongycastle/crypto/tls/Certificate;)[B

    move-result-object v5

    .line 299
    invoke-virtual {v4, v15, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 302
    :cond_11
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v5, :cond_12

    .line 304
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v5, v8}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    goto :goto_6

    .line 308
    :cond_12
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 311
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B

    move-result-object v5

    const/16 v8, 0x10

    .line 312
    invoke-virtual {v4, v8, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 314
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v5, v8}, Lorg/spongycastle/crypto/tls/TlsProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 315
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 317
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v5

    .line 319
    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v8, :cond_15

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    instance-of v8, v8, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v8, :cond_15

    .line 321
    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientCredentials:Lorg/spongycastle/crypto/tls/TlsCredentials;

    check-cast v8, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 329
    iget-object v9, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 331
    invoke-interface {v8}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 337
    invoke-virtual {v9}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v10

    invoke-interface {v5, v10}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object v5

    goto :goto_7

    .line 334
    :cond_13
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 342
    :cond_14
    iget-object v9, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {v9, v5, v13}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    move-object v9, v13

    .line 345
    :goto_7
    invoke-interface {v8, v5}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v5

    .line 346
    new-instance v8, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v8, v9, v5}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 347
    invoke-virtual {v0, v1, v8}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->generateCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DigitallySigned;)[B

    move-result-object v5

    const/16 v8, 0xf

    .line 348
    invoke-virtual {v4, v8, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 352
    :cond_15
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v8, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v9

    invoke-static {v8, v9, v13}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v8

    invoke-static {v5, v7, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v5

    .line 354
    invoke-virtual {v4, v12, v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->sendMessage(S[B)V

    .line 356
    iget-boolean v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    if-eqz v5, :cond_17

    .line 358
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessage()Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;

    move-result-object v5

    .line 359
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getType()S

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_16

    .line 361
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$Message;->getBody()[B

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V

    goto :goto_8

    .line 365
    :cond_16
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 370
    :cond_17
    :goto_8
    iget-object v5, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v7, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v8

    invoke-static {v7, v8, v13}, Lorg/spongycastle/crypto/tls/TlsProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v7

    invoke-static {v5, v11, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B

    move-result-object v5

    .line 372
    invoke-virtual {v4, v12}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->receiveMessageBody(S)[B

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->processFinished([B[B)V

    .line 374
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V

    .line 376
    iget-object v4, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v4, :cond_18

    .line 378
    new-instance v4, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    invoke-direct {v4}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;-><init>()V

    iget v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCipherSuite(I)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v4

    iget-short v5, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    invoke-virtual {v4, v5}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setCompressionAlgorithm(S)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v4

    iget-object v3, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-virtual {v4, v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setMasterSecret([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->setPeerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->build()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v3

    iput-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 385
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v3

    iget-object v4, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->importSession([BLorg/spongycastle/crypto/tls/SessionParameters;)Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object v3

    iput-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 387
    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v4, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setResumableSession(Lorg/spongycastle/crypto/tls/TlsSession;)V

    .line 390
    :cond_18
    iget-object v1, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyHandshakeComplete()V

    .line 392
    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSTransport;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/DTLSTransport;-><init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V

    return-object v1

    .line 261
    :cond_19
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 266
    :cond_1a
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    :cond_1b
    const/16 v2, 0xa

    .line 123
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;Lorg/spongycastle/crypto/tls/DatagramTransport;)Lorg/spongycastle/crypto/tls/DTLSTransport;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    const/4 v1, 0x1

    .line 34
    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 36
    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;-><init>()V

    .line 37
    iput-object p1, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 38
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v2, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 40
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRandomBlock(ZLorg/spongycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 43
    iget-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    iget-object v2, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    const/16 v3, 0x16

    invoke-direct {v0, p2, v2, p1, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;-><init>(Lorg/spongycastle/crypto/tls/DatagramTransport;Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsPeer;S)V

    .line 47
    iget-object p1, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 53
    iput-object p1, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    .line 54
    iput-object p2, v1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    :cond_0
    const/16 p1, 0x50

    .line 60
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->clientHandshake(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)Lorg/spongycastle/crypto/tls/DTLSTransport;

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 74
    :catch_0
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 75
    new-instance p2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p2, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p2

    :catch_1
    move-exception p2

    .line 69
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 70
    throw p2

    :catch_2
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result p2

    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 65
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'transport\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'client\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateCertificateVerify(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/DigitallySigned;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 400
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected generateClientHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/TlsClient;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 415
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 417
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 420
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 421
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_1

    .line 423
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    array-length v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    .line 426
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 429
    :cond_1
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 432
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 437
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v1

    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 440
    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    .line 449
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 452
    :goto_0
    iget-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    .line 457
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {p2, v4}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    .line 460
    :cond_3
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    new-array p2, v1, [S

    aput-short v2, p2, v2

    .line 466
    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    .line 468
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    .line 471
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz p2, :cond_4

    .line 473
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 476
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 411
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected generateClientKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 484
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method protected invalidateSession(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;)V
    .locals 2

    .line 489
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->clear()V

    .line 492
    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    .line 495
    :cond_0
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsSession;->invalidate()V

    .line 498
    iput-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    :cond_1
    return-void
.end method

.method protected processCertificateRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 516
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 518
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 520
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    return-void

    .line 511
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processCertificateStatus(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-boolean v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 538
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 540
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void

    .line 533
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processHelloVerifyRequest(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 550
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p2

    .line 551
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 553
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 557
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    const/16 v0, 0x2f

    if-eqz p1, :cond_2

    .line 566
    sget-object p1, Lorg/spongycastle/crypto/tls/ProtocolVersion;->DTLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p1, p2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    if-nez p1, :cond_1

    array-length p1, v1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    :goto_0
    return-object v1

    .line 559
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processNewSessionTicket(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 579
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object p2

    .line 581
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 583
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected processServerCertificate(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 591
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object p2

    .line 593
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 595
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 596
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 597
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    return-object p2
.end method

.method protected processServerHello(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 609
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p2

    .line 610
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    const/16 v2, 0x20

    .line 612
    invoke-static {v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 614
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    .line 615
    iget-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    array-length v3, v3

    const/16 v4, 0x2f

    if-gt v3, v2, :cond_b

    .line 619
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedSessionID:[B

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 621
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    .line 622
    iget-object v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCipherSuites:[I

    iget v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    if-eqz v2, :cond_a

    iget v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    const/16 v3, 0xff

    if-eq v2, v3, :cond_a

    iget v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 630
    iget p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {p2, v4}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->validateSelectedCipherSuite(IS)V

    .line 632
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-interface {p2, v2}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 634
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result p2

    iput-short p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    .line 635
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->offeredCompressionMethods:[S

    iget-short v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-static {p2, v2}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 639
    iget-object p2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-short v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCompressionMethod:S

    invoke-interface {p2, v2}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 657
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 666
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 667
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 679
    sget-object v3, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x6e

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 702
    :cond_2
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 711
    iput-boolean v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    .line 713
    sget-object v2, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->createRenegotiationInfo([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 716
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 726
    :cond_4
    :goto_1
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 727
    iget v2, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->selectedCipherSuite:I

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 729
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 732
    :cond_6
    :goto_2
    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    .line 734
    iget-object v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v1, p2, v4}, Lorg/spongycastle/crypto/tls/DTLSClientProtocol;->evaluateMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->maxFragmentLength:S

    .line 737
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    .line 739
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p2, v0, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    iput-boolean v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->allowCertificateStatus:Z

    .line 742
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {p2, v0, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    iput-boolean v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->expectSessionTicket:Z

    .line 746
    :cond_7
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->secure_renegotiation:Z

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 748
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    .line 750
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_8
    return-void

    .line 637
    :cond_9
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 627
    :cond_a
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 617
    :cond_b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected processServerKeyExchange(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 759
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 761
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-void
.end method

.method protected processServerSupplementalData(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 768
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p2

    .line 769
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    return-void
.end method

.method protected reportServerVersion(Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->clientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 776
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    if-nez v1, :cond_0

    .line 779
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 780
    iget-object p1, p1, Lorg/spongycastle/crypto/tls/DTLSClientProtocol$ClientHandshakeState;->client:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    goto :goto_0

    .line 782
    :cond_0
    invoke-virtual {v1, p2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 784
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x2f

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
