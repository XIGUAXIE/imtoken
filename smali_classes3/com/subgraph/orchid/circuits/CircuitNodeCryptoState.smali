.class public Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;
.super Ljava/lang/Object;
.source "CircuitNodeCryptoState.java"


# static fields
.field public static final KEY_MATERIAL_SIZE:I = 0x48


# instance fields
.field private final backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

.field private final backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private final checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private final forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

.field private final forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;


# direct methods
.method private constructor <init>([B[B)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p2}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

    .line 38
    new-instance p2, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {p2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractDigestBytes([BI)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 42
    new-instance p2, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {p2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    const/16 v0, 0x14

    .line 43
    invoke-static {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractDigestBytes([BI)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    const/16 p2, 0x28

    .line 46
    invoke-static {p1, p2}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractCipherKey([BI)[B

    move-result-object p2

    invoke-static {p2}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object p2

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    const/16 p2, 0x38

    .line 49
    invoke-static {p1, p2}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractCipherKey([BI)[B

    move-result-object p1

    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    return-void
.end method

.method public static createFromKeyMaterial([B[B)Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;
    .locals 1

    .line 13
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;-><init>([B[B)V

    return-object v0
.end method

.method private static extractCipherKey([BI)[B
    .locals 3

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 30
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static extractDigestBytes([BI)[B
    .locals 3

    const/16 v0, 0x14

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 24
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private extractRelayDigest(Lcom/subgraph/orchid/Cell;)[B
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x8

    .line 92
    invoke-interface {p1, v4}, Lcom/subgraph/orchid/Cell;->getByteAt(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 93
    invoke-interface {p1, v4, v2}, Lcom/subgraph/orchid/Cell;->putByteAt(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private isRecognizedCell(Lcom/subgraph/orchid/Cell;)Z
    .locals 9

    const/4 v0, 0x4

    .line 74
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getShortAt(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->extractRelayDigest(Lcom/subgraph/orchid/Cell;)[B

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v6, v5}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->peekDigest([BII)[B

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 80
    aget-byte v7, v1, v4

    aget-byte v8, v3, v4

    if-eq v7, v8, :cond_1

    .line 81
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2, v6, v5}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([BII)V

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V

    const/4 p1, 0x1

    return p1
.end method

.method private replaceRelayDigest(Lcom/subgraph/orchid/Cell;[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x8

    .line 100
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-interface {p1, v1, v2}, Lcom/subgraph/orchid/Cell;->putByteAt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method decryptBackwardCell(Lcom/subgraph/orchid/Cell;)Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->backwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x1fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    .line 62
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->isRecognizedCell(Lcom/subgraph/orchid/Cell;)Z

    move-result p1

    return p1
.end method

.method encryptForwardCell(Lcom/subgraph/orchid/Cell;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardCipher:Lcom/subgraph/orchid/crypto/TorStreamCipher;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object p1

    const/4 v1, 0x3

    const/16 v2, 0x1fd

    invoke-virtual {v0, p1, v1, v2}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([BII)V

    return-void
.end method

.method getForwardDigestBytes()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method updateForwardDigest(Lcom/subgraph/orchid/Cell;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->forwardDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object p1

    const/4 v1, 0x3

    const/16 v2, 0x1fd

    invoke-virtual {v0, p1, v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([BII)V

    return-void
.end method

.method verifyPacketDigest(Lcom/subgraph/orchid/data/HexDigest;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitNodeCryptoState;->checksumDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
