.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityFilter"
.end annotation


# instance fields
.field private final identity:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
