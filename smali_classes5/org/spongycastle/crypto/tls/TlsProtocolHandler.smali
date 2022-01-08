.class public Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
.super Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.source "TlsProtocolHandler.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    return-void
.end method
