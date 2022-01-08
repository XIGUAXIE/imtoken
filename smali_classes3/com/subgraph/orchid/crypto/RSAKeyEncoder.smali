.class public Lcom/subgraph/orchid/crypto/RSAKeyEncoder;
.super Ljava/lang/Object;
.source "RSAKeyEncoder.java"


# static fields
.field private static final FOOTER:Ljava/lang/String; = "-----END RSA PUBLIC KEY-----"

.field private static final HEADER:Ljava/lang/String; = "-----BEGIN RSA PUBLIC KEY-----"


# instance fields
.field private final asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/ASN1Parser;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    return-void
.end method

.method private asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;
    .locals 1

    .line 90
    instance-of v0, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;

    .line 94
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private asn1ObjectToBitString(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)[B
    .locals 1

    .line 110
    instance-of v0, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;

    .line 114
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1BitString;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            "I)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;",
            ">;"
        }
    .end annotation

    .line 99
    instance-of v0, p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    if-eqz v0, :cond_1

    .line 100
    check-cast p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;

    .line 101
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Sequence;->getItems()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private createKeyFromModulusAndExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p1, "RSA"

    .line 49
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    return-object p1
.end method

.method private decodeAsciiArmoredPEM(Ljava/lang/String;)[B
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->removeDelimiters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private extractPKCS1KeyFromSubjectPublicKeyInfo([B)[B
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object p1

    const/4 v0, 0x2

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBitString(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)[B

    move-result-object p1

    return-object p1
.end method

.method private removeDelimiters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "-----BEGIN RSA PUBLIC KEY-----"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "-----END RSA PUBLIC KEY-----"

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    if-le v1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1e

    .line 128
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PEM object not formatted with expected header and footer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getPKCS1Encoded(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 0

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->extractPKCS1KeyFromSubjectPublicKeyInfo([B)[B

    move-result-object p1

    return-object p1
.end method

.method public parsePEMPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->decodeAsciiArmoredPEM(Ljava/lang/String;)[B

    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1Parser:Lcom/subgraph/orchid/crypto/ASN1Parser;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/crypto/ASN1Parser;->parseASN1(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    move-result-object p1

    const/4 v0, 0x2

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToSequence(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->asn1ObjectToBigInt(Lcom/subgraph/orchid/crypto/ASN1Parser$ASN1Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->createKeyFromModulusAndExponent(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 43
    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method
