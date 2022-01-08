.class Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/CircuitBuildHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/CircuitManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryCircuitResult"
.end annotation


# instance fields
.field private isFailed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;-><init>()V

    return-void
.end method


# virtual methods
.method public circuitBuildCompleted(Lcom/subgraph/orchid/Circuit;)V
    .locals 0

    return-void
.end method

.method public circuitBuildFailed(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    return-void
.end method

.method public connectionCompleted(Lcom/subgraph/orchid/Connection;)V
    .locals 0

    return-void
.end method

.method public connectionFailed(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    return-void
.end method

.method isSuccessful()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$DirectoryCircuitResult;->isFailed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nodeAdded(Lcom/subgraph/orchid/CircuitNode;)V
    .locals 0

    return-void
.end method
