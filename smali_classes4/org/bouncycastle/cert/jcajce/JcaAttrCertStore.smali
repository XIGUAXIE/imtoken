.class public Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;
.super Lorg/bouncycastle/util/CollectionStore;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;->convertCerts(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/jcajce/JcaAttrCertStore;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private static convertCerts(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/x509/X509AttributeCertificate;

    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509AttributeCertificateHolder;

    invoke-direct {v2, v1}, Lorg/bouncycastle/cert/jcajce/JcaX509AttributeCertificateHolder;-><init>(Lorg/bouncycastle/x509/X509AttributeCertificate;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
