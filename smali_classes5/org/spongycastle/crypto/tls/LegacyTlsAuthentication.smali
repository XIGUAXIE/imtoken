.class public Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;
.super Lorg/spongycastle/crypto/tls/ServerOnlyTlsAuthentication;
.source "LegacyTlsAuthentication.java"


# instance fields
.field protected verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/ServerOnlyTlsAuthentication;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    return-void
.end method


# virtual methods
.method public notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateList()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/CertificateVerifyer;->isValid([Lorg/spongycastle/asn1/x509/Certificate;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x5a

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method
