.class public final enum Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
.super Ljava/lang/Enum;
.source "HSDescriptorKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "RENDEZVOUS_SERVICE_DESCRIPTOR"

    const-string v4, "rendezvous-service-descriptor"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v3, "VERSION"

    const-string v4, "version"

    invoke-direct {v0, v3, v1, v4, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 6
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v3, 0x2

    const-string v4, "PERMANENT_KEY"

    const-string v5, "permanent-key"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 7
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v4, 0x3

    const-string v5, "SECRET_ID_PART"

    const-string v6, "secret-id-part"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v5, 0x4

    const-string v6, "PUBLICATION_TIME"

    const-string v7, "publication-time"

    invoke-direct {v0, v6, v5, v7, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v6, 0x5

    const-string v7, "PROTOCOL_VERSIONS"

    const-string v8, "protocol-versions"

    invoke-direct {v0, v7, v6, v8, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v7, 0x6

    const-string v8, "INTRODUCTION_POINTS"

    const-string v9, "introduction-points"

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/4 v8, 0x7

    const-string v9, "SIGNATURE"

    const-string v10, "signature"

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/16 v9, 0x8

    const-string v10, "UNKNOWN_KEYWORD"

    const-string v11, "KEYWORD NOT FOUND"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 3
    sget-object v11, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v11, v10, v2

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v2, v10, v1

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v6

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v7

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->keyword:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->argumentCount:I

    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 5

    .line 31
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 1

    .line 3
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 1

    .line 3
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
