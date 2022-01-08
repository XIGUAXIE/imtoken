.class public Lcom/subgraph/orchid/crypto/HybridEncryption;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static final PK_DATA_LEN:I = 0x56

.field private static final PK_DATA_LEN_WITH_KEY:I = 0x46

.field private static final PK_ENC_LEN:I = 0x80

.field private static final PK_PAD_LEN:I = 0x2a


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    .line 42
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B
    .locals 2

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPrivateKey;->getRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 139
    iget-object p2, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 143
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 141
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 2

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    iget-object p2, p0, Lcom/subgraph/orchid/crypto/HybridEncryption;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 89
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 87
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public decrypt([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B
    .locals 6

    .line 105
    array-length v0, p1

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 108
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v1, [B

    .line 113
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 114
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->decryptSimple([BLcom/subgraph/orchid/crypto/TorPrivateKey;)[B

    move-result-object p1

    const/16 p2, 0x10

    new-array v0, p2, [B

    .line 120
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 121
    new-array v5, v1, [B

    .line 122
    invoke-static {p1, v4, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {p1, p2, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    add-int p1, v1, v2

    .line 130
    new-array p1, p1, [B

    .line 131
    invoke-static {v5, v4, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    invoke-static {v3, v4, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 106
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string p2, "Message is too short"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 5

    .line 59
    array-length v0, p1

    const/16 v1, 0x56

    if-ge v0, v1, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createWithRandomKey()Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v0

    new-array v1, v1, [B

    .line 65
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->getKeyBytes()[B

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x46

    .line 66
    invoke-static {p1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-direct {p0, v1, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encryptSimple([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object p2

    .line 70
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    .line 71
    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {v0, v3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 76
    array-length p1, p2

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 77
    array-length v0, p2

    invoke-static {p2, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length p2, p2

    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
