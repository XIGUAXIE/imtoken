.class public final Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
.super Ljava/lang/Object;
.source "SessionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/SessionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private masterSecret:[B

.field private peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    .line 15
    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    .line 17
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    return-void
.end method

.method private validate(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required session parameter \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not configured"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/tls/SessionParameters;
    .locals 9

    .line 26
    iget v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "cipherSuite"

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 27
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "compressionAlgorithm"

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "masterSecret"

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->validate(ZLjava/lang/String;)V

    .line 29
    new-instance v0, Lorg/spongycastle/crypto/tls/SessionParameters;

    iget v3, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    iget-short v4, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[BLorg/spongycastle/crypto/tls/SessionParameters$1;)V

    return-object v0
.end method

.method public setCipherSuite(I)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0

    .line 35
    iput p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->cipherSuite:I

    return-object p0
.end method

.method public setCompressionAlgorithm(S)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0

    .line 41
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->compressionAlgorithm:S

    return-object p0
.end method

.method public setMasterSecret([B)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->masterSecret:[B

    return-object p0
.end method

.method public setPeerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object p0
.end method

.method public setServerExtensions(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->encodedServerExtensions:[B

    :goto_0
    return-object p0
.end method
