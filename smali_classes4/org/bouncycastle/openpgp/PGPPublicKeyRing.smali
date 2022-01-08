.class public Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
.super Lorg/bouncycastle/openpgp/PGPKeyRing;


# instance fields
.field keys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyRing;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->wrap(Ljava/io/InputStream;)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public key ring doesn\'t start with public key tag: tag 0x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readOptionalTrustPacket(Lorg/bouncycastle/bcpg/BCPGInputStream;)Lorg/bouncycastle/bcpg/TrustPacket;

    move-result-object v4

    invoke-static {p1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readSignaturesAndTrust(Lorg/bouncycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v6, v7, v8}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readUserIDs(Lorg/bouncycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    new-instance v10, Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-object v2, v10

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readSubkey(Lorg/bouncycastle/bcpg/BCPGInputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyRing;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static insertPublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v5

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot add a master key to a ring that already has one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    new-instance p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static readSubkey(Lorg/bouncycastle/bcpg/BCPGInputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readOptionalTrustPacket(Lorg/bouncycastle/bcpg/BCPGInputStream;)Lorg/bouncycastle/bcpg/TrustPacket;

    move-result-object v1

    invoke-static {p0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->readSignaturesAndTrust(Lorg/bouncycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v2, v0, v1, p0, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object v2
.end method

.method public static removePublicKey(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v0
.end method

.method public getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
