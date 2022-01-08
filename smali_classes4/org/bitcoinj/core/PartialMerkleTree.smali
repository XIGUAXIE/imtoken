.class public Lorg/bitcoinj/core/PartialMerkleTree;
.super Lorg/bitcoinj/core/Message;
.source "PartialMerkleTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;
    }
.end annotation


# instance fields
.field private hashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private matchedChildBits:[B

.field private transactionCount:I


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "[B",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;I)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 78
    iput-object p2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    .line 79
    iput-object p3, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    .line 80
    iput p4, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    return-void
.end method

.method public static buildFromLeaves(Lorg/bitcoinj/core/NetworkParameters;[BLjava/util/List;)Lorg/bitcoinj/core/PartialMerkleTree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "[B",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)",
            "Lorg/bitcoinj/core/PartialMerkleTree;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, v1}, Lorg/bitcoinj/core/PartialMerkleTree;->getTreeWidth(II)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    .line 94
    invoke-static/range {v1 .. v6}, Lorg/bitcoinj/core/PartialMerkleTree;->traverseAndBuild(IILjava/util/List;[BLjava/util/List;Ljava/util/List;)V

    .line 95
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    new-array p1, p1, [B

    .line 96
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 97
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {p1, v0}, Lorg/bitcoinj/core/Utils;->setBitLE([BI)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Lorg/bitcoinj/core/PartialMerkleTree;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v0, p0, p1, v8, p2}, Lorg/bitcoinj/core/PartialMerkleTree;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLjava/util/List;I)V

    return-object v0
.end method

.method private static calcHash(IILjava/util/List;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)",
            "Lorg/bitcoinj/core/Sha256Hash;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 158
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/core/Sha256Hash;

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p1, p1, 0x2

    .line 162
    invoke-static {p0, p1, p2}, Lorg/bitcoinj/core/PartialMerkleTree;->calcHash(IILjava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 165
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p0}, Lorg/bitcoinj/core/PartialMerkleTree;->getTreeWidth(II)I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 166
    invoke-static {p0, p1, p2}, Lorg/bitcoinj/core/PartialMerkleTree;->calcHash(IILjava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 170
    :goto_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lorg/bitcoinj/core/PartialMerkleTree;->combineLeftRight([B[B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method private static combineLeftRight([B[B)Lorg/bitcoinj/core/Sha256Hash;
    .locals 6

    .line 217
    invoke-static {p0}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v0

    .line 218
    invoke-static {p1}, Lorg/bitcoinj/core/Utils;->reverseBytes([B)[B

    move-result-object v3

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x20

    .line 216
    invoke-static/range {v0 .. v5}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([BII[BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    return-object p0
.end method

.method private static getTreeWidth(II)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    add-int/2addr p0, v1

    sub-int/2addr p0, v0

    shr-int/2addr p0, p1

    return p0
.end method

.method private recursiveExtractHashes(IILorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)",
            "Lorg/bitcoinj/core/Sha256Hash;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 185
    iget v0, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_6

    .line 189
    iget v0, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    invoke-static {v1, v0}, Lorg/bitcoinj/core/Utils;->checkBitLE([BI)Z

    move-result v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p2, p2, 0x2

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/PartialMerkleTree;->recursiveExtractHashes(IILorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    .line 203
    iget v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    invoke-static {v1, p1}, Lorg/bitcoinj/core/PartialMerkleTree;->getTreeWidth(II)I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/PartialMerkleTree;->recursiveExtractHashes(IILorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    .line 205
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Invalid merkle tree with duplicated left/right branches"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object p1, v0

    .line 211
    :goto_0
    invoke-static {v0, p1}, Lorg/bitcoinj/core/PartialMerkleTree;->combineLeftRight([B[B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    return-object p1

    .line 192
    :cond_3
    :goto_1
    iget p2, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 196
    iget-object p2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    iget v1, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p3, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Sha256Hash;

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 198
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p2

    .line 194
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "PartialMerkleTree overflowed its hash array"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_6
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "PartialMerkleTree overflowed its bits array"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static traverseAndBuild(IILjava/util/List;[BLjava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;[B",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)V"
        }
    .end annotation

    shl-int v0, p1, p0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    shl-int/2addr v1, p0

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 134
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    invoke-static {p3, v0}, Lorg/bitcoinj/core/Utils;->checkBitLE([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 141
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sub-int/2addr p0, v2

    mul-int/lit8 p1, p1, 0x2

    move v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 149
    invoke-static/range {v3 .. v8}, Lorg/bitcoinj/core/PartialMerkleTree;->traverseAndBuild(IILjava/util/List;[BLjava/util/List;Ljava/util/List;)V

    add-int/lit8 v4, p1, 0x1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1, p0}, Lorg/bitcoinj/core/PartialMerkleTree;->getTreeWidth(II)I

    move-result p1

    if-ge v4, p1, :cond_4

    move v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 151
    invoke-static/range {v3 .. v8}, Lorg/bitcoinj/core/PartialMerkleTree;->traverseAndBuild(IILjava/util/List;[BLjava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 144
    :cond_3
    :goto_2
    invoke-static {p0, p1, p2}, Lorg/bitcoinj/core/PartialMerkleTree;->calcHash(IILjava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 106
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Sha256Hash;

    .line 108
    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 111
    iget-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 271
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/PartialMerkleTree;

    .line 272
    iget v2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    iget v3, p1, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    iget-object v3, p1, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    iget-object p1, p1, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    .line 273
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getTransactionCount()I
    .locals 1

    .line 264
    iget v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    return v0
.end method

.method public getTxnHashAndMerkleRoot(Ljava/util/List;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;)",
            "Lorg/bitcoinj/core/Sha256Hash;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 236
    iget v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    if-eqz v0, :cond_5

    const/16 v1, 0x411a

    if-gt v0, v1, :cond_4

    .line 242
    iget-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    if-gt v0, v1, :cond_3

    .line 245
    iget-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 249
    :goto_0
    iget v2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    invoke-static {v2, v1}, Lorg/bitcoinj/core/PartialMerkleTree;->getTreeWidth(II)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    new-instance v2, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;-><init>(Lorg/bitcoinj/core/PartialMerkleTree$1;)V

    .line 253
    invoke-direct {p0, v1, v0, v2, p1}, Lorg/bitcoinj/core/PartialMerkleTree;->recursiveExtractHashes(IILorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;Ljava/util/List;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 255
    iget v0, v2, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget v0, v2, Lorg/bitcoinj/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    .line 257
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object p1

    .line 258
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "Got a CPartialMerkleTree that didn\'t need all the data it provided"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "Got a CPartialMerkleTree with fewer matched bits than hashes"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "Got a CPartialMerkleTree with more hashes than transactions"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "Got a CPartialMerkleTree with more transactions than is possible"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "Got a CPartialMerkleTree with 0 transactions"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 278
    iget v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/bitcoinj/core/PartialMerkleTree;->readUint32()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    .line 118
    invoke-virtual {p0}, Lorg/bitcoinj/core/PartialMerkleTree;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/bitcoinj/core/PartialMerkleTree;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PartialMerkleTree;->readVarInt()J

    move-result-wide v0

    long-to-int v1, v0

    .line 124
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/PartialMerkleTree;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    .line 126
    iget v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/PartialMerkleTree;->length:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PartialMerkleTree{transactionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->transactionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", matchedChildBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->matchedChildBits:[B

    .line 285
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/PartialMerkleTree;->hashes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
