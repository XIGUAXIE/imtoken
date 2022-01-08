.class public Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;
.super Ljava/lang/Object;
.source "RequiredCertificateImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;


# instance fields
.field private downloadFailureCount:I

.field private final identity:Lcom/subgraph/orchid/data/HexDigest;

.field private final signingKey:Lcom/subgraph/orchid/data/HexDigest;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    .line 15
    iput-object p2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

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

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 37
    :cond_2
    check-cast p1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;

    .line 38
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v2, :cond_3

    .line 39
    iget-object v2, p1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v2, :cond_4

    return v1

    .line 41
    :cond_3
    iget-object v3, p1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 43
    :cond_4
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v2, :cond_5

    .line 44
    iget-object p1, p1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz p1, :cond_6

    return v1

    .line 46
    :cond_5
    iget-object p1, p1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v2, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getAuthorityIdentity()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getDownloadFailureCount()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    return v0
.end method

.method public getSigningKey()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->identity:Lcom/subgraph/orchid/data/HexDigest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->signingKey:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v2, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v2}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public incrementDownloadFailureCount()V
    .locals 1

    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;->downloadFailureCount:I

    return-void
.end method
