.class public Lorg/spongycastle/asn1/x9/KeySpecificInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "KeySpecificInfo.java"


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private counter:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounter()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 61
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 64
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 66
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
