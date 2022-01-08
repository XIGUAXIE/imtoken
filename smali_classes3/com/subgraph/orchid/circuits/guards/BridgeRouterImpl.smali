.class public Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;
.super Ljava/lang/Object;
.source "BridgeRouterImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/BridgeRouter;


# instance fields
.field private final address:Lcom/subgraph/orchid/data/IPv4Address;

.field private volatile cachedCountryCode:Ljava/lang/String;

.field private descriptor:Lcom/subgraph/orchid/Descriptor;

.field private identity:Lcom/subgraph/orchid/data/HexDigest;

.field private final port:I


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    .line 25
    iput p2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 64
    :cond_2
    check-cast p1, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    .line 65
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-nez v2, :cond_3

    .line 66
    iget-object v2, p1, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v2, :cond_4

    return v1

    .line 69
    :cond_3
    iget-object v3, p1, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/data/IPv4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 72
    :cond_4
    iget v2, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    iget p1, p1, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public exitPolicyAccepts(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getAverageBandwidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBurstBandwidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->cachedCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getInstance()Lcom/subgraph/orchid/geoip/CountryCodeService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getCountryCodeForAddress(Lcom/subgraph/orchid/data/IPv4Address;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->cachedCountryCode:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFamilyMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getFamilyMembers()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getNTorOnionKey()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObservedBandwidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnionPort()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/IPv4Address;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget v1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isBadExit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDescriptorDownloadable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHSDirectory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHibernating()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    instance-of v1, v0, Lcom/subgraph/orchid/RouterDescriptor;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->isHibernating()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPossibleGuard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDescriptor(Lcom/subgraph/orchid/RouterDescriptor;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    return-void
.end method

.method public setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bridge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
