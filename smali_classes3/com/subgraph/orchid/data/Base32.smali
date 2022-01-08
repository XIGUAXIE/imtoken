.class public Lcom/subgraph/orchid/data/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final BASE32_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz234567"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base32Decode(Ljava/lang/String;)[B
    .locals 7

    .line 31
    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->stringToIntVector(Ljava/lang/String;)[I

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    .line 34
    rem-int/lit8 v1, p0, 0x8

    if-nez v1, :cond_1

    .line 37
    div-int/lit8 p0, p0, 0x8

    .line 38
    new-array v1, p0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 42
    div-int/lit8 v4, v3, 0x5

    .line 43
    aget v5, v0, v4

    add-int/lit8 v6, v4, 0x1

    aget v6, v0, v6

    add-int/lit8 v4, v4, 0x2

    aget v4, v0, v4

    invoke-static {v3, v5, v6, v4}, Lcom/subgraph/orchid/data/Base32;->decodeByte(IIII)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 35
    :cond_1
    new-instance p0, Lcom/subgraph/orchid/TorException;

    const-string v0, "Base32 decoded array must be a muliple of 8 bits"

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static base32Encode([B)Ljava/lang/String;
    .locals 2

    .line 9
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/subgraph/orchid/data/Base32;->base32Encode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static base32Encode([BII)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p2, p2, 0x8

    .line 14
    rem-int/lit8 p1, p2, 0x5

    if-nez p1, :cond_2

    .line 17
    div-int/lit8 p1, p2, 0x5

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 21
    div-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x5

    if-ge v5, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 22
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v4, v3

    .line 23
    :cond_0
    rem-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0xb

    shr-int v2, v4, v2

    and-int/lit8 v2, v2, 0x1f

    const-string v3, "abcdefghijklmnopqrstuvwxyz234567"

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    new-instance p0, Lcom/subgraph/orchid/TorException;

    const-string p1, "Base32 input length must be a multiple of 5 bits"

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decodeByte(IIII)I
    .locals 5

    .line 50
    rem-int/lit8 p0, p0, 0x28

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p0, v2, :cond_3

    const/16 v2, 0x10

    if-eq p0, v2, :cond_2

    const/16 v2, 0x18

    if-eq p0, v2, :cond_1

    const/16 p3, 0x20

    if-ne p0, p3, :cond_0

    const/4 p0, 0x5

    .line 60
    invoke-static {p1, p0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p0

    and-int/lit16 p1, p2, 0xff

    :goto_0
    add-int/2addr p0, p1

    return p0

    .line 62
    :cond_0
    new-instance p0, Lcom/subgraph/orchid/TorException;

    const-string p1, "Illegal bit offset"

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x7

    .line 58
    invoke-static {p1, p0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p0

    invoke-static {p2, v0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p3, v1}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result p1

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p1, v3}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p0

    invoke-static {p2, v4}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    .line 54
    invoke-static {p1, p0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p0

    invoke-static {p2, v4}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p3, v3}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result p1

    goto :goto_0

    .line 52
    :cond_4
    invoke-static {p1, v1}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result p0

    invoke-static {p2, v0}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result p1

    goto :goto_0
.end method

.method private static ls(II)I
    .locals 0

    shl-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static rs(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static stringToIntVector(Ljava/lang/String;)[I
    .locals 4

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x60

    if-le v2, v3, :cond_0

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x61

    .line 78
    aput v2, v0, v1

    goto :goto_1

    :cond_0
    const/16 v3, 0x31

    if-le v2, v3, :cond_1

    const/16 v3, 0x38

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x18

    .line 80
    aput v2, v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x40

    if-le v2, v3, :cond_2

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x41

    .line 82
    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character in base32 encoded string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method
