.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateFingerprint(Lorg/bouncycastle/bcpg/PublicKeyPacket;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getKey()Lorg/bouncycastle/bcpg/BCPGKey;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getVersion()I

    move-result v1

    const-string v2, "can\'t encode key components: "

    const/4 v3, 0x3

    if-gt v1, v3, :cond_0

    check-cast v0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;

    :try_start_0
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-virtual {p1, v0, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "can\'t find MD5"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/PublicKeyPacket;->getEncodedContents()[B

    move-result-object p1

    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v1, "can\'t find SHA1"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
