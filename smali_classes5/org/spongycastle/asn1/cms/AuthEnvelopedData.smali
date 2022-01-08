.class public Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AuthEnvelopedData.java"


# instance fields
.field private authAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private mac:Lorg/spongycastle/asn1/ASN1OctetString;

.field private originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

.field private unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 83
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 89
    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 92
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 94
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v1, 0x3

    .line 95
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v1, v2

    const/4 v3, 0x3

    .line 100
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    add-int/lit8 v1, v3, 0x1

    .line 102
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    add-int/lit8 v2, v1, 0x1

    .line 105
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 106
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 108
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    add-int/lit8 v1, v2, 0x1

    .line 109
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    .line 118
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 120
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 122
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 123
    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/cms/EncryptedContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 57
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 61
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 68
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 70
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 72
    iput-object p6, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
    .locals 3

    if-eqz p0, :cond_2

    .line 165
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AuthEnvelopedData: "

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

    .line 167
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
    .locals 0

    .line 146
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getAuthEncryptedContentInfo()Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 218
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 220
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v2, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 228
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 235
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 243
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
