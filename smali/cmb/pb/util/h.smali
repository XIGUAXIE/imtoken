.class public Lcmb/pb/util/h;
.super Ljava/lang/Object;


# static fields
.field static a:[B

.field static b:Ljava/lang/String;

.field static c:Ljava/security/PublicKey;

.field private static d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcmb/pb/util/h;->a:[B

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk+PFDSFypJvT2VZOvh7L3fUf52aAgtSjxZT4ifKEyj1PIDaj8FCC3880xD0chYEXg+CpkVnj9WYCfBDqeDpNYdRBSKIf2LP/26CObifDxd9VK+4VY/vsiW0qtqjuxVtLHficIjeB34FhdTve7mzXOaecepdwaRSMbzPsonIdeb3ysiSC20XYuzYmfolNVDQIgMVq8tRvacKhc65nLHRovBUTmeUa7tu+1rftsXW8/WbfsHp1YftnqFnb1V/MCtCUcmp3q3fYzxMjukS0lvIodw3zDyuC2vC9ne3ICAg60OHRbEWSKjxlvqrKNdnAYbaKgPbDwBLo2wBCC5qfFpMppQIDAQAB"

    sput-object v0, Lcmb/pb/util/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcmb/pb/util/h;->c:Ljava/security/PublicKey;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcmb/pb/util/h;->d:[C

    return-void

    :array_0
    .array-data 1
        -0x4et
        -0x46t
        0x1t
        -0x2et
        -0x52t
        0x4et
        -0x3t
        -0x5ft
        0x7t
        0xat
        0x39t
        -0x17t
        -0x3dt
        0x4bt
        -0x32t
        0x12t
        0x24t
        0x9t
        -0x23t
        -0x2bt
        -0x72t
        0x6t
        -0x75t
        0x1bt
        -0x5bt
        0x1ct
        0x50t
        0x49t
        0x64t
        -0x2t
        0x4bt
        0xet
        0x6at
        0x60t
        0x61t
        0x4at
        0x61t
        0x1t
        -0x12t
        -0x4et
        0x32t
        -0x68t
        0x4at
        0x2at
        0x47t
        -0x2t
        -0x2dt
        -0x63t
        -0x57t
        0x7dt
        0x2at
        -0x6ct
        0x63t
        0x75t
        0x30t
        0x6at
        0xdt
        -0x4ct
        0xet
        0x6ct
        0x7ct
        0x20t
        -0x1bt
        0x3ft
        -0x2bt
        0x44t
        -0x66t
        0x4dt
        0x36t
        -0x59t
        -0x55t
        0x5ct
        -0x3et
        0x53t
        0x45t
        0x28t
        -0x31t
        -0x35t
        0x48t
        -0x76t
        -0xct
        -0x7bt
        -0x79t
        -0x3bt
        0x9t
        -0x69t
        0x3dt
        0x4et
        0x70t
        -0x34t
        0x45t
        0x3at
        -0x5et
        0x6ft
        0x7t
        -0x6et
        -0x12t
        -0x5t
        -0x3ct
        0x17t
        0x67t
        0x4ft
        -0x71t
        0x16t
        0x65t
        -0x5et
        -0x23t
        -0x26t
        0x59t
        -0x25t
        0x5et
        -0x48t
        -0x69t
        -0x59t
        0x23t
        -0x58t
        0x7ft
        -0x65t
        -0x21t
        0x78t
        0x60t
        -0x5at
        -0x14t
        0x10t
        0x2at
        -0x26t
        0x17t
        -0x61t
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AAA"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcmb/pb/util/h;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcmb/pb/util/a;->b([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcmb/pb/util/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcmb/pb/util/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcmb/pb/util/h;->b([B)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p0}, Lcmb/pb/util/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcmb/pb/util/h;->a([BLjava/security/Key;)[B

    move-result-object p0

    invoke-static {p0}, Lcmb/pb/util/h;->b([B)Ljava/security/PublicKey;

    move-result-object p0

    sput-object p0, Lcmb/pb/util/h;->c:Ljava/security/PublicKey;

    return-void
.end method

.method public static a([B)[B
    .locals 3

    if-eqz p0, :cond_1

    sget-object v0, Lcmb/pb/util/h;->c:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcmb/pb/util/h;->c:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLjava/security/Key;)[B
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AAA"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    const-string v3, "1234567890"

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcmb/pb/util/h;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcmb/pb/util/a;->b([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static b([B)Ljava/security/PublicKey;
    .locals 1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method
