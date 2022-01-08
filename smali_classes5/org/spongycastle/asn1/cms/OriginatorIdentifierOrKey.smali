.class public Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OriginatorIdentifierOrKey.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private id:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 1

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorPublicKey;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 3

    if-eqz p0, :cond_5

    .line 108
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;)V

    return-object v0

    .line 118
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;)V

    return-object v0

    .line 123
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    if-eqz v0, :cond_3

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/cms/OriginatorPublicKey;)V

    return-object v0

    .line 128
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    return-object v0

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

    .line 110
    :cond_5
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object p0

    return-object p0

    .line 82
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getId()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIssuerAndSerialNumber()Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lorg/spongycastle/asn1/cms/IssuerAndSerialNumber;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginatorKey()Lorg/spongycastle/asn1/cms/OriginatorPublicKey;
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OriginatorIdentifierOrKey;->id:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
