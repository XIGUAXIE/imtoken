.class public Lorg/spongycastle/jce/netscape/NetscapeCertRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "NetscapeCertRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field content:Lorg/spongycastle/asn1/DERBitString;

.field keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field pubkey:Ljava/security/PublicKey;

.field sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field sigBits:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 139
    iput-object p3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 141
    new-instance p2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    new-instance p3, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {p3, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    :try_start_0
    new-instance p1, Lorg/spongycastle/asn1/DERBitString;

    new-instance p3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p3, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p3}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    iput-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    .line 91
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 101
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 107
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;

    .line 113
    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 116
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 119
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 120
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid PKAC (len): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SPKAC (size):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private getKeySpec()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 267
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 269
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getReq([B)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSigningAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-void
.end method

.method public setKeyAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-void
.end method

.method public setSigningAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public sign(Ljava/security/PrivateKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 233
    invoke-virtual {v0, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 240
    :goto_0
    new-instance p1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 242
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    new-instance p2, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {p2, v1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 247
    :try_start_0
    new-instance p2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string p1, "DER"

    invoke-virtual {p2, p1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    return-void

    :catch_0
    move-exception p1

    .line 251
    new-instance p2, Ljava/security/SignatureException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 283
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 284
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 288
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    new-instance v2, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 298
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 299
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 301
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SC"

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {p1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 211
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/Signature;->update([B)V

    .line 213
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {p1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
