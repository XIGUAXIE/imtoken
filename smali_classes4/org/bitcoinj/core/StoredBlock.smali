.class public Lorg/bitcoinj/core/StoredBlock;
.super Ljava/lang/Object;
.source "StoredBlock.java"


# static fields
.field public static final CHAIN_WORK_BYTES:I = 0xc

.field public static final COMPACT_SERIALIZED_SIZE:I = 0x60

.field public static final EMPTY_BYTES:[B


# instance fields
.field private chainWork:Ljava/math/BigInteger;

.field private header:Lorg/bitcoinj/core/Block;

.field private height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 43
    sput-object v0, Lorg/bitcoinj/core/StoredBlock;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bitcoinj/core/StoredBlock;->header:Lorg/bitcoinj/core/Block;

    .line 52
    iput-object p2, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    .line 53
    iput p3, p0, Lorg/bitcoinj/core/StoredBlock;->height:I

    return-void
.end method

.method public static deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 137
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 138
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v2, 0x51

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x50

    .line 141
    invoke-virtual {p1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 142
    new-instance p1, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/MessageSerializer;->makeBlock([B)Lorg/bitcoinj/core/Block;

    move-result-object p0

    invoke-direct {p1, p0, v1, v0}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    return-object p1
.end method


# virtual methods
.method public build(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/StoredBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    iget v1, p0, Lorg/bitcoinj/core/StoredBlock;->height:I

    add-int/lit8 v1, v1, 0x1

    .line 105
    new-instance v2, Lorg/bitcoinj/core/StoredBlock;

    invoke-direct {v2, p1, v0, v1}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/StoredBlock;

    .line 89
    iget-object v2, p0, Lorg/bitcoinj/core/StoredBlock;->header:Lorg/bitcoinj/core/Block;

    iget-object v3, p1, Lorg/bitcoinj/core/StoredBlock;->header:Lorg/bitcoinj/core/Block;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/Block;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/bitcoinj/core/StoredBlock;->height:I

    iget p1, p1, Lorg/bitcoinj/core/StoredBlock;->height:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getChainWork()Ljava/math/BigInteger;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHeader()Lorg/bitcoinj/core/Block;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bitcoinj/core/StoredBlock;->header:Lorg/bitcoinj/core/Block;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/bitcoinj/core/StoredBlock;->height:I

    return v0
.end method

.method public getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getPrevBlockHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bitcoinj/store/BlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lorg/bitcoinj/core/StoredBlock;->header:Lorg/bitcoinj/core/Block;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/core/StoredBlock;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public moreWorkThan(Lorg/bitcoinj/core/StoredBlock;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bitcoinj/core/StoredBlock;->chainWork:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public serializeCompact(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 120
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getChainWork()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 121
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Ran out of space to store chain work!"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 122
    array-length v1, v0

    if-ge v1, v3, :cond_1

    .line 124
    sget-object v1, Lorg/bitcoinj/core/StoredBlock;->EMPTY_BYTES:[B

    array-length v4, v0

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 126
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->unsafeBitcoinSerialize()[B

    move-result-object v0

    const/16 v1, 0x50

    .line 131
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 147
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Block;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "Block %s at height %d: %s"

    .line 147
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
