.class public Lcom/subgraph/orchid/data/IPv4Address;
.super Ljava/lang/Object;
.source "IPv4Address.java"


# instance fields
.field private final addressData:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 12
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-static {p0}, Lcom/subgraph/orchid/data/IPv4Address;->parseStringToAddressData(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    return-object v0
.end method

.method public static isValidIPv4AddressString(Ljava/lang/String;)Z
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static octetStringToInt(Ljava/lang/String;)I
    .locals 3

    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    return v0

    .line 30
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Octet out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse octet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStringToAddressData(Ljava/lang/String;)I
    .locals 7

    const-string v0, "\\."

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_0

    .line 20
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, p0, v2

    .line 21
    invoke-static {v5}, Lcom/subgraph/orchid/data/IPv4Address;->octetStringToInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    aget v4, v0, v4

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return v3

    :array_0
    .array-data 4
        0x18
        0x10
        0x8
        0x0
    .end array-data
.end method

.method public static stringFormat(I)Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 87
    :cond_0
    instance-of v1, p1, Lcom/subgraph/orchid/data/IPv4Address;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lcom/subgraph/orchid/data/IPv4Address;

    .line 90
    iget p1, p1, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    iget v1, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAddressData()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    return v0
.end method

.method public getAddressDataBytes()[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 58
    iget v1, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v1, v1, 0x4

    .line 97
    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget v0, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->stringFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
