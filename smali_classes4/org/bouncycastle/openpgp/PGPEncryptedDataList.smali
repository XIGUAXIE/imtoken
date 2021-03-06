.class public Lorg/bouncycastle/openpgp/PGPEncryptedDataList;
.super Ljava/lang/Object;


# instance fields
.field data:Lorg/bouncycastle/bcpg/InputStreamPacket;

.field list:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/InputStreamPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/openpgp/PGPPBEEncryptedData;-><init>(Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;Lorg/bouncycastle/bcpg/InputStreamPacket;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->data:Lorg/bouncycastle/bcpg/InputStreamPacket;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKeyEncryptedData;-><init>(Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;Lorg/bouncycastle/bcpg/InputStreamPacket;)V

    :goto_2
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptedDataObjects()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getEncyptedDataObjects()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPEncryptedDataList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
