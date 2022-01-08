.class public Lcom/subgraph/orchid/data/HexDigest;
.super Ljava/lang/Object;
.source "HexDigest.java"


# instance fields
.field private final digestBytes:[B

.field private final isDigest256:Z


# direct methods
.method private constructor <init>([B)V
    .locals 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    array-length v0, p1

    const/16 v1, 0x14

    const/16 v2, 0x20

    if-eq v0, v1, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Digest data is not the correct length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    .line 67
    array-length v0, v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/subgraph/orchid/data/HexDigest;->isDigest256:Z

    .line 68
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static createDigestForData([B)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 54
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 56
    new-instance p0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object p0
.end method

.method public static createFromBase32String(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 38
    new-instance v0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v0
.end method

.method public static createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 50
    new-instance v0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 3

    const-string v0, " "

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/subgraph/orchid/data/HexDigest;->createFromStringList(Ljava/util/List;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p0

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 46
    new-instance v0, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/HexDigest;-><init>([B)V

    return-object v0
.end method

.method public static createFromStringList(Ljava/util/List;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subgraph/orchid/data/HexDigest;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p0

    return-object p0
.end method

.method private stripTrailingEquals(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 125
    instance-of v0, p1, Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 127
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/data/HexDigest;

    .line 128
    iget-object p1, p1, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getRawBytes()[B
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    .line 135
    iget-object v2, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isDigest256()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/subgraph/orchid/data/HexDigest;->isDigest256:Z

    return v0
.end method

.method public toBase32()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v0}, Lcom/subgraph/orchid/data/Base32;->base32Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBase64(Z)Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Base64;->encode([B)[B

    move-result-object v1

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/data/HexDigest;->stripTrailingEquals(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public toSpacedString()Ljava/lang/String;
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 95
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 96
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_0

    const/16 v3, 0x20

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/subgraph/orchid/data/HexDigest;->digestBytes:[B

    invoke-static {v1}, Lcom/subgraph/orchid/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
