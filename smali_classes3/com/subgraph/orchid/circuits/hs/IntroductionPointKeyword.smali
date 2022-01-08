.class public final enum Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
.super Ljava/lang/Enum;
.source "IntroductionPointKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SERVICE_AUTHENTICATION"

    const-string v4, "service-authentication"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v3, 0x1

    const-string v4, "INTRODUCTION_POINT"

    const-string v5, "introduction-point"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 6
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v4, "IP_ADDRESS"

    const-string v5, "ip-address"

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 7
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v4, 0x3

    const-string v5, "ONION_PORT"

    const-string v6, "onion-port"

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v5, 0x4

    const-string v6, "ONION_KEY"

    const-string v7, "onion-key"

    invoke-direct {v0, v6, v5, v7, v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v6, 0x5

    const-string v7, "SERVICE_KEY"

    const-string v8, "service-key"

    invoke-direct {v0, v7, v6, v8, v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v7, 0x6

    const-string v8, "INTRO_AUTHENTICATION"

    const-string v9, "intro-authentication"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN_KEYWORD"

    const-string v10, "KEYWORD NOT FOUND"

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 3
    sget-object v10, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v10, v9, v2

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v2, v9, v3

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v2, v9, v1

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v9, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v9, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v9, v6

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->keyword:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->argumentCount:I

    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 5

    .line 30
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->values()[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 1

    .line 3
    const-class v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 1

    .line 3
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
