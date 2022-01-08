.class public Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;
.super Ljava/lang/Object;
.source "TorNTorKeyAgreement.java"

# interfaces
.implements Lcom/subgraph/orchid/crypto/TorKeyAgreement;


# static fields
.field static final AUTH_INPUT_LEN:I = 0xb2

.field static final CURVE25519_OUTPUT_LEN:I = 0x20

.field public static final CURVE25519_PUBKEY_LEN:I = 0x20

.field static final DIGEST256_LEN:I = 0x20

.field static final DIGEST_LEN:I = 0x14

.field static final KEY_LEN:I = 0x10

.field static final NTOR_ONIONSKIN_LEN:I = 0x54

.field static final PROTOID:Ljava/lang/String; = "ntor-curve25519-sha256-1"

.field static final SECRET_INPUT_LEN:I = 0xcc

.field static final SERVER_STR:Ljava/lang/String; = "Server"

.field static final cs:Ljava/nio/charset/Charset;


# instance fields
.field private isBad:Z

.field private final peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

.field private final peerNTorOnionKey:[B

.field private final publicKey_X:[B

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private final secretKey_x:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/data/HexDigest;[B)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 34
    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    .line 35
    iput-object p2, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    .line 36
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->generateSecretKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->secretKey_x:[B

    .line 37
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->getPublicKeyForPrivate([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    return-void
.end method

.method private buildAuthInput([B[B)[B
    .locals 1

    .line 109
    sget v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->AUTH_INPUT_LEN:I

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 112
    iget-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    iget-object p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    sget-object p1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    const-string p2, "ntor-curve25519-sha256-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 116
    sget-object p1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    const-string p2, "Server"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private buildSecretInput([B)[B
    .locals 2

    .line 97
    sget v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->SECRET_INPUT_LEN:I

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->scalarMult([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->scalarMult([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const-string p1, "ntor-curve25519-sha256-1"

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private makeBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 50
    new-array p1, p1, [B

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private scalarMult([B)[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 122
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->secretKey_x:[B

    invoke-static {v0, v1, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult([B[B[B)I

    .line 123
    iget-boolean p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isAllZero([B)Z

    move-result v1

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    return-object v0
.end method


# virtual methods
.method public createOnionSkin()[B
    .locals 2

    const/16 v0, 0x54

    .line 42
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerIdentity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->peerNTorOnionKey:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->publicKey_X:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeysFromHandshakeResponse([B[B[B)Z
    .locals 3

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    .line 73
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x20

    new-array v1, v0, [B

    new-array v0, v0, [B

    .line 76
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->buildSecretInput([B)[B

    move-result-object p1

    const-string v2, "verify"

    .line 80
    invoke-virtual {p0, v2, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 81
    invoke-direct {p0, v2, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->buildAuthInput([B[B)[B

    move-result-object v1

    const-string v2, "mac"

    .line 82
    invoke-virtual {p0, v2, v1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 83
    iget-boolean v2, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    invoke-static {v1, v0}, Lcom/subgraph/orchid/misc/Utils;->constantTimeArrayEquals([B[B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    const-string v0, "key_extract"

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->tweak(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 86
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;-><init>([B)V

    .line 87
    invoke-virtual {v0, p2, p3}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->deriveKeys([B[B)V

    .line 89
    iget-boolean p1, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->isBad:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method generateSecretKey()[B
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    .line 57
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 58
    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getNtorCreateMagic()[B
    .locals 2

    .line 93
    sget-object v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    const-string v1, "ntorNTORntorNTOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method getPublicKeyForPrivate([B)[B
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 64
    invoke-static {v0, p1}, Lcom/subgraph/orchid/crypto/Curve25519;->crypto_scalarmult_base([B[B)I

    return-object v0
.end method

.method getStringConstant(Ljava/lang/String;)[B
    .locals 2

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ntor-curve25519-sha256-1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 154
    :cond_1
    :goto_0
    sget-object p1, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->cs:Ljava/nio/charset/Charset;

    const-string v0, "ntor-curve25519-sha256-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method hmac256([B[B)[B
    .locals 3

    const-string v0, "Failed to create HmacSHA256 instance: "

    .line 140
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    :try_start_0
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 143
    invoke-virtual {p2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 144
    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 148
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 146
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method isAllZero([B)Z
    .locals 6

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-byte v5, p1, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method tweak(Ljava/lang/String;[B)[B
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->getStringConstant(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/subgraph/orchid/crypto/TorNTorKeyAgreement;->hmac256([B[B)[B

    move-result-object p1

    return-object p1
.end method
