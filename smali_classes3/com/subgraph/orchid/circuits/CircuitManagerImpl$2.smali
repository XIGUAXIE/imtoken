.class Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getRandomlyOrderedListOfExitCircuits()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$2;->this$0:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 1

    .line 197
    instance-of v0, p1, Lcom/subgraph/orchid/ExitCircuit;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isMarkedForClose()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
