.class Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;
.super Ljava/lang/Object;
.source "TorDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/discovery/TorDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lookup"
.end annotation


# instance fields
.field final address:Ljava/net/InetAddress;

.field final router:Lcom/subgraph/orchid/Router;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/Router;Ljava/net/InetAddress;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;->router:Lcom/subgraph/orchid/Router;

    .line 95
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/TorDiscovery$Lookup;->address:Ljava/net/InetAddress;

    return-void
.end method
