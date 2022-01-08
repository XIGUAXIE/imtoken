.class public Lcom/subgraph/orchid/connections/ConnectionSocketFactory;
.super Ljava/lang/Object;
.source "ConnectionSocketFactory.java"


# static fields
.field private static final MANDATORY_CIPHERS:[Ljava/lang/String;

.field private static final NULL_TRUST:[Ljavax/net/ssl/TrustManager;

.field static final V1_CIPHERS_ONLY:[Ljava/lang/String;


# instance fields
.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    .line 18
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->V1_CIPHERS_ONLY:[Ljava/lang/String;

    const-string v3, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 24
    filled-new-array {v2, v1, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->MANDATORY_CIPHERS:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 30
    new-instance v1, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;

    invoke-direct {v1}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->NULL_TRUST:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static createSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3

    const-string v0, "sun.security.ssl.allowUnsafeRenegotiation"

    const-string v1, "true"

    .line 48
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    const-string v0, "TLS"

    .line 50
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->NULL_TRUST:[Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 54
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method createSocket()Ljavax/net/ssl/SSLSocket;
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 69
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionSocketFactory;->MANDATORY_CIPHERS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
