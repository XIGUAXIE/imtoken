.class public Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;
.super Ljava/lang/Object;


# instance fields
.field private checksumCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

.field private hashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

.field private keyEncryptor:Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

.field private keySignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

.field keys:Ljava/util/List;

.field private masterKey:Lorg/bouncycastle/openpgp/PGPKeyPair;

.field private unhashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    move-object v4, p2

    iput-object v4, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/bouncycastle/openpgp/PGPKeyPair;

    move-object/from16 v10, p8

    iput-object v10, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-object/from16 v6, p4

    iput-object v6, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-object/from16 v9, p7

    iput-object v9, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    move-object/from16 v7, p5

    iput-object v7, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    move-object/from16 v8, p6

    iput-object v8, v0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    new-instance v11, Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-object v2, v11

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSubKey(Lorg/bouncycastle/openpgp/PGPKeyPair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->hashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->unhashedPcks:Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->addSubKey(Lorg/bouncycastle/openpgp/PGPKeyPair;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    return-void
.end method

.method public addSubKey(Lorg/bouncycastle/openpgp/PGPKeyPair;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keySignerBuilder:Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/16 v1, 0x18

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/bouncycastle/openpgp/PGPKeyPair;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->masterKey:Lorg/bouncycastle/openpgp/PGPKeyPair;

    invoke-virtual {p3}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;)V

    iget-object p1, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->checksumCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keyEncryptor:Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/openpgp/PGPException;

    const-string p3, "exception adding subkey: "

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public generatePublicKeyRing()Lorg/bouncycastle/openpgp/PGPPublicKeyRing;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    new-instance v3, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v4

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    invoke-virtual {v6}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    iput-object v3, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public generateSecretKeyRing()Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPKeyRingGenerator;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object v0
.end method
