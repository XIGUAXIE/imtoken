.class public Lim/imkey/imkeylibrary/core/foundation/crypto/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptByCBC([B[B[B)[B
    .locals 6

    .line 21
    sget-object v4, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CBC:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES;->doAES([B[B[BILim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static doAES([B[B[BILim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;Ljava/lang/String;)[B
    .locals 3

    .line 26
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CBC:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    if-ne p4, v0, :cond_0

    const-string p4, "CBC"

    goto :goto_0

    :cond_0
    const-string p4, "CTR"

    .line 32
    :goto_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object p5, v1, p4

    .line 35
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 40
    :catchall_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p1, "imkey_aes_exception"

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encryptByCBC([B[B[B)[B
    .locals 6

    .line 17
    sget-object v4, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CBC:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    const/4 v3, 0x1

    const-string v5, "PKCS5Padding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES;->doAES([B[B[BILim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
