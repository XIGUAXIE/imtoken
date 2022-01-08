.class public Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;
.super Lcom/subgraph/orchid/connections/ConnectionHandshake;
.source "ConnectionHandshakeV3.java"


# instance fields
.field private identityCertificate:Ljava/security/cert/X509Certificate;

.field private linkCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshake;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private static getCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "CN="

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v2, 0x2c

    .line 188
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;
    .locals 1

    .line 140
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object p0

    const/4 v0, 0x0

    .line 141
    aget-object p0, p0, v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isSelfSigned(Ljavax/security/cert/X509Certificate;)Z
    .locals 1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private readCertificateFromCell(Lcom/subgraph/orchid/Cell;)Ljava/security/cert/X509Certificate;
    .locals 2

    :try_start_0
    const-string v0, "X.509"

    .line 83
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 84
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getShort()I

    move-result v1

    .line 85
    new-array v1, v1, [B

    .line 86
    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 87
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static sessionSupportsHandshake(Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .line 130
    invoke-static {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getConnectionCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->isSelfSigned(Ljavax/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testDName(Ljava/security/Principal;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testDName(Ljava/security/Principal;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testModulusLength(Ljavax/security/cert/X509Certificate;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->readCertificateFromCell(Lcom/subgraph/orchid/Cell;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " certificates in CERTS cell"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static testDName(Ljava/security/Principal;)Z
    .locals 2

    .line 164
    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private static testModulusLength(Ljavax/security/cert/X509Certificate;)Z
    .locals 2

    .line 175
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 179
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v0, 0x400

    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method getConnectionPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method recvAuthChallengeAndNetinfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x82

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    return-void

    :cond_0
    new-array v0, v4, [Ljava/lang/Integer;

    aput-object v3, v0, v2

    .line 125
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method recvCerts()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x81

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    const/4 v5, 0x0

    .line 47
    iput-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    .line 48
    iput-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    :goto_0
    if-ge v3, v2, :cond_2

    .line 51
    invoke-interface {v1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 53
    iget-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    const-string v6, "Link (type = 1)"

    invoke-direct {p0, v1, v5, v6}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_0
    if-ne v5, v4, :cond_1

    .line 55
    iget-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    const-string v6, "Identity (type = 2)"

    invoke-direct {p0, v1, v5, v6}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->testAndReadCertificate(Lcom/subgraph/orchid/Cell;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    iput-object v5, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected certificate type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in CERTS cell"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 44
    :cond_3
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting 2 certificates and got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sendVersions([I)V

    .line 33
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->receiveVersions()V

    .line 34
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->recvCerts()V

    .line 35
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->recvAuthChallengeAndNetinfo()V

    .line 36
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->verifyCertificates()V

    .line 37
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sendNetinfo()V

    return-void
.end method

.method verifyCertificates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->verifyIdentityKey(Ljava/security/PublicKey;)V

    .line 98
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 100
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x400

    if-ne v1, v2, :cond_1

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 106
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->identityCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 107
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 108
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->linkCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 114
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->getConnectionPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v1, "Link certificate in CERTS cell does not match connection certificate"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catch_0
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v1, "Router presented invalid certificate chain in CERTS cell"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v1, "Invalid RSA modulus length in router identity key"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
