.class Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;
.super Ljava/lang/Object;
.source "CircuitManagerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/CircuitManagerImpl$CircuitFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getPendingCircuits()Ljava/util/Set;
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

    .line 159
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitManagerImpl$1;->this$0:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Circuit;)Z
    .locals 0

    .line 161
    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->isPending()Z

    move-result p1

    return p1
.end method
