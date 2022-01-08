.class Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;
.super Ljava/lang/Object;
.source "CircuitPathChooser.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;->chooseEntryNode(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

.field final synthetic val$excludedRouters:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;Ljava/util/Set;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;->this$0:Lcom/subgraph/orchid/circuits/path/CircuitPathChooser;

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;->val$excludedRouters:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 1

    .line 90
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/CircuitPathChooser$1;->val$excludedRouters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
