.class public Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;
.super Ljava/lang/Object;
.source "TorRFC5869KeyDerivation.java"


# static fields
.field private static final M_EXPAND:Ljava/lang/String; = "ntor-curve25519-sha256-1:key_expand"

.field private static final M_EXPAND_BYTES:[B

.field private static final PROTOID:Ljava/lang/String; = "ntor-curve25519-sha256-1"


# instance fields
.field private final seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "ntor-curve25519-sha256-1:key_expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->seed:[B

    .line 21
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private createMacInstance()Ljavax/crypto/Mac;
    .locals 4

    const-string v0, "Could not create HmacSHA256 instance: "

    .line 68
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->seed:[B

    const-string v3, "HmacSHA256"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    :try_start_0
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 76
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private expandRound(I[B)[B
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 50
    sget-object p2, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    array-length p2, p2

    add-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object p2, v0

    .line 55
    :goto_0
    sget-object v0, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->M_EXPAND_BYTES:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->createMacInstance()Ljavax/crypto/Mac;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private makeBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 63
    new-array p1, p1, [B

    .line 64
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deriveKeys(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->makeBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->expandRound(I[B)[B

    move-result-object v1

    .line 36
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public deriveKeys([B[B)V
    .locals 2

    .line 25
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/TorRFC5869KeyDerivation;->deriveKeys(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method
