.class public Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# static fields
.field private static final algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

.field private keyLength:Lorg/spongycastle/asn1/ASN1Integer;

.field private octStr:Lorg/spongycastle/asn1/ASN1OctetString;

.field private prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 134
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 136
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 140
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 142
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 143
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    .line 154
    :cond_1
    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    :goto_0
    if-eqz v0, :cond_2

    .line 159
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    :cond_2
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 72
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    .line 89
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    .line 108
    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 109
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>([BILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    .line 125
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .locals 1

    .line 48
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public isDefaultPrf()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 231
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 233
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 236
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
