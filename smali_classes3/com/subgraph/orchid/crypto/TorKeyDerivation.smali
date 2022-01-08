.class public Lcom/subgraph/orchid/crypto/TorKeyDerivation;
.super Ljava/lang/Object;
.source "TorKeyDerivation.java"


# instance fields
.field private final kdfBuffer:[B

.field private round:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    .line 12
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private calculateRoundData()[B
    .locals 5

    .line 34
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->kdfBuffer:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    int-to-byte v4, v3

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    .line 36
    iput v3, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    .line 37
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 38
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deriveKeys(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 21
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->round:I

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-direct {p0}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->calculateRoundData()[B

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 26
    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public deriveKeys([B[B)V
    .locals 2

    .line 15
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/crypto/TorKeyDerivation;->deriveKeys(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method
