.class public Lorg/spongycastle/asn1/cms/AuthenticatedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AuthenticatedData.java"


# instance fields
.field private authAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encapsulatedContentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private mac:Lorg/spongycastle/asn1/ASN1OctetString;

.field private macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

.field private unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 96
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 98
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v1, 0x3

    .line 99
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v1, v2

    const/4 v3, 0x3

    .line 102
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    add-int/lit8 v1, v3, 0x1

    .line 103
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v2, v1, 0x1

    .line 105
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 107
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 109
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v1, v2, 0x1

    .line 110
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    .line 113
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    add-int/lit8 v1, v2, 0x1

    .line 115
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 117
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_2

    .line 119
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    add-int/lit8 v2, v1, 0x1

    .line 120
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    move v4, v2

    move-object v2, v1

    move v1, v4

    .line 123
    :cond_2
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 125
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 127
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/cms/ContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-nez p4, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    .line 72
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-static {p1}, Lorg/spongycastle/asn1/cms/AuthenticatedData;->calculateVersion(Lorg/spongycastle/asn1/cms/OriginatorInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 74
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 75
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 78
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 79
    iput-object p6, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 80
    iput-object p7, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 81
    iput-object p8, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-void

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "digestAlgorithm and authAttrs must be set together"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static calculateVersion(Lorg/spongycastle/asn1/cms/OriginatorInfo;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getCertificates()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    .line 272
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 274
    instance-of v5, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v5, :cond_1

    .line 276
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 278
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v0, 0x3

    .line 290
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getCRLs()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 292
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getCRLs()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 296
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_4

    .line 298
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 300
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    return v4
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthenticatedData;
    .locals 3

    if-eqz p0, :cond_2

    .line 163
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lorg/spongycastle/asn1/cms/AuthenticatedData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AuthenticatedData: "

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

    .line 165
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/AuthenticatedData;
    .locals 0

    .line 144
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/AuthenticatedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthenticatedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 226
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 228
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 230
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 232
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 236
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    .line 240
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 245
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 247
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 252
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 254
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 257
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
