.class public Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;
.super Ljava/lang/Object;
.source "ConsensusDocumentImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConsensusDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;
    }
.end annotation


# static fields
.field private static final BW_WEIGHT_SCALE_DEFAULT:I = 0x2710

.field private static final BW_WEIGHT_SCALE_MAX:I = 0x7fffffff

.field private static final BW_WEIGHT_SCALE_MIN:I = 0x1

.field private static final BW_WEIGHT_SCALE_PARAM:Ljava/lang/String; = "bwweightscale"

.field private static final CIRCWINDOW_DEFAULT:I = 0x3e8

.field private static final CIRCWINDOW_MAX:I = 0x3e8

.field private static final CIRCWINDOW_MIN:I = 0x64

.field private static final CIRCWINDOW_PARAM:Ljava/lang/String; = "circwindow"

.field private static final USE_NTOR_HANDSHAKE_PARAM:Ljava/lang/String; = "UseNTorHandshake"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bandwidthWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consensusMethod:I

.field private distDelaySeconds:I

.field private flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

.field private freshUntil:Lcom/subgraph/orchid/data/Timestamp;

.field private isFirstCallToVerifySignatures:Z

.field private knownFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rawDocumentData:Ljava/lang/String;

.field private requiredCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private routerStatusEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterStatus;",
            ">;"
        }
    .end annotation
.end field

.field private serverVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureCount:I

.field private signingHash:Lcom/subgraph/orchid/data/HexDigest;

.field private signingHash256:Lcom/subgraph/orchid/data/HexDigest;

.field private validAfter:Lcom/subgraph/orchid/data/Timestamp;

.field private validUntil:Lcom/subgraph/orchid/data/Timestamp;

.field private voteAuthorityEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/VoteAuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private voteDelaySeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->knownFlags:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    return-void
.end method

.method private addRequiredCertificateForSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    new-instance v1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getBooleanParameterValue(Ljava/lang/String;Z)Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 321
    :cond_0
    iget-object p2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getParameterValue(Ljava/lang/String;III)I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, p3, :cond_1

    return p3

    :cond_1
    if-le p1, p4, :cond_2

    return p4

    :cond_2
    return p1
.end method

.method private verifySignatureForTrustedAuthority(Lcom/subgraph/orchid/DirectoryServer;Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 2

    .line 265
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/DirectoryServer;->getCertificateByFingerprint(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/KeyCertificate;

    move-result-object p1

    if-nez p1, :cond_0

    .line 267
    sget-object p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing certificate for signing key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addRequiredCertificateForSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V

    .line 269
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    .line 271
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    .line 275
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->useSha256()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    .line 277
    :goto_0
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/data/HexDigest;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 278
    sget-object p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature failed on consensus for signing key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 279
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    .line 281
    :cond_3
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1
.end method

.method private verifySingleAuthority(Lcom/subgraph/orchid/VoteAuthorityEntry;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 5

    .line 236
    invoke-interface {p1}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getSignatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .line 237
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v3

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServerByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 239
    sget-object p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consensus signed by unrecognized directory authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 240
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    .line 242
    :cond_0
    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$1;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-direct {p0, v3, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->verifySignatureForTrustedAuthority(Lcom/subgraph/orchid/DirectoryServer;Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 256
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    .line 258
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1

    .line 260
    :cond_5
    sget-object p1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    return-object p1
.end method


# virtual methods
.method addBandwidthWeight(Ljava/lang/String;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addClientVersion(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addKnownFlag(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->knownFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addParameter(Ljava/lang/String;I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addRouterStatusEntry(Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addServerVersion(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/VoteAuthorityEntry;

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consensus contains signature for source not declared in authority section: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getSignatures()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorSignature;->getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    move-result-object v1

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .line 87
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/crypto/TorSignature;->getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v1}, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    sget-object p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    const-string v0, "Consensus contains two or more signatures for same source with same algorithm"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_2
    iget v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addVoteAuthorityEntry(Lcom/subgraph/orchid/VoteAuthorityEntry;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 293
    instance-of v0, p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 295
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .line 296
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getSigningHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBandwidthWeight(Ljava/lang/String;)I
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getCircWindowParameter()I
    .locals 3

    const/16 v0, 0x3e8

    const-string v1, "circwindow"

    const/16 v2, 0x64

    .line 326
    invoke-direct {p0, v1, v0, v2, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getParameterValue(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public getClientVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    return-object v0
.end method

.method public getConsensusMethod()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->consensusMethod:I

    return v0
.end method

.method public getDistSeconds()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    return v0
.end method

.method public getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-object v0
.end method

.method public getFreshUntilTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getRawDocumentData()Ljava/lang/String;

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

    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredCertificates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public getRouterStatusEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/RouterStatus;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersions()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    return-object v0
.end method

.method public getSigningHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getSigningHash256()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getUseNTorHandshake()Z
    .locals 2

    const-string v0, "UseNTorHandshake"

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getBooleanParameterValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getValidUntilTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getVoteSeconds()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    return v0
.end method

.method public getWeightScaleParameter()I
    .locals 4

    const-string v0, "bwweightscale"

    const/16 v1, 0x2710

    const/4 v2, 0x1

    const v3, 0x7fffffff

    .line 330
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getParameterValue(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isLive()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/Timestamp;->hasPassed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValidDocument()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-void
.end method

.method setConsensusMethod(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->consensusMethod:I

    return-void
.end method

.method setDistDelaySeconds(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    return-void
.end method

.method setFreshUntil(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setRawDocumentData(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->rawDocumentData:Ljava/lang/String;

    return-void
.end method

.method setSigningHash(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setSigningHash256(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setValidAfter(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setValidUntil(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setVoteDelaySeconds(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    return-void
.end method

.method public declared-synchronized verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 8

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    .line 200
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 203
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getV3AuthorityServerCount()I

    move-result v2

    const/4 v3, 0x2

    .line 204
    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 206
    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/subgraph/orchid/VoteAuthorityEntry;

    .line 207
    sget-object v7, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$1;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-direct {p0, v6}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->verifySingleAuthority(Lcom/subgraph/orchid/VoteAuthorityEntry;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v3, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-lt v1, v2, :cond_3

    .line 220
    sget-object v0, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    add-int/2addr v1, v5

    if-lt v1, v2, :cond_5

    if-eqz v0, :cond_4

    .line 223
    :try_start_1
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    const-string v1, "Certificates need to be retrieved to verify consensus"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 225
    :cond_4
    sget-object v0, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 227
    :cond_5
    :try_start_2
    sget-object v0, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
