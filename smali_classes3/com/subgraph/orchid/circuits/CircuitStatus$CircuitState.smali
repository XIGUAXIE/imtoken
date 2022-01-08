.class final enum Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
.super Ljava/lang/Enum;
.source "CircuitStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/CircuitStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CircuitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

.field public static final enum UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v1, 0x0

    const-string v2, "UNCONNECTED"

    const-string v3, "Unconnected"

    invoke-direct {v0, v2, v1, v3}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v2, 0x1

    const-string v3, "BUILDING"

    const-string v4, "Building"

    invoke-direct {v0, v3, v2, v4}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    const-string v5, "Failed"

    invoke-direct {v0, v4, v3, v5}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v4, 0x3

    const-string v5, "OPEN"

    const-string v6, "Open"

    invoke-direct {v0, v5, v4, v6}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v5, 0x4

    const-string v6, "DESTROYED"

    const-string v7, "Destroyed"

    invoke-direct {v0, v6, v5, v7}, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->DESTROYED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    .line 7
    sget-object v7, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->UNCONNECTED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->BUILDING:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->FAILED:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->OPEN:Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->$VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    .locals 1

    .line 7
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;
    .locals 1

    .line 7
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->$VALUES:[Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitStatus$CircuitState;->name:Ljava/lang/String;

    return-object v0
.end method
