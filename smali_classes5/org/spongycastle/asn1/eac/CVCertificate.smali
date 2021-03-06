.class public Lorg/spongycastle/asn1/eac/CVCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CVCertificate.java"


# static fields
.field public static ReferenceEncoding:Ljava/lang/String; = "ISO-8859-1"

.field private static bodyValid:I = 0x1

.field private static signValid:I = 0x2

.field public static final version_1:B


# instance fields
.field private certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 92
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 122
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/eac/CertificateBody;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 135
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    .line 136
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    .line 138
    iget p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    .line 139
    sget p2, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CVCertificate;
    .locals 3

    .line 150
    instance-of v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 158
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERApplicationSpecific;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/eac/CVCertificate;-><init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    instance-of v1, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    .line 47
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_4

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 51
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 54
    instance-of v1, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_2

    .line 56
    check-cast p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 57
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CertificateBody;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    .line 61
    iget p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    .line 65
    iget p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    .line 79
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/spongycastle/asn1/eac/CertificateBody;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorizationRights()Lorg/spongycastle/asn1/eac/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Lorg/spongycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    return v0
.end method

.method public getSignature()[B
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 195
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 197
    iget v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    sget v3, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 205
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 209
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
