.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->countCircuitsSupportingTarget(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

.field final synthetic val$needClean:Z

.field final synthetic val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;ZLcom/subgraph/orchid/data/exitpolicy/ExitTarget;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$needClean:Z

    iput-object p3, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 5

    .line 186
    instance-of v0, p1, Lcom/subgraph/orchid/ExitCircuit;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/subgraph/orchid/ExitCircuit;

    .line 190
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isPending()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 191
    :goto_1
    iget-boolean v4, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$needClean:Z

    if-eqz v4, :cond_4

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isClean()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 192
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$2;->val$target:Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/ExitCircuit;->canHandleExitTo(Lcom/subgraph/orchid/data/exitpolicy/ExitTarget;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method
