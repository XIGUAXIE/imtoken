.class public Lcom/subgraph/orchid/config/TorConfigHSAuth;
.super Ljava/lang/Object;
.source "TorConfigHSAuth.java"


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    return-void
.end method

.method private createFromBase64(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 5

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "A="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/subgraph/orchid/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 44
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    .line 46
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 47
    invoke-static {p1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    .line 52
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-direct {p1, v0, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V

    return-object p1

    .line 54
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal cookie descriptor with flag value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    invoke-direct {p1, v0, v3}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;-><init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;[B)V

    return-object p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private validateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".onion"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 25
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/subgraph/orchid/data/Base32;->base32Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 26
    array-length v0, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    return-object p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->createFromBase64(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object p2

    .line 18
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method get(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigHSAuth;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->validateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    return-object p1
.end method
