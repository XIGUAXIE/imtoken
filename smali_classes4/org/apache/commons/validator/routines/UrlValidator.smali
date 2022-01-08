.class public Lorg/apache/commons/validator/routines/UrlValidator;
.super Ljava/lang/Object;
.source "UrlValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALLOW_2_SLASHES:J = 0x2L

.field public static final ALLOW_ALL_SCHEMES:J = 0x1L

.field public static final ALLOW_LOCAL_URLS:J = 0x8L

.field private static final AUTHORITY_CHARS_REGEX:Ljava/lang/String; = "\\p{Alnum}\\-\\."

.field private static final AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final AUTHORITY_REGEX:Ljava/lang/String; = "(?:\\[(::FFFF:(?:\\d{1,3}\\.){3}\\d{1,3}|[0-9a-fA-F:]+)\\]|(?:(?:[a-zA-Z0-9%-._~!$&\'()*+,;=]+(?::[a-zA-Z0-9%-._~!$&\'()*+,;=]*)?@)?([\\p{Alnum}\\-\\.]*)))(?::(\\d*))?(.*)?"

.field private static final DEFAULT_SCHEMES:[Ljava/lang/String;

.field private static final DEFAULT_URL_VALIDATOR:Lorg/apache/commons/validator/routines/UrlValidator;

.field private static final IPV6_REGEX:Ljava/lang/String; = "::FFFF:(?:\\d{1,3}\\.){3}\\d{1,3}|[0-9a-fA-F:]+"

.field private static final MAX_UNSIGNED_16_BIT_INT:I = 0xffff

.field public static final NO_FRAGMENTS:J = 0x4L

.field private static final PARSE_AUTHORITY_EXTRA:I = 0x4

.field private static final PARSE_AUTHORITY_HOST_IP:I = 0x2

.field private static final PARSE_AUTHORITY_IPV6:I = 0x1

.field private static final PARSE_AUTHORITY_PORT:I = 0x3

.field private static final PATH_PATTERN:Ljava/util/regex/Pattern;

.field private static final PATH_REGEX:Ljava/lang/String; = "^(/[-\\w:@&?=+,.!/~*\'%$_;\\(\\)]*)?$"

.field private static final QUERY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUERY_REGEX:Ljava/lang/String; = "^(\\S*)$"

.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;

.field private static final SCHEME_REGEX:Ljava/lang/String; = "^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*"

.field private static final USERINFO_CHARS_REGEX:Ljava/lang/String; = "[a-zA-Z0-9%-._~!$&\'()*+,;=]"

.field private static final USERINFO_FIELD_REGEX:Ljava/lang/String; = "[a-zA-Z0-9%-._~!$&\'()*+,;=]+(?::[a-zA-Z0-9%-._~!$&\'()*+,;=]*)?@"

.field private static final serialVersionUID:J = 0x68e06e8a0d6ac2e5L


# instance fields
.field private final allowedSchemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final authorityValidator:Lorg/apache/commons/validator/routines/RegexValidator;

.field private final domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

.field private final options:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^\\p{Alpha}[\\p{Alnum}\\+\\-\\.]*"

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?:\\[(::FFFF:(?:\\d{1,3}\\.){3}\\d{1,3}|[0-9a-fA-F:]+)\\]|(?:(?:[a-zA-Z0-9%-._~!$&\'()*+,;=]+(?::[a-zA-Z0-9%-._~!$&\'()*+,;=]*)?@)?([\\p{Alnum}\\-\\.]*)))(?::(\\d*))?(.*)?"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(/[-\\w:@&?=+,.!/~*\'%$_;\\(\\)]*)?$"

    .line 146
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->PATH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\S*)$"

    .line 149
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->QUERY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "http"

    const-string v1, "https"

    const-string v2, "ftp"

    .line 170
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->DEFAULT_SCHEMES:[Ljava/lang/String;

    .line 175
    new-instance v0, Lorg/apache/commons/validator/routines/UrlValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->DEFAULT_URL_VALIDATOR:Lorg/apache/commons/validator/routines/UrlValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/validator/routines/RegexValidator;J)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;J)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;J)V
    .locals 7

    const-wide/16 v0, 0x8

    .line 250
    invoke-static {v0, v1, p3, p4}, Lorg/apache/commons/validator/routines/UrlValidator;->isOn(JJ)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/validator/routines/DomainValidator;->getInstance(Z)Lorg/apache/commons/validator/routines/DomainValidator;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;JLorg/apache/commons/validator/routines/DomainValidator;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/commons/validator/routines/RegexValidator;JLorg/apache/commons/validator/routines/DomainValidator;)V
    .locals 5

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-wide p3, p0, Lorg/apache/commons/validator/routines/UrlValidator;->options:J

    if-eqz p5, :cond_5

    .line 269
    invoke-virtual {p5}, Lorg/apache/commons/validator/routines/DomainValidator;->isAllowLocal()Z

    move-result v0

    const-wide/16 v1, 0x8

    and-long/2addr p3, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p3, v1

    if-lez v4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-ne v0, p3, :cond_4

    .line 272
    iput-object p5, p0, Lorg/apache/commons/validator/routines/UrlValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    const-wide/16 p3, 0x1

    .line 274
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/validator/routines/UrlValidator;->isOn(J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 275
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/validator/routines/UrlValidator;->allowedSchemes:Ljava/util/Set;

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    .line 278
    sget-object p1, Lorg/apache/commons/validator/routines/UrlValidator;->DEFAULT_SCHEMES:[Ljava/lang/String;

    .line 280
    :cond_2
    new-instance p3, Ljava/util/HashSet;

    array-length p4, p1

    invoke-direct {p3, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p3, p0, Lorg/apache/commons/validator/routines/UrlValidator;->allowedSchemes:Ljava/util/Set;

    .line 281
    :goto_1
    array-length p3, p1

    if-ge v3, p3, :cond_3

    .line 282
    iget-object p3, p0, Lorg/apache/commons/validator/routines/UrlValidator;->allowedSchemes:Ljava/util/Set;

    aget-object p4, p1, v3

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    :cond_3
    :goto_2
    iput-object p2, p0, Lorg/apache/commons/validator/routines/UrlValidator;->authorityValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    return-void

    .line 270
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DomainValidator disagrees with ALLOW_LOCAL_URLS setting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DomainValidator must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/UrlValidator;
    .locals 1

    .line 182
    sget-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->DEFAULT_URL_VALIDATOR:Lorg/apache/commons/validator/routines/UrlValidator;

    return-object v0
.end method

.method private isOff(J)Z
    .locals 3

    .line 549
    iget-wide v0, p0, Lorg/apache/commons/validator/routines/UrlValidator;->options:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOn(J)Z
    .locals 3

    .line 524
    iget-wide v0, p0, Lorg/apache/commons/validator/routines/UrlValidator;->options:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isOn(JJ)Z
    .locals 1

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected countToken(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 506
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 306
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValidScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 317
    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    .line 318
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return v5

    .line 320
    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    .line 324
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/commons/validator/routines/UrlValidator;->isValidAuthority(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 329
    :cond_5
    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValidPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 333
    :cond_6
    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValidQuery(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    return v0

    .line 337
    :cond_7
    invoke-virtual {v1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValidFragment(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    return v5

    :catch_0
    return v0
.end method

.method protected isValidAuthority(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 385
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/validator/routines/UrlValidator;->authorityValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/apache/commons/validator/routines/RegexValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 389
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/validator/routines/DomainValidator;->unicodeToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 391
    sget-object v1, Lorg/apache/commons/validator/routines/UrlValidator;->AUTHORITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 397
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 399
    invoke-static {}, Lorg/apache/commons/validator/routines/InetAddressValidator;->getInstance()Lorg/apache/commons/validator/routines/InetAddressValidator;

    move-result-object v3

    .line 400
    invoke-virtual {v3, v1}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValidInet6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_3
    const/4 v1, 0x2

    .line 404
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    iget-object v3, p0, Lorg/apache/commons/validator/routines/UrlValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    invoke-virtual {v3, v1}, Lorg/apache/commons/validator/routines/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 409
    invoke-static {}, Lorg/apache/commons/validator/routines/InetAddressValidator;->getInstance()Lorg/apache/commons/validator/routines/InetAddressValidator;

    move-result-object v3

    .line 410
    invoke-virtual {v3, v1}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x3

    .line 415
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 416
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 418
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_5

    const v3, 0xffff

    if-le v1, v3, :cond_6

    :catch_0
    :cond_5
    return v0

    :cond_6
    const/4 v1, 0x4

    .line 428
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/16 v0, 0x4

    .line 493
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/UrlValidator;->isOff(J)Z

    move-result p1

    return p1
.end method

.method protected isValidPath(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 446
    :cond_0
    sget-object v1, Lorg/apache/commons/validator/routines/UrlValidator;->PATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 452
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "localhost"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, p1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/../"

    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/.."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "//"

    .line 462
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->countToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-wide/16 v1, 0x2

    .line 463
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/validator/routines/UrlValidator;->isOff(J)Z

    move-result v1

    if-eqz v1, :cond_3

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method protected isValidQuery(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 480
    :cond_0
    sget-object v0, Lorg/apache/commons/validator/routines/UrlValidator;->QUERY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected isValidScheme(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 358
    :cond_0
    sget-object v1, Lorg/apache/commons/validator/routines/UrlValidator;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-wide/16 v1, 0x1

    .line 362
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/validator/routines/UrlValidator;->isOff(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/validator/routines/UrlValidator;->allowedSchemes:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
