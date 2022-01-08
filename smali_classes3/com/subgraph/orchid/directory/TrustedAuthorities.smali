.class public Lcom/subgraph/orchid/directory/TrustedAuthorities;
.super Ljava/lang/Object;
.source "TrustedAuthorities.java"


# static fields
.field private static final _instance:Lcom/subgraph/orchid/directory/TrustedAuthorities;

.field private static final dirServers:[Ljava/lang/String;


# instance fields
.field private final directoryServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/DirectoryServer;",
            ">;"
        }
    .end annotation
.end field

.field private final v3ServerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "authority moria1 orport=9101 no-v2 v3ident=D586D18309DED4CD6D57C18FDB97EFA96D330566 128.31.0.39:9131 9695 DFC3 5FFE B861 329B 9F1A B04C 4639 7020 CE31"

    const-string v1, "authority tor26 v1 orport=443 v3ident=14C131DFC5C6F93646BE72FA1401C02A8DF2E8B4 86.59.21.38:80 847B 1F85 0344 D787 6491 A548 92F9 0493 4E4E B85D"

    const-string v2, "authority dizum orport=443 v3ident=E8A9C45EDE6D711294FADF8E7951F4DE6CA56B58 194.109.206.212:80 7EA6 EAD6 FD83 083C 538F 4403 8BBF A077 587D D755"

    const-string v3, "authority Tonga orport=443 bridge no-v2 82.94.251.203:80 4A0C CD2D DC79 9508 3D73 F5D6 6710 0C8A 5831 F16D"

    const-string v4, "authority longclaw orport=9090 no-v2 v3ident=23D15D965BC35114467363C165C4F724B64B4F66 202.85.227.202:80 74A9 1064 6BCE EFBC D2E8 74FC 1DC9 9743 0F96 8145"

    const-string v5, "authority dannenberg orport=443 no-v2 v3ident=585769C78764D58426B8B52B6651A5A71137189A 193.23.244.244:80 7BE6 83E6 5D48 1413 21C5 ED92 F075 C553 64AC 7123"

    const-string v6, "authority urras orport=80 no-v2 v3ident=80550987E1D626E3EBA5E5E75A458DE0626D088C 208.83.223.34:443 0AD3 FA88 4D18 F89E EA2D 89C0 1937 9E0E 7FD9 4417"

    const-string v7, "authority maatuska orport=80 no-v2 v3ident=49015F787433103580E3B66A1707A00E60F2D15B 171.25.193.9:443 BD6A 8292 55CB 08E6 6FBE 7D37 4836 3586 E46B 3810"

    const-string v8, "authority Faravahar orport=443 no-v2 v3ident=EFCBE720AB3A82B99F9E953CD5BF50F7EEFC7B97 154.35.32.5:80 CF6D 0AAF B385 BE71 B8E1 11FC 5CFF 4B47 9237 33BC"

    const-string v9, "authority gabelmoo orport=443 no-v2 v3ident=ED03BB616EB2F60BEC80151114BB25CEF515B226 212.112.245.170:80 F204 4413 DAC2 E02E 3D6B CF47 35A1 9BCA 1DE9 7281"

    .line 20
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->dirServers:[Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/TrustedAuthorities;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->_instance:Lcom/subgraph/orchid/directory/TrustedAuthorities;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->directoryServers:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->initialize()V

    .line 44
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->countV3Servers()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->v3ServerCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/TrustedAuthorities;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->processKeywordLine(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    return-void
.end method

.method private countV3Servers()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->directoryServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/DirectoryServer;

    .line 50
    invoke-interface {v2}, Lcom/subgraph/orchid/DirectoryServer;->getV3Identity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;
    .locals 1

    .line 39
    sget-object v0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->_instance:Lcom/subgraph/orchid/directory/TrustedAuthorities;

    return-object v0
.end method

.method private parseAddressPort(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Ljava/lang/String;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V
    .locals 1

    const-string v0, ":"

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 99
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    const/4 v0, 0x1

    .line 100
    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setDirectoryPort(I)V

    return-void
.end method

.method private parseFlag(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Ljava/lang/String;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V
    .locals 1

    const-string v0, "v1"

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setV1Authority()V

    .line 106
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setHiddenServiceAuthority()V

    goto :goto_0

    :cond_0
    const-string v0, "hs"

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setHiddenServiceAuthority()V

    goto :goto_0

    :cond_1
    const-string v0, "no-hs"

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->unsetHiddenServiceAuthority()V

    goto :goto_0

    :cond_2
    const-string v0, "bridge"

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setBridgeAuthority()V

    goto :goto_0

    :cond_3
    const-string v0, "no-v2"

    .line 113
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p3}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->unsetV2Authority()V

    goto :goto_0

    :cond_4
    const-string v0, "orport="

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setRouterPort(I)V

    goto :goto_0

    :cond_5
    const-string p1, "v3ident="

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x8

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setV3Ident(Lcom/subgraph/orchid/data/HexDigest;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private processArgument(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V
    .locals 2

    .line 81
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1, v0, p2}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->parseAddressPort(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Ljava/lang/String;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V

    .line 84
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 85
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryServerImpl;

    invoke-direct {v0, p2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;-><init>(Lcom/subgraph/orchid/RouterStatus;)V

    .line 86
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->getV3Ident()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->getV3Ident()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/DirectoryServerImpl;->setV3Ident(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 89
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding trusted authority: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logDebug(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->directoryServers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->parseFlag(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Ljava/lang/String;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V

    return-void
.end method

.method private processKeywordLine(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;-><init>()V

    .line 75
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;->setNickname(Ljava/lang/String;)V

    .line 76
    :goto_0
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->processArgument(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/DirectoryAuthorityStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthorityServerByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/DirectoryServer;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->directoryServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/DirectoryServer;

    .line 132
    invoke-interface {v1}, Lcom/subgraph/orchid/DirectoryServer;->getV3Identity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthorityServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/DirectoryServer;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->directoryServers:Ljava/util/List;

    return-object v0
.end method

.method public getV3AuthorityServerCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/subgraph/orchid/directory/TrustedAuthorities;->v3ServerCount:I

    return v0
.end method

.method initialize()V
    .locals 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    sget-object v1, Lcom/subgraph/orchid/directory/TrustedAuthorities;->dirServers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    .line 66
    new-instance v0, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;

    invoke-direct {v0, p0, v1}, Lcom/subgraph/orchid/directory/TrustedAuthorities$1;-><init>(Lcom/subgraph/orchid/directory/TrustedAuthorities;Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    .line 70
    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V

    return-void
.end method
