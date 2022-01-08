.class public Lcom/subgraph/orchid/directory/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Router;


# instance fields
.field private volatile cachedCountryCode:Ljava/lang/String;

.field private descriptor:Lcom/subgraph/orchid/Descriptor;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final identityHash:Lcom/subgraph/orchid/data/HexDigest;

.field protected status:Lcom/subgraph/orchid/RouterStatus;


# direct methods
.method protected constructor <init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    .line 31
    invoke-interface {p2}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    .line 33
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    return-void
.end method

.method static createFromRouterStatus(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)Lcom/subgraph/orchid/directory/RouterImpl;
    .locals 1

    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/RouterImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V

    return-object v0
.end method

.method private downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 254
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    instance-of v1, v0, Lcom/subgraph/orchid/RouterDescriptor;

    if-eqz v1, :cond_0

    .line 255
    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized refreshDescriptor()V
    .locals 2

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v1}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Directory;->getMicrodescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterMicrodescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v1}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Directory;->getBasicDescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public exitPolicyAccepts(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result p1

    return p1
.end method

.method public exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 226
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 229
    invoke-interface {v0, p2}, Lcom/subgraph/orchid/Descriptor;->exitPolicyAccepts(I)Z

    move-result p1

    return p1

    .line 231
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/subgraph/orchid/Descriptor;->exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z

    move-result p1

    return p1
.end method

.method public getAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public getAverageBandwidth()I
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getAverageBandwidth()I

    move-result v0

    return v0
.end method

.method public getBurstBandwidth()I
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getBurstBandwidth()I

    move-result v0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getInstance()Lcom/subgraph/orchid/geoip/CountryCodeService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/geoip/CountryCodeService;->getCountryCodeForAddress(Lcom/subgraph/orchid/data/IPv4Address;)Ljava/lang/String;

    move-result-object v0

    .line 247
    iput-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    return-object v0
.end method

.method public getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public getDirectoryPort()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getDirectoryPort()I

    move-result v0

    return v0
.end method

.method public getEstimatedBandwidth()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getEstimatedBandwidth()I

    move-result v0

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

    .line 189
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getFamilyMembers()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredBandwidth()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMeasuredBandwidth()I

    move-result v0

    return v0
.end method

.method public getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public getNTorOnionKey()[B
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 169
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getNTorOnionKey()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObservedBandwidth()I
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->getObservedBandwidth()I

    move-result v0

    return v0
.end method

.method public getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/subgraph/orchid/Descriptor;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnionPort()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getRouterPort()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBandwidth()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->hasBandwidth()Z

    move-result v0

    return v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isBadExit()Z
    .locals 1

    const-string v0, "BadExit"

    .line 110
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDescriptorDownloadable()Z
    .locals 6

    .line 46
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    invoke-interface {v0}, Lcom/subgraph/orchid/RouterStatus;->getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isExit()Z
    .locals 1

    const-string v0, "Exit"

    .line 118
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFast()Z
    .locals 1

    const-string v0, "Fast"

    .line 122
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHSDirectory()Z
    .locals 1

    const-string v0, "HSDir"

    .line 130
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHibernating()Z
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->downcastDescriptor()Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RouterDescriptor;->isHibernating()Z

    move-result v0

    return v0
.end method

.method public isPossibleGuard()Z
    .locals 1

    const-string v0, "Guard"

    .line 114
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    const-string v0, "Running"

    .line 102
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStable()Z
    .locals 1

    const-string v0, "Stable"

    .line 126
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const-string v0, "Valid"

    .line 106
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Router["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->getOnionPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStatus(Lcom/subgraph/orchid/RouterStatus;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/subgraph/orchid/directory/RouterImpl;->identityHash:Lcom/subgraph/orchid/data/HexDigest;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->status:Lcom/subgraph/orchid/RouterStatus;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->cachedCountryCode:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/subgraph/orchid/directory/RouterImpl;->descriptor:Lcom/subgraph/orchid/Descriptor;

    .line 42
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/RouterImpl;->refreshDescriptor()V

    return-void

    .line 38
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string v0, "Identity hash does not match status update"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
