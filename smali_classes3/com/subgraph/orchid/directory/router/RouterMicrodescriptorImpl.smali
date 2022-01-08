.class public Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;
.super Ljava/lang/Object;
.source "RouterMicrodescriptorImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RouterMicrodescriptor;


# instance fields
.field private acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

.field private address:Lcom/subgraph/orchid/data/IPv4Address;

.field private cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field private descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

.field private familyMembers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastListed:J

.field private ntorOnionKey:[B

.field private onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

.field private rawDocumentData:Ljava/lang/String;

.field private rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

.field private routerPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 27
    sget-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-void
.end method


# virtual methods
.method public addAcceptPorts(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createAcceptExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    return-void
.end method

.method public addFamilyMember(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRejectPorts(Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->createRejectExitPorts(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 119
    instance-of v0, p1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;

    .line 122
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public exitPolicyAccepts(I)Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rejectPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->acceptsPort(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->acceptPorts:Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;->acceptsPort(I)Z

    move-result p1

    return p1
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 0

    .line 101
    invoke-virtual {p0, p2}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->exitPolicyAccepts(I)Z

    move-result p1

    return p1
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method public getBodyLength()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
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

    .line 97
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->familyMembers:Ljava/util/Set;

    return-object v0
.end method

.method public getLastListed()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->lastListed:J

    return-wide v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->ntorOnionKey:[B

    return-object v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRawDocumentData()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterPort()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->routerPort:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValidDocument()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->address:Lcom/subgraph/orchid/data/IPv4Address;

    return-void
.end method

.method public setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->cacheLocation:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-void
.end method

.method public setDescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->descriptorDigest:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method public setLastListed(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->lastListed:J

    return-void
.end method

.method public setNtorOnionKey([B)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->ntorOnionKey:[B

    return-void
.end method

.method public setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->onionKey:Lcom/subgraph/orchid/crypto/TorPublicKey;

    return-void
.end method

.method public setRawDocumentData(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->rawDocumentData:Ljava/lang/String;

    return-void
.end method

.method public setRouterPort(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorImpl;->routerPort:I

    return-void
.end method
