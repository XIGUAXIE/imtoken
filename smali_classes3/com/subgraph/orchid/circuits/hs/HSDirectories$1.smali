.class Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;
.super Ljava/lang/Object;
.source "HSDirectories.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/hs/HSDirectories;->refreshFromDirectory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/subgraph/orchid/Router;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/hs/HSDirectories;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDirectories;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)I
    .locals 0

    .line 95
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 93
    check-cast p1, Lcom/subgraph/orchid/Router;

    check-cast p2, Lcom/subgraph/orchid/Router;

    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDirectories$1;->compare(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Router;)I

    move-result p1

    return p1
.end method
