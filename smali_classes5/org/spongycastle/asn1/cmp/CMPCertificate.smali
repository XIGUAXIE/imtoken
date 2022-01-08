.class public Lorg/spongycastle/asn1/cmp/CMPCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMPCertificate.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private x509v2AttrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

.field private x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v2AttrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only version 3 certificates allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CMPCertificate;
    .locals 3

    if-eqz p0, :cond_4

    .line 39
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_3

    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V

    return-object v0

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0

    .line 41
    :cond_4
    :goto_1
    check-cast p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    return-object p0
.end method


# virtual methods
.method public getX509v2AttrCert()Lorg/spongycastle/asn1/x509/AttributeCertificate;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v2AttrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    return-object v0
.end method

.method public getX509v3PKCert()Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public isX509v3PKCert()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v2AttrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v2AttrCert:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
