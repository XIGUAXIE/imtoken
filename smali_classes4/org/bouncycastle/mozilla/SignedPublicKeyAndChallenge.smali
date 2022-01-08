.class public Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private pkac:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

.field private signature:Lorg/bouncycastle/asn1/DERBitString;

.field private signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private spkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->toDERSequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    iget-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERBitString;

    iput-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->signature:Lorg/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method private static toDERSequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "badly encoded request"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "error encoding public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPublicKeyAndChallenge()Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    :try_start_0
    new-instance p1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    iget-object p1, p0, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;->signature:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "error encoding public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
