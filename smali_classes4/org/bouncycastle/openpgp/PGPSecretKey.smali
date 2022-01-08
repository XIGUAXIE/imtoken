.class public Lorg/bouncycastle/openpgp/PGPSecretKey;
.super Ljava/lang/Object;


# instance fields
.field pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

.field secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;->certifiedPublicKey(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p4

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ZLorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-static {p4, p1, p2, p5, p3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->buildSecretKeyPacket(ZLorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)Lorg/bouncycastle/bcpg/SecretKeyPacket;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    return-void
.end method

.method private static buildSecretKeyPacket(ZLorg/bouncycastle/openpgp/PGPPrivateKey;Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)Lorg/bouncycastle/bcpg/SecretKeyPacket;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/bcpg/BCPGObject;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v6, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v10, v4, [B

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v12, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v0, v4, [B

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v6, v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v10

    if-eqz v2, :cond_4

    invoke-interface/range {p4 .. p4}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/16 v1, 0xfe

    const/16 v9, 0xfe

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "only SHA1 supported for key checksum calculations."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0xff

    const/16 v9, 0xff

    :goto_1
    if-eqz p0, :cond_5

    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v7, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_5
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v7, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_6
    if-eqz p0, :cond_7

    new-instance v1, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    iget-object v7, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    return-object v1

    :cond_7
    new-instance v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    iget-object v7, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->publicPk:Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v2, "Exception encrypting key"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static certifiedPublicKey(ILorg/bouncycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;

    invoke-direct {v0, p5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/bouncycastle/openpgp/operator/PGPContentSignerBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPrivateKey()Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p5

    invoke-virtual {v0, p0, p5}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->init(ILorg/bouncycastle/openpgp/PGPPrivateKey;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    invoke-virtual {v0, p4}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->setUnhashedSubpackets(Lorg/bouncycastle/openpgp/PGPSignatureSubpacketVector;)V

    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/bouncycastle/openpgp/PGPSignatureGenerator;->generateCertification(Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->addCertification(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/lang/String;Lorg/bouncycastle/openpgp/PGPSignature;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception doing certification: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "creating signature generator: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checksum digest calculation failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq p0, p2, :cond_1

    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [B

    shr-int/lit8 p1, v1, 0x8

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    int-to-byte p1, v1

    const/4 p2, 0x1

    aput-byte p1, p0, p2

    return-object p0
.end method

.method public static copyWithNewPassword(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object v8

    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v9

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v2

    const/4 v12, 0x4

    if-ge v2, v12, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getKey()[B

    move-result-object v13

    array-length v2, v8

    new-array v14, v2, [B

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getHashAlgorithm()I

    move-result v2

    if-ne v2, v10, :cond_3

    move-object v15, v1

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    if-eq v6, v12, :cond_2

    aget-byte v1, v8, v16

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v16, 0x1

    aget-byte v3, v8, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v5, v1, 0x8

    aget-byte v1, v8, v16

    aput-byte v1, v14, v16

    aget-byte v1, v8, v2

    aput-byte v1, v14, v2

    if-nez v6, :cond_1

    add-int/lit8 v1, v16, 0x2

    invoke-virtual {v7, v13, v8, v1, v5}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[BII)[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v15

    move/from16 v18, v5

    move/from16 v17, v6

    goto :goto_1

    :cond_1
    array-length v1, v15

    new-array v3, v1, [B

    array-length v2, v15

    sub-int v2, v16, v2

    invoke-static {v14, v2, v3, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v16, 0x2

    move-object/from16 v1, p2

    move-object v2, v13

    move-object v4, v8

    move/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[B[BII)[B

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v16, 0x2

    array-length v3, v1

    invoke-static {v1, v11, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v18, 0x2

    add-int v16, v16, v5

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_2
    aget-byte v1, v8, v16

    aput-byte v1, v14, v16

    add-int/lit8 v16, v16, 0x1

    aget-byte v1, v8, v16

    aput-byte v1, v14, v16

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v11

    move-object/from16 v16, v1

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "MD5 Digest Calculator required for version 3 key encryptor."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v1, v8

    invoke-virtual {v7, v8, v11, v1}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([BII)[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getCipherIV()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getAlgorithm()I

    move-result v11

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v18, v8

    :goto_2
    move v15, v9

    move v14, v11

    goto :goto_5

    :cond_5
    :goto_3
    iget-object v2, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_6

    array-length v2, v8

    add-int/lit8 v2, v2, -0x12

    new-array v3, v2, [B

    add-int/lit8 v4, v2, -0x2

    invoke-static {v8, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v5

    aget-byte v6, v5, v11

    aput-byte v6, v3, v4

    sub-int/2addr v2, v10

    aget-byte v4, v5, v10

    aput-byte v4, v3, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v16

    move-object/from16 v18, v3

    goto :goto_4

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v16

    move-object/from16 v18, v8

    :goto_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    iget-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    instance-of v2, v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    if-eqz v2, :cond_7

    new-instance v2, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v13

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    goto :goto_6

    :cond_7
    new-instance v2, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v13

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;IILorg/bouncycastle/bcpg/S2K;[B[B)V

    :goto_6
    new-instance v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v1

    :cond_8
    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "no private key in this SecretKey - public key present only."

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object v9

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    if-eqz v2, :cond_a

    :try_start_0
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v2

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ne v2, v10, :cond_5

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v4

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v3

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v8, v9

    move-object/from16 v2, p1

    move-object v6, v9

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v2

    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2KUsage()I

    move-result v3

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0, v11}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->getChecksumCalculator(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v3, :cond_2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x14

    goto :goto_2

    :cond_2
    array-length v3, v2

    sub-int/2addr v3, v11

    :goto_2
    invoke-static {v0, v2, v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->checksum(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;[BI)[B

    move-result-object v0

    :goto_3
    array-length v3, v0

    if-eq v12, v3, :cond_4

    aget-byte v3, v0, v12

    array-length v4, v2

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v12

    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checksum mismatch at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v9, v2

    goto/16 :goto_7

    :cond_5
    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getS2K()Lorg/bouncycastle/bcpg/S2K;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v13

    array-length v14, v9

    new-array v15, v14, [B

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v2

    array-length v8, v2

    new-array v7, v8, [B

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getIV()[B

    move-result-object v2

    invoke-static {v2, v12, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_4
    if-eq v6, v10, :cond_7

    aget-byte v2, v9, v16

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v16, 0x1

    aget-byte v4, v9, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v17, v2, 0x8

    aget-byte v2, v9, v16

    aput-byte v2, v15, v16

    aget-byte v2, v9, v3

    aput-byte v2, v15, v3

    iget-object v2, v1, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v3

    add-int/lit8 v5, v16, 0x2

    move-object/from16 v2, p1

    move-object v4, v13

    move/from16 v18, v5

    move-object v5, v7

    move v10, v6

    move-object v6, v9

    move-object v11, v7

    move/from16 v7, v18

    move/from16 v19, v8

    move/from16 v8, v17

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object v2

    array-length v3, v2

    move/from16 v4, v18

    invoke-static {v2, v12, v15, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    const/4 v2, 0x3

    if-eq v10, v2, :cond_6

    move/from16 v2, v19

    sub-int v3, v16, v2

    invoke-static {v9, v3, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_6
    move/from16 v2, v19

    :goto_5
    add-int/lit8 v6, v10, 0x1

    move v8, v2

    move-object v7, v11

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto :goto_4

    :cond_7
    aget-byte v0, v9, v16

    aput-byte v0, v15, v16

    add-int/lit8 v0, v16, 0x1

    aget-byte v2, v9, v0

    aput-byte v2, v15, v0

    aget-byte v2, v9, v16

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x2

    add-int/lit8 v4, v14, -0x2

    if-ge v12, v4, :cond_8

    aget-byte v4, v15, v12

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_8
    const v3, 0xffff

    and-int/2addr v2, v3

    if-ne v2, v0, :cond_9

    move-object v9, v15

    goto :goto_7

    :cond_9
    new-instance v3, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checksum mismatch: passphrase wrong, expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " found "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/openpgp/PGPException;

    const-string v3, "Exception decrypting key"

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    throw v0

    :cond_a
    :goto_7
    return-object v9
.end method

.method private static getDValue(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-static {p0, p2}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "protected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-static {p0, p2}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->parseS2K(Ljava/io/InputStream;)Lorg/bouncycastle/bcpg/S2K;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {p1, p2}, Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;->createDecryptor(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object v2

    const/4 p0, 0x7

    invoke-virtual {v2, p0, v0}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B

    move-result-object v4

    const/4 v3, 0x7

    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->recoverKeyData(I[B[B[BII)[B

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-static {p1}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p1, p0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    invoke-static {p1, p0}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "protected block not found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseSecretKeyFromSExpr(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protected-private-key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getDValue(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v6, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v5}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    invoke-direct {p1, v6, p2}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "no q value found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "no curve details found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "unknown key type found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseSecretKeyFromSExpr(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protected-private-key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NIST "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    new-instance v8, Lorg/bouncycastle/bcpg/PublicKeyPacket;

    const/16 v2, 0x13

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/ECNamedCurveTable;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V

    invoke-direct {v8, v2, v3, v4}, Lorg/bouncycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/bouncycastle/bcpg/BCPGKey;)V

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getDValue(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/PBEProtectionRemoverFactory;Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v0, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v7, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;->getEncoded()[B

    move-result-object v7

    move-object v2, v0

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/bcpg/SecretKeyPacket;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;ILorg/bouncycastle/bcpg/S2K;[B[B)V

    new-instance p0, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {p0, v8, p2}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object p1

    :cond_1
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "no q value found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "no curve details found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string p1, "unknown key type found"

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replacePublicKey(Lorg/bouncycastle/openpgp/PGPSecretKey;Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyIDs do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->trustPk:Lorg/bouncycastle/bcpg/TrustPacket;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->keySigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/UserIDPacket;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->ids:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    new-instance v3, Lorg/bouncycastle/bcpg/UserAttributePacket;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;->toSubpacketArray()[Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/bcpg/UserAttributePacket;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idTrusts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/bcpg/ContainedPacket;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v2, v2, Lorg/bouncycastle/openpgp/PGPPublicKey;->idSigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object v0, v0, Lorg/bouncycastle/openpgp/PGPPublicKey;->subSigs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public extractPrivateKey(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isPrivateKeyEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->extractKeyData(Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;)[B

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/bcpg/BCPGInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/ECSecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    :pswitch_1
    new-instance p1, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/DSASecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    :pswitch_2
    new-instance p1, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V

    return-object v1

    :cond_1
    new-instance p1, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/bcpg/RSASecretBCPGKey;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    new-instance v1, Lorg/bouncycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0, p1}, Lorg/bouncycastle/openpgp/PGPPrivateKey;-><init>(JLorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/BCPGKey;)V
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getEncAlgorithm()I

    move-result v0

    return v0
.end method

.method public getKeyID()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    return-object v0
.end method

.method public getUserAttributes()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserAttributes()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getUserIDs()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isMasterKey()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->isMasterKey()Z

    move-result v0

    return v0
.end method

.method public isPrivateKeyEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->secret:Lorg/bouncycastle/bcpg/SecretKeyPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getSecretKeyData()[B

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSigningKey()Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKey;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
