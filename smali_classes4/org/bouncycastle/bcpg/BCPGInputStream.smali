.class public Lorg/bouncycastle/bcpg/BCPGInputStream;
.super Ljava/io/InputStream;

# interfaces
.implements Lorg/bouncycastle/bcpg/PacketTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;
    }
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field next:Z

.field nextB:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public nextPacketTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextB:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextB:I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextB:I

    if-ltz v0, :cond_2

    and-int/lit8 v1, v0, 0x40

    and-int/lit8 v0, v0, 0x3f

    if-eqz v1, :cond_1

    return v0

    :cond_1
    shr-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextB:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_1
    iget p3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextB:I

    if-gez p3, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput-boolean v0, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->next:Z

    const/4 p1, 0x1

    return p1
.end method

.method public readAll()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public readPacket()Lorg/bouncycastle/bcpg/Packet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_b

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    const/16 v4, 0xc0

    if-ge v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v5, 0xdf

    if-gt v1, v5, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    add-int/lit16 v1, v1, -0xc0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    goto :goto_3

    :cond_3
    const/16 v4, 0xff

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/bcpg/BCPGInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v1, 0x1f

    shl-int v1, v3, v1

    move v2, v1

    goto :goto_4

    :cond_5
    and-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x3f

    const/4 v4, 0x2

    shr-int/2addr v0, v4

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown length type encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v3

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    :goto_3
    move v2, v1

    const/4 v3, 0x0

    :goto_4
    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    move-object v1, p0

    goto :goto_5

    :cond_a
    new-instance v1, Lorg/bouncycastle/bcpg/BCPGInputStream;

    new-instance v4, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;

    invoke-direct {v4, p0, v3, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream$PartialInputStream;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;ZI)V

    invoke-direct {v1, v4}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_5
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown packet type encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v2, Lorg/bouncycastle/bcpg/ExperimentalPacket;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/bcpg/ExperimentalPacket;-><init>(ILorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v2

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/bcpg/ModDetectionCodePacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/ModDetectionCodePacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SymmetricEncIntegrityPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/UserAttributePacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/UserIDPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/bouncycastle/bcpg/TrustPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/TrustPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/LiteralDataPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lorg/bouncycastle/bcpg/MarkerPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MarkerPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_9
    new-instance v0, Lorg/bouncycastle/bcpg/SymmetricEncDataPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SymmetricEncDataPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/bouncycastle/bcpg/CompressedDataPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/CompressedDataPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/OnePassSignaturePacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lorg/bouncycastle/bcpg/SignaturePacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/SignaturePacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/InputStreamPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid header encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
