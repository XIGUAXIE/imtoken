.class public abstract Lorg/bouncycastle/bcpg/ECPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field point:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    invoke-static {p2, p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->readBytesOfEncodedLength(Lorg/bouncycastle/bcpg/BCPGInputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1, v0}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method private static decodePoint(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match any known curve."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Only prime field curves are supported."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static readBytesOfEncodedLength(Lorg/bouncycastle/bcpg/BCPGInputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([BII)V

    const/4 p0, 0x0

    const/4 v1, 0x6

    aput-byte v1, v2, p0

    const/4 p0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, p0

    return-object v2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "future extensions not yet implemented."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([BII)V

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PGP"

    return-object v0
.end method

.method public getPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
