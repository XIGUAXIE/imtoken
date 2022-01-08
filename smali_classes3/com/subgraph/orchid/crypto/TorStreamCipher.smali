.class public Lcom/subgraph/orchid/crypto/TorStreamCipher;
.super Ljava/lang/Object;
.source "TorStreamCipher.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field public static final KEY_LEN:I = 0x10


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final counter:[B

.field private final counterOut:[B

.field private final key:Ljavax/crypto/spec/SecretKeySpec;

.field private keystreamPointer:I


# direct methods
.method private constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B[B)V

    return-void
.end method

.method private constructor <init>([B[B)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    .line 42
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keyBytesToSecretKey([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->key:Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createCipher(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->cipher:Ljavax/crypto/Cipher;

    const/16 p1, 0x10

    new-array v0, p1, [B

    .line 44
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    new-array p1, p1, [B

    .line 45
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->applyIV([B)V

    :cond_0
    return-void
.end method

.method private applyIV([B)V
    .locals 3

    .line 53
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static createCipher(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/Cipher;
    .locals 2

    :try_start_0
    const-string v0, "AES/ECB/NoPadding"

    .line 78
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 82
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 1

    .line 21
    new-instance v0, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B)V

    return-object v0
.end method

.method public static createFromKeyBytesWithIV([B[B)Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 1

    .line 25
    new-instance v0, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B[B)V

    return-object v0
.end method

.method public static createWithRandomKey()Lcom/subgraph/orchid/crypto/TorStreamCipher;
    .locals 2

    .line 16
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->generateRandomKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;-><init>([B)V

    return-object v1
.end method

.method private encryptCounter()V
    .locals 6

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generateRandomKey()Ljavax/crypto/SecretKey;
    .locals 2

    :try_start_0
    const-string v0, "AES"

    .line 88
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 89
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 90
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private incrementCounter()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 118
    iget-object v3, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    aget-byte v3, v3, v0

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/2addr v3, v2

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 123
    :goto_1
    iget-object v4, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counter:[B

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static keyBytesToSecretKey([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    .line 73
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private nextKeystreamByte()B
    .locals 3

    .line 97
    iget v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->updateCounter()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->counterOut:[B

    iget v1, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private updateCounter()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encryptCounter()V

    .line 103
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->incrementCounter()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->keystreamPointer:I

    return-void
.end method


# virtual methods
.method public encrypt([B)V
    .locals 2

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    return-void
.end method

.method public declared-synchronized encrypt([BII)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    .line 65
    :try_start_0
    aget-byte v2, p1, v1

    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->nextKeystreamByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 66
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getKeyBytes()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorStreamCipher;->key:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
