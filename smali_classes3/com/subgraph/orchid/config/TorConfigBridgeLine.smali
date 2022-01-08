.class public Lcom/subgraph/orchid/config/TorConfigBridgeLine;
.super Ljava/lang/Object;
.source "TorConfigBridgeLine.java"


# instance fields
.field private final address:Lcom/subgraph/orchid/data/IPv4Address;

.field private final fingerprint:Lcom/subgraph/orchid/data/HexDigest;

.field private final port:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 14
    iput p2, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->port:I

    .line 15
    iput-object p3, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->fingerprint:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/subgraph/orchid/config/TorConfigBridgeLine;->port:I

    return v0
.end method
