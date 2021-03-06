.class Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;
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
    name = "MaskFilter"
.end annotation


# instance fields
.field private final bits:I

.field private final mask:I

.field private final network:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->bits:I

    .line 40
    invoke-static {p2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->createMask(I)I

    move-result p2

    iput p2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    .line 41
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result p1

    iget p2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    and-int/2addr p1, p2

    iput p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    return-void
.end method

.method static createMask(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    add-int/lit8 p0, p0, -0x1

    shr-int p0, v0, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 1

    .line 45
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result p1

    .line 46
    iget v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->mask:I

    and-int/2addr p1, v0

    iget v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    iget v1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->network:I

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;->bits:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
