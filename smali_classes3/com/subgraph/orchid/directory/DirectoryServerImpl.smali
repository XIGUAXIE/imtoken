.class public Lcom/subgraph/orchid/directory/DirectoryServerImpl;
.super Lcom/subgraph/orchid/directory/RouterImpl;
.source "DirectoryServerImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/DirectoryServer;


# instance fields
.field private certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private isBridgeAuthority:Z

.field private isExtraInfoCache:Z

.field private isHiddenServiceAuthority:Z

.field private port:I

.field private v3Ident:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/RouterStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    .line 17
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    .line 18
    iput-boolean p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    return-void
.end method

.method private getNewestCertificate()Lcom/subgraph/orchid/KeyCertificate;
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/KeyCertificate;

    if-eqz v1, :cond_1

    .line 114
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v3

    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J
    .locals 2

    .line 127
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getKeyPublishedTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isMoreThan48HoursOlder(Lcom/subgraph/orchid/KeyCertificate;Lcom/subgraph/orchid/KeyCertificate;)Z
    .locals 3

    .line 123
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getPublishedMilliseconds(Lcom/subgraph/orchid/KeyCertificate;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xa4cb800

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private purgeExpiredCertificates()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/KeyCertificate;

    .line 91
    invoke-interface {v1}, Lcom/subgraph/orchid/KeyCertificate;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private purgeOldCertificates()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNewestCertificate()Lcom/subgraph/orchid/KeyCertificate;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/KeyCertificate;

    if-eq v2, v0, :cond_1

    .line 105
    invoke-direct {p0, v0, v2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isMoreThan48HoursOlder(Lcom/subgraph/orchid/KeyCertificate;Lcom/subgraph/orchid/KeyCertificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
    .locals 2

    .line 131
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This certificate does not appear to belong to this directory authority"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateByFingerprint(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/KeyCertificate;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/KeyCertificate;

    .line 72
    invoke-interface {v1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->purgeExpiredCertificates()V

    .line 82
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->purgeOldCertificates()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->certificates:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getV3Identity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public isBridgeAuthority()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    return v0
.end method

.method public isExtraInfoCache()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    return v0
.end method

.method public isHiddenServiceAuthority()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return v0
.end method

.method public isTrustedAuthority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isV2Authority()Z
    .locals 1

    const-string v0, "Authority"

    .line 47
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V2Dir"

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isV3Authority()Z
    .locals 1

    const-string v0, "Authority"

    .line 51
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method setBridgeAuthority()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isBridgeAuthority:Z

    return-void
.end method

.method setExtraInfoCache()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isExtraInfoCache:Z

    return-void
.end method

.method setHiddenServiceAuthority()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return-void
.end method

.method setPort(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    return-void
.end method

.method setV3Ident(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    const-string v1, ")"

    const-string v2, " fingerprint="

    const-string v3, ":"

    const-string v4, " "

    const-string v5, "(Directory: "

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " v3ident="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->v3Ident:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->port:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unsetHiddenServiceAuthority()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->isHiddenServiceAuthority:Z

    return-void
.end method
