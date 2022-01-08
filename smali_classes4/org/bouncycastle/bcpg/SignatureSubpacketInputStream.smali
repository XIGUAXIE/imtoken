.class public Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;
.super Ljava/io/InputStream;

# interfaces
.implements Lorg/bouncycastle/bcpg/SignatureSubpacketTags;


# instance fields
.field in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private checkData([BIILjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    if-ne p3, p2, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "truncated "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " subpacket data."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readPacket()Lorg/bouncycastle/bcpg/SignatureSubpacket;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/16 v4, 0xc0

    if-ge v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0xdf

    if-gt v0, v5, :cond_2

    add-int/lit16 v0, v0, -0xc0

    shl-int/2addr v0, v3

    iget-object v5, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/16 v4, 0xff

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_15

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    new-array v6, v0, [B

    iget-object v7, p0, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->in:Ljava/io/InputStream;

    invoke-static {v7, v6}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    and-int/lit16 v8, v4, 0x80

    if-eqz v8, :cond_4

    const/4 v1, 0x1

    :cond_4
    and-int/lit8 v4, v4, 0x7f

    const/16 v5, 0x9

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq v7, v0, :cond_9

    if-eq v4, v9, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v5, :cond_6

    if-ne v4, v2, :cond_5

    const-string v0, "Issuer"

    invoke-direct {p0, v6, v3, v7, v0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v6

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "truncated subpacket data."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "Signature Key Expiration Time"

    goto :goto_1

    :cond_7
    const-string v0, "Signature Expiration Time"

    goto :goto_1

    :cond_8
    const-string v0, "Signature Creation Time"

    :goto_1
    invoke-direct {p0, v6, v10, v7, v0}, Lorg/bouncycastle/bcpg/SignatureSubpacketInputStream;->checkData([BIILjava/lang/String;)[B

    move-result-object v6

    :cond_9
    :goto_2
    if-eq v4, v9, :cond_14

    if-eq v4, v8, :cond_13

    if-eq v4, v10, :cond_12

    const/4 v0, 0x5

    if-eq v4, v0, :cond_11

    const/4 v0, 0x7

    if-eq v4, v0, :cond_10

    if-eq v4, v5, :cond_f

    const/16 v0, 0xb

    if-eq v4, v0, :cond_e

    if-eq v4, v2, :cond_d

    const/16 v0, 0x19

    if-eq v4, v0, :cond_c

    const/16 v0, 0x1b

    if-eq v4, v0, :cond_b

    const/16 v0, 0x1c

    if-eq v4, v0, :cond_a

    packed-switch v4, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/bcpg/SignatureSubpacket;

    invoke-direct {v0, v4, v1, v6}, Lorg/bouncycastle/bcpg/SignatureSubpacket;-><init>(IZ[B)V

    return-object v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/bcpg/sig/NotationData;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/NotationData;-><init>(Z[B)V

    return-object v0

    :cond_a
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignerUserID;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/SignerUserID;-><init>(Z[B)V

    return-object v0

    :cond_b
    new-instance v0, Lorg/bouncycastle/bcpg/sig/KeyFlags;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/KeyFlags;-><init>(Z[B)V

    return-object v0

    :cond_c
    new-instance v0, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/PrimaryUserID;-><init>(Z[B)V

    return-object v0

    :cond_d
    new-instance v0, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/IssuerKeyID;-><init>(Z[B)V

    return-object v0

    :cond_e
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;

    invoke-direct {v0, v4, v1, v6}, Lorg/bouncycastle/bcpg/sig/PreferredAlgorithms;-><init>(IZ[B)V

    return-object v0

    :cond_f
    new-instance v0, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/KeyExpirationTime;-><init>(Z[B)V

    return-object v0

    :cond_10
    new-instance v0, Lorg/bouncycastle/bcpg/sig/Revocable;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/Revocable;-><init>(Z[B)V

    return-object v0

    :cond_11
    new-instance v0, Lorg/bouncycastle/bcpg/sig/TrustSignature;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/TrustSignature;-><init>(Z[B)V

    return-object v0

    :cond_12
    new-instance v0, Lorg/bouncycastle/bcpg/sig/Exportable;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/Exportable;-><init>(Z[B)V

    return-object v0

    :cond_13
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/SignatureExpirationTime;-><init>(Z[B)V

    return-object v0

    :cond_14
    new-instance v0, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/bcpg/sig/SignatureCreationTime;-><init>(Z[B)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "unexpected EOF reading signature sub packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
