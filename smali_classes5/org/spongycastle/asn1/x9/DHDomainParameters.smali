.class public Lorg/spongycastle/asn1/x9/DHDomainParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lorg/spongycastle/asn1/ASN1Integer;

.field private j:Lorg/spongycastle/asn1/ASN1Integer;

.field private p:Lorg/spongycastle/asn1/ASN1Integer;

.field private q:Lorg/spongycastle/asn1/ASN1Integer;

.field private validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/asn1/x9/DHValidationParms;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    .line 59
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    .line 60
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p1, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    .line 61
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p1, p4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    .line 62
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'q\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'g\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'p\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x9/DHValidationParms;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 81
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    .line 82
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    .line 83
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    .line 84
    iput-object p4, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    .line 85
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'q\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'g\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'p\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 96
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    .line 97
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    .line 98
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    .line 100
    invoke-static {p1}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 104
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    .line 105
    invoke-static {p1}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 3

    if-eqz p0, :cond_2

    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

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

    .line 30
    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object p0

    return-object p0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 116
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getG()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getJ()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getP()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getQ()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getValidationParms()Lorg/spongycastle/asn1/x9/DHValidationParms;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 146
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 147
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
