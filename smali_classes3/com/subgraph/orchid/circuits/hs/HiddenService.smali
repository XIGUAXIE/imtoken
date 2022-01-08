.class public Lcom/subgraph/orchid/circuits/hs/HiddenService;
.super Ljava/lang/Object;
.source "HiddenService.java"


# instance fields
.field private circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

.field private final permanentId:[B


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/TorConfig;[B)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    .line 34
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    return-void
.end method

.method static calculateTimePeriod(JI)[B
    .locals 6

    int-to-long v0, p2

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    const-wide/16 v4, 0x100

    .line 105
    div-long/2addr v0, v4

    add-long/2addr p0, v0

    div-long/2addr p0, v2

    .line 106
    invoke-static {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->toNetworkBytes(J)[B

    move-result-object p0

    return-object p0
.end method

.method static decodeOnion(Ljava/lang/String;)[B
    .locals 2

    const-string v0, ".onion"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static toNetworkBytes(J)[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 112
    aput-byte v2, v0, v1

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
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

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 134
    :cond_2
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 135
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    iget-object p1, p1, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method getAllCurrentDescriptorIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/TorConfig;->getHidServAuth(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    return-object v0
.end method

.method getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

    return-object v0
.end method

.method getCurrentDescriptorId(I)Lcom/subgraph/orchid/data/HexDigest;
    .locals 2

    .line 81
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentSecretId(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    return-object p1
.end method

.method getCurrentSecretId(I)[B
    .locals 4

    .line 88
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCurrentTimePeriod()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 90
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v2

    sget-object v3, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 94
    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 95
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object p1

    return-object p1
.end method

.method getCurrentTimePeriod()[B
    .locals 4

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 100
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 101
    invoke-static {v0, v1, v2}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->calculateTimePeriod(JI)[B

    move-result-object v0

    return-object v0
.end method

.method getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-object v0
.end method

.method getOnionAddress()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v1}, Lcom/subgraph/orchid/data/Base32;->base32Encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOnionAddressForLogging()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[scrubbed]"

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasCurrentDescriptor()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->permanentId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method setCircuit(Lcom/subgraph/orchid/HiddenServiceCircuit;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->circuit:Lcom/subgraph/orchid/HiddenServiceCircuit;

    return-void
.end method

.method setDescriptor(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenService;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-void
.end method
