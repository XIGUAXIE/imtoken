.class public Lorg/bouncycastle/openpgp/examples/PubringDump;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithm(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "DIFFIE_HELLMAN"

    return-object p0

    :pswitch_1
    const-string p0, "ELGAMAL_GENERAL"

    return-object p0

    :pswitch_2
    const-string p0, "ECDSA"

    return-object p0

    :pswitch_3
    const-string p0, "EC"

    return-object p0

    :pswitch_4
    const-string p0, "DSA"

    return-object p0

    :pswitch_5
    const-string p0, "ELGAMAL_ENCRYPT"

    return-object p0

    :cond_0
    const-string p0, "RSA_SIGN"

    return-object p0

    :cond_1
    const-string p0, "RSA_ENCRYPT"

    return-object p0

    :cond_2
    const-string p0, "RSA_GENERAL"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "BC"

    invoke-static {v0}, Lorg/bouncycastle/openpgp/PGPUtil;->setDefaultProvider(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;

    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRingCollection;->getKeyRings()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->getPublicKeys()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/openpgp/PGPPublicKey;

    const-string v4, "Key ID: "

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (subkey)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "            Algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/openpgp/examples/PubringDump;->getAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "            Fingerprint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getFingerprint()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
