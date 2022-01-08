.class public Lcom/pusher/client/util/internal/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CHAR_INDEX_TABLE:[C

.field private static charToIndexSparseMappingArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/pusher/client/util/internal/Base64;->CHAR_INDEX_TABLE:[C

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 11
    sput-object v0, Lcom/pusher/client/util/internal/Base64;->charToIndexSparseMappingArray:[I

    const/4 v1, -0x1

    .line 14
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 15
    :goto_0
    sget-object v1, Lcom/pusher/client/util/internal/Base64;->CHAR_INDEX_TABLE:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 16
    sget-object v2, Lcom/pusher/client/util/internal/Base64;->charToIndexSparseMappingArray:[I

    aget-char v1, v1, v0

    aput v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9

    const-string v0, "=="

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v3, v0

    new-array v0, v3, [B

    const/4 v4, 0x0

    .line 31
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/pusher/client/util/internal/Base64;->toInt(C)I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    .line 33
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/pusher/client/util/internal/Base64;->toInt(C)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    shl-int/2addr v5, v2

    shr-int/lit8 v8, v6, 0x4

    or-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 34
    aput-byte v5, v0, v4

    if-lt v7, v3, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v4, v1, 0x2

    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/pusher/client/util/internal/Base64;->toInt(C)I

    move-result v4

    add-int/lit8 v5, v7, 0x1

    shl-int/lit8 v6, v6, 0x4

    shr-int/lit8 v8, v4, 0x2

    or-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 39
    aput-byte v6, v0, v7

    if-lt v5, v3, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v6, v1, 0x3

    .line 43
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/pusher/client/util/internal/Base64;->toInt(C)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 44
    aput-byte v4, v0, v5

    add-int/lit8 v1, v1, 0x4

    move v4, v7

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static toInt(C)I
    .locals 3

    .line 21
    sget-object v0, Lcom/pusher/client/util/internal/Base64;->charToIndexSparseMappingArray:[I

    aget v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
