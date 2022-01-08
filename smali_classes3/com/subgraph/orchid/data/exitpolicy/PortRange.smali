.class public Lcom/subgraph/orchid/data/exitpolicy/PortRange;
.super Ljava/lang/Object;
.source "PortRange.java"


# static fields
.field public static final ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

.field private static final MAX_PORT:I = 0xffff


# instance fields
.field private final portEnd:I

.field private final portStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    const/4 v1, 0x1

    const v2, 0xffff

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    sput-object v0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    return-void
.end method

.method constructor <init>(II)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput p1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    .line 42
    iput p2, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    .locals 5

    const-string v0, "-"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 11
    new-instance p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(I)V

    return-object p0

    .line 12
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 13
    new-instance p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    return-object p0

    .line 15
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse port range from string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isValidPort(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidRange(II)Z
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static stringToPort(Ljava/lang/String;)I
    .locals 3

    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 22
    invoke-static {v0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 23
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal port value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse port value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public rangeContains(I)Z
    .locals 1

    .line 59
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const-string v0, "*"

    return-object v0

    .line 65
    :cond_0
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    if-ne v0, v1, :cond_1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
