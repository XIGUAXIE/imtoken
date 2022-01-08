.class public Lcom/subgraph/orchid/data/exitpolicy/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field public static final ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;


# instance fields
.field private final maskValue:I

.field private final network:Lcom/subgraph/orchid/data/IPv4Address;

.field private final originalString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/Network;

    const-string v1, "0.0.0.0"

    invoke-static {v1}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "*"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->network:Lcom/subgraph/orchid/data/IPv4Address;

    .line 31
    invoke-static {p2}, Lcom/subgraph/orchid/data/exitpolicy/Network;->createMask(I)I

    move-result p1

    iput p1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    .line 32
    iput-object p3, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->originalString:Ljava/lang/String;

    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;
    .locals 5

    const-string v0, "/"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    .line 11
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 12
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/Network;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V

    return-object v0

    .line 14
    :cond_0
    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 18
    :try_start_0
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 19
    new-instance v4, Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-direct {v4, v1, v2, p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 21
    :catch_0
    new-instance p0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid netblock mask bit value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network CIDR notation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMask(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    add-int/lit8 p0, p0, -0x1

    shr-int p0, v0, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(Lcom/subgraph/orchid/data/IPv4Address;)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result p1

    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->network:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    and-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->originalString:Ljava/lang/String;

    return-object v0
.end method
