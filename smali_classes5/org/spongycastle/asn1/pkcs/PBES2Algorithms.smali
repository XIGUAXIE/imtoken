.class public Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;
.super Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private scheme:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 25
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 27
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 33
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    return-void
.end method


# virtual methods
.method public getASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 71
    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public getEncryptionScheme()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public getKeyDerivationFunc()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
