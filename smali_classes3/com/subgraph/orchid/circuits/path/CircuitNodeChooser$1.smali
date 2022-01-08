.class Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;
.super Ljava/lang/Object;
.source "CircuitNodeChooser.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseDirectory()Lcom/subgraph/orchid/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$1;->this$0:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 0

    .line 41
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getDirectoryPort()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
