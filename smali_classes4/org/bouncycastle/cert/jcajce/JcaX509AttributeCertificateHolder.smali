.class public Lorg/bouncycastle/cert/jcajce/JcaX509AttributeCertificateHolder;
.super Lorg/bouncycastle/cert/X509AttributeCertificateHolder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V

    return-void
.end method
