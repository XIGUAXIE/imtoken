.class public Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;
    }
.end annotation


# static fields
.field private static final ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final IDENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final NETMASK_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)/(\\d+)$"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->NETMASK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.\\d+\\.\\d+\\.\\d+)/(\\d+)$"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[A-Fa-f0-9]{40}$"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->IDENTITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\{([A-Za-z]{2})\\}$"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\w{1,19}$"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    return-void
.end method

.method private static createAddressFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 2

    .line 140
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    const/4 v1, 0x2

    .line 145
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 146
    new-instance v1, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;

    invoke-direct {v1, v0, p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;-><init>(Lcom/subgraph/orchid/data/IPv4Address;I)V

    return-object v1

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static createCountryCodeFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 2

    .line 158
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static createFilterFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 1

    .line 126
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isAddressString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createAddressFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isCountryCodeString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createCountryCodeFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isIdentityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createIdentityFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object p0

    return-object p0

    .line 132
    :cond_2
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isNameString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createNameFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static createFromStrings(Ljava/util/List;)Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createFilterFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_1
    new-instance p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static createIdentityFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 1

    .line 150
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isIdentityString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p0

    .line 154
    new-instance v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;-><init>(Lcom/subgraph/orchid/data/HexDigest;)V

    return-object v0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static createNameFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 1

    .line 166
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isNameString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static isAddressString(Ljava/lang/String;)Z
    .locals 3

    .line 87
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->NETMASK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 93
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isValidOctetString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isValidMaskValue(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method static isCountryCodeString(Ljava/lang/String;)Z
    .locals 1

    .line 118
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static isIdentityString(Ljava/lang/String;)Z
    .locals 1

    .line 114
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->IDENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method static isNameString(Ljava/lang/String;)Z
    .locals 1

    .line 122
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static isValidMaskValue(Ljava/lang/String;)Z
    .locals 1

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidOctetString(Ljava/lang/String;)Z
    .locals 1

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/path/RouterFilter;

    .line 191
    invoke-interface {v1, p1}, Lcom/subgraph/orchid/circuits/path/RouterFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isEmpty()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
