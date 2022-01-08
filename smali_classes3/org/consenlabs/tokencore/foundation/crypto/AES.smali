.class public Lorg/consenlabs/tokencore/foundation/crypto/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByCBC([B[B[B)[B
    .locals 6

    .line 26
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptByCBCNoPadding([B[B[B)[B
    .locals 6

    .line 42
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    const-string v5, "NoPadding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptByCTR([B[B[B)[B
    .locals 6

    .line 18
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptByCTRNoPadding([B[B[B)[B
    .locals 6

    .line 34
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    const-string v5, "NoPadding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B
    .locals 3

    .line 47
    sget-object v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    if-ne p4, v0, :cond_0

    const-string p4, "CBC"

    goto :goto_0

    :cond_0
    const-string p4, "CTR"

    :goto_0
    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 54
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {p2, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v0

    const/4 p4, 0x1

    aput-object p5, v2, p4

    .line 56
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p3, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 59
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-array p0, v0, [B

    return-object p0
.end method

.method public static encryptByCBC([B[B[B)[B
    .locals 6

    .line 22
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x1

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByCBCNoPadding([B[B[B)[B
    .locals 6

    .line 38
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x1

    const-string v5, "NoPadding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByCTR([B[B[B)[B
    .locals 6

    .line 14
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x1

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByCTRNoPadding([B[B[B)[B
    .locals 6

    .line 30
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x1

    const-string v5, "NoPadding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/consenlabs/tokencore/foundation/crypto/AES;->doAES([B[B[BILorg/consenlabs/tokencore/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
