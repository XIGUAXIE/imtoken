.class public abstract Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;


# instance fields
.field private pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/openpgp/PGPPublicKey;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown asymmetric algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use ECDSA for encryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use DSA for encryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private convertToEncodedMPI([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MPI encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method protected abstract encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p0, v3, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->encryptSessionInfo(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->processSessionInfo([B)[[B

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lorg/bouncycastle/bcpg/PublicKeyEncSessionPacket;-><init>(JI[[B)V

    return-object p1
.end method

.method public processSessionInfo([B)[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/16 v4, 0x10

    if-eq v0, v4, :cond_2

    const/16 v4, 0x12

    if-eq v0, v4, :cond_1

    const/16 v4, 0x14

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown asymmetric algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->pubKey:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array v0, v1, [[B

    aput-object p1, v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    array-length v0, p1

    div-int/2addr v0, v3

    new-array v4, v0, [B

    array-length v5, p1

    div-int/2addr v5, v3

    new-array v6, v5, [B

    invoke-static {p1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v3, [[B

    invoke-direct {p0, v4}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, v6}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    goto :goto_1

    :cond_3
    new-array v0, v1, [[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;->convertToEncodedMPI([B)[B

    move-result-object p1

    aput-object p1, v0, v2

    :goto_1
    return-object v0
.end method
