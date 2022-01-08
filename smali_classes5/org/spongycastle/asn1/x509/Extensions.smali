.class public Lorg/spongycastle/asn1/x509/Extensions;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Extensions.java"


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Extension;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    .line 71
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/Extension;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 85
    aget-object v1, p1, v0

    .line 87
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/Extension;->getExtnId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getExtensionOIDs(Z)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    .line 196
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 198
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/x509/Extension;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v3, p1, :cond_0

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/x509/Extensions;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/Extensions;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/Extensions;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    return-object p0
.end method

.method private toOidArray(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 4

    .line 213
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equivalent(Lorg/spongycastle/asn1/x509/Extensions;)Z
    .locals 5

    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 166
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 170
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getCriticalExtensionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/x509/Extension;

    return-object p1
.end method

.method public getExtensionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->toOidArray(Ljava/util/Vector;)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionParsedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/x509/Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNonCriticalExtensionOIDs()[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionOIDs(Z)[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 142
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 143
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 145
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x509/Extension;

    .line 150
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
