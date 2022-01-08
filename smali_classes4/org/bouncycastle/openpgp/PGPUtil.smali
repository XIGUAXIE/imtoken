.class public Lorg/bouncycastle/openpgp/PGPUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/bcpg/HashAlgorithmTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;
    }
.end annotation


# static fields
.field private static final READ_AHEAD:I = 0x3c

.field private static defProvider:Ljava/lang/String; = "BC"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dsaSigToMpi([B)[Lorg/bouncycastle/bcpg/MPInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v4, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v4, v3, v0

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v0, v3, v2

    return-object v3

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "exception encoding signature"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public static getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPUtil$BufferedInputStreamExt;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-object p0

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/openpgp/PGPUtil;->isPossiblyBase64(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_2
    new-array v2, v0, [B

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eq v1, v0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_5

    invoke-static {v5}, Lorg/bouncycastle/openpgp/PGPUtil;->isPossiblyBase64(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_3
    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    move v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x4

    if-ge v1, v0, :cond_6

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_6
    const/16 v0, 0x8

    new-array v1, v0, [B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    :cond_7
    new-instance v0, Lorg/bouncycastle/bcpg/ArmoredInputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/bcpg/ArmoredInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static getDefaultProvider()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/openpgp/PGPUtil;->defProvider:Ljava/lang/String;

    return-object v0
.end method

.method static getDigestName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown hash algorithm tag in getDigestName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "SHA224"

    return-object p0

    :pswitch_1
    const-string p0, "SHA512"

    return-object p0

    :pswitch_2
    const-string p0, "SHA384"

    return-object p0

    :pswitch_3
    const-string p0, "SHA256"

    return-object p0

    :cond_0
    const-string p0, "MD2"

    return-object p0

    :cond_1
    const-string p0, "RIPEMD160"

    return-object p0

    :cond_2
    const-string p0, "SHA1"

    return-object p0

    :cond_3
    const-string p0, "MD5"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSignatureName(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const-string p0, "DSA"

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown algorithm tag in signature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "ElGamal"

    goto :goto_0

    :cond_2
    const-string p0, "RSA"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "with"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isPossiblyBase64(I)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeRandomKey(ILjava/security/SecureRandom;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0xc0

    const/16 v2, 0x80

    packed-switch p0, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown symmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v0, 0x40

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x80

    :goto_0
    :pswitch_3
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array p0, v0, [B

    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static pipeFileContents(Ljava/io/File;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array p0, p2, [B

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static setDefaultProvider(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/bouncycastle/openpgp/PGPUtil;->defProvider:Ljava/lang/String;

    return-void
.end method

.method public static writeFileToLiteralData(Ljava/io/OutputStream;CLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/io/File;)Ljava/io/OutputStream;

    move-result-object p0

    const/16 p1, 0x1000

    invoke-static {p2, p0, p1}, Lorg/bouncycastle/openpgp/PGPUtil;->pipeFileContents(Ljava/io/File;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static writeFileToLiteralData(Ljava/io/OutputStream;CLjava/io/File;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;Ljava/util/Date;[B)Ljava/io/OutputStream;

    move-result-object p0

    array-length p1, p3

    invoke-static {p2, p0, p1}, Lorg/bouncycastle/openpgp/PGPUtil;->pipeFileContents(Ljava/io/File;Ljava/io/OutputStream;I)V

    return-void
.end method
