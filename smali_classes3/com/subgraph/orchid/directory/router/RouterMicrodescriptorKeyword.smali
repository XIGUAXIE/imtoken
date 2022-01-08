.class public final enum Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;
.super Ljava/lang/Enum;
.source "RouterMicrodescriptorKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum A:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum FAMILY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum P:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

.field public static final VARIABLE_ARGUMENT_COUNT:I = -0x1


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v1, 0x0

    const-string v2, "ONION_KEY"

    const-string v3, "onion-key"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 5
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v2, 0x1

    const-string v3, "NTOR_ONION_KEY"

    const-string v4, "ntor-onion-key"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 6
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v3, 0x2

    const-string v4, "A"

    const-string v5, "a"

    invoke-direct {v0, v4, v3, v5, v2}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->A:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 7
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v4, 0x3

    const-string v5, "FAMILY"

    const-string v6, "family"

    invoke-direct {v0, v5, v4, v6}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 8
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v5, 0x4

    const-string v6, "P"

    const-string v7, "p"

    invoke-direct {v0, v6, v5, v7, v3}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->P:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN_KEYWORD"

    const-string v8, "KEYWORD NOT FOUNE"

    invoke-direct {v0, v7, v6, v8}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    .line 3
    sget-object v8, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    aput-object v8, v7, v1

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    aput-object v1, v7, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->A:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    aput-object v1, v7, v3

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    aput-object v1, v7, v4

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->P:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->keyword:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->argumentCount:I

    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;
    .locals 5

    .line 34
    invoke-static {}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->values()[Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;
    .locals 1

    .line 3
    const-class v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;
    .locals 1

    .line 3
    sget-object v0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
