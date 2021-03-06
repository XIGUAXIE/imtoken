.class public Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;
.super Ljava/lang/Object;


# static fields
.field private static final ANONYMOUS_SENDER:[B


# instance fields
.field private final digCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field private final keyAlgorithm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "416E6F6E796D6F75732053656E64657220202020"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iput p2, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    return-void
.end method

.method private static KDF(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/math/ec/ECPoint;I[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p1

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    new-array p1, p2, [B

    invoke-static {p0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static getKeyLen(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown symmetric algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x18

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0
.end method


# virtual methods
.method public createKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {p1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget p1, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object p1, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->ANONYMOUS_SENDER:[B

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->digCalc:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iget p3, p0, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->keyAlgorithm:I

    invoke-static {p3}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->getKeyLen(I)I

    move-result p3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/openpgp/operator/RFC6637KDFCalculator;->KDF(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/math/ec/ECPoint;I[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception performing KDF: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
