.class public Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "MQVuserKeyingMaterial.java"


# instance fields
.field private addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

.field private ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OriginatorPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 47
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorPublicKey;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .locals 3

    if-eqz p0, :cond_2

    .line 84
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MQVuserKeyingMaterial: "

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

    .line 86
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAddedukm()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getEphemeralPublicKey()Lorg/spongycastle/asn1/cms/OriginatorPublicKey;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->ephemeralPublicKey:Lorg/spongycastle/asn1/cms/OriginatorPublicKey;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->addedukm:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 117
    new-instance v2, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
