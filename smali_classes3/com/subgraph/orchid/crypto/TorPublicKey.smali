.class public Lcom/subgraph/orchid/crypto/TorPublicKey;
.super Ljava/lang/Object;
.source "TorPublicKey.java"


# instance fields
.field private key:Ljava/security/interfaces/RSAPublicKey;

.field private keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

.field private final pemBuffer:Ljava/lang/String;

.field private rawKeyBytes:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 30
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 30
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 38
    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method private createCipherInstance()Ljavax/crypto/Cipher;
    .locals 3

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 94
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 23
    new-instance v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getCipherInstance()Ljavax/crypto/Cipher;
    .locals 2

    const-string v0, "RSA/ECB/PKCS1Padding"

    :try_start_0
    const-string v1, "SunJCE"

    .line 104
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 106
    :catch_2
    :try_start_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 111
    :goto_0
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :goto_1
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized getKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 4

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->pemBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->parsePEMPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse PEM encoded key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 124
    instance-of v0, p1, Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 126
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/crypto/TorPublicKey;

    .line 127
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized getFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRawBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createDigestForData([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->keyFingerprint:Lcom/subgraph/orchid/data/HexDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRawBytes()[B
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/RSAKeyEncoder;->getPKCS1Encoded(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorPublicKey;->rawKeyBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tor Public Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z
    .locals 0

    .line 76
    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z

    move-result p1

    return p1
.end method

.method public verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/data/HexDigest;)Z
    .locals 0

    .line 72
    invoke-virtual {p2}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z

    move-result p1

    return p1
.end method

.method public verifySignatureFromDigestBytes(Lcom/subgraph/orchid/crypto/TorSignature;[B)Z
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->createCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/TorSignature;->getSignatureBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 83
    invoke-static {p1, p2}, Lcom/subgraph/orchid/misc/Utils;->constantTimeArrayEquals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 85
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
