.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.source "AbstractTlsClient.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected clientECPointFormats:[S

.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected namedCurves:[I

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:S

.field protected serverECPointFormats:[S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsPeer;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    return-void
.end method


# virtual methods
.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v3, v0, [S

    .line 81
    fill-array-data v3, :array_0

    const/4 v4, 0x1

    new-array v5, v4, [S

    const/4 v6, 0x0

    aput-short v4, v5, v6

    .line 87
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_0

    .line 92
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v10, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    aget-short v11, v3, v7

    aget-short v12, v5, v8

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    new-instance v3, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v3, v1, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V

    .line 108
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getCipherSuites()[I

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->containsECCCipherSuites([I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v1, [I

    .line 120
    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    const/4 v0, 0x3

    new-array v0, v0, [S

    .line 121
    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    .line 124
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->namedCurves:[I

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->addSupportedEllipticCurvesExtension(Ljava/util/Hashtable;[I)V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->clientECPointFormats:[S

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->addSupportedPointFormatsExtension(Ljava/util/Hashtable;[S)V

    :cond_3
    return-object v2

    :array_0
    .array-data 2
        0x6s
        0x5s
        0x4s
        0x3s
        0x2s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x17
        0x18
    .end array-data

    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method

.method public getClientHelloRecordLayerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getClientSupplementalData()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getCompressionMethods()[S
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 135
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    return-void
.end method

.method public notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0

    .line 159
    iput p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0

    .line 164
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCompressionMethod:S

    return-void
.end method

.method public notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getMinimumVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x46

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public notifySessionID([B)V
    .locals 0

    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 179
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_2

    .line 184
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedEllipticCurvesExtension(Ljava/util/Hashtable;)[I

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->getSupportedPointFormatsExtension(Ljava/util/Hashtable;)[S

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->serverECPointFormats:[S

    if-eqz p1, :cond_3

    .line 191
    iget p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->selectedCipherSuite:I

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsECCUtils;->isECCCipherSuite(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 187
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 181
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public processServerSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
