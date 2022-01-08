.class Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;
.super Ljava/lang/Object;
.source "CircuitCreationTask.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitCreationTask;->expireOldCircuits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitCreationTask;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitCreationTask$1;->this$0:Lcom/subgraph/orchid/circuits/CircuitCreationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 1

    .line 111
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isMarkedForClose()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->getSecondsDirty()I

    move-result p1

    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
