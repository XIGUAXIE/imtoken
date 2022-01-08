.class public Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;
.super Lcom/subgraph/orchid/connections/ConnectionHandshake;
.source "ConnectionHandshakeV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshake;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private getIdentityCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object p1

    .line 77
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 80
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 81
    aget-object p1, p1, v1

    return-object p1

    .line 78
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting 2 certificate chain from router and received chain length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v0, "Malformed certificate received"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :catch_1
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v0, "Incorrect signature on certificate chain"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catch_2
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v0, "No certificates received from router"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getIdentityKey()Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->getIdentityCertificateFromSession(Ljavax/net/ssl/SSLSession;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method runHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->V1_CIPHERS_ONLY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;-><init>(Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$1;)V

    .line 57
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 58
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 59
    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2$HandshakeFinishedMonitor;->waitFinished()V

    .line 60
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 62
    invoke-direct {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->getIdentityKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->verifyIdentityKey(Ljava/security/PublicKey;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 63
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->sendVersions([I)V

    .line 64
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->receiveVersions()V

    .line 65
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->sendNetinfo()V

    .line 66
    invoke-virtual {p0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;->recvNetinfo()V

    return-void
.end method
