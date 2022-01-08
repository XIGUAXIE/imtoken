.class public Lorg/apache/commons/validator/routines/EmailValidator;
.super Ljava/lang/Object;
.source "EmailValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMAIL_REGEX:Ljava/lang/String; = "^(.+)@(\\S+)$"

.field private static final EMAIL_VALIDATOR:Lorg/apache/commons/validator/routines/EmailValidator;

.field private static final EMAIL_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/EmailValidator;

.field private static final EMAIL_VALIDATOR_WITH_LOCAL_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

.field private static final EMAIL_VALIDATOR_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

.field private static final IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_DOMAIN_REGEX:Ljava/lang/String; = "^\\[(.*)\\]$"

.field private static final MAX_USERNAME_LEN:I = 0x40

.field private static final QUOTED_USER:Ljava/lang/String; = "(\"(\\\\\"|[^\"])*\")"

.field private static final SPECIAL_CHARS:Ljava/lang/String; = "\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]"

.field private static final USER_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_REGEX:Ljava/lang/String; = "^(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"(\\\\\"|[^\"])*\"))(\\.(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"(\\\\\"|[^\"])*\")))*$"

.field private static final VALID_CHARS:Ljava/lang/String; = "(\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]"

.field private static final WORD:Ljava/lang/String; = "(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"(\\\\\"|[^\"])*\"))"

.field private static final serialVersionUID:J = 0x17acab9aef934988L


# instance fields
.field private final allowTld:Z

.field private final domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^(.+)@(\\S+)$"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\[(.*)\\]$"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"(\\\\\"|[^\"])*\"))(\\.(((\\\\.)|[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"(\\\\\"|[^\"])*\")))*$"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    new-instance v0, Lorg/apache/commons/validator/routines/EmailValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/validator/routines/EmailValidator;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR:Lorg/apache/commons/validator/routines/EmailValidator;

    .line 67
    new-instance v0, Lorg/apache/commons/validator/routines/EmailValidator;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/validator/routines/EmailValidator;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

    .line 73
    new-instance v0, Lorg/apache/commons/validator/routines/EmailValidator;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/EmailValidator;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/EmailValidator;

    .line 80
    new-instance v0, Lorg/apache/commons/validator/routines/EmailValidator;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/validator/routines/EmailValidator;-><init>(ZZ)V

    sput-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/validator/routines/EmailValidator;-><init>(ZZ)V

    return-void
.end method

.method protected constructor <init>(ZZ)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean p2, p0, Lorg/apache/commons/validator/routines/EmailValidator;->allowTld:Z

    .line 158
    invoke-static {p1}, Lorg/apache/commons/validator/routines/DomainValidator;->getInstance(Z)Lorg/apache/commons/validator/routines/DomainValidator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/validator/routines/EmailValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    return-void
.end method

.method public constructor <init>(ZZLorg/apache/commons/validator/routines/DomainValidator;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean p2, p0, Lorg/apache/commons/validator/routines/EmailValidator;->allowTld:Z

    if-eqz p3, :cond_1

    .line 143
    invoke-virtual {p3}, Lorg/apache/commons/validator/routines/DomainValidator;->isAllowLocal()Z

    move-result p2

    if-ne p2, p1, :cond_0

    .line 146
    iput-object p3, p0, Lorg/apache/commons/validator/routines/EmailValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DomainValidator must agree with allowLocal setting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DomainValidator cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/EmailValidator;
    .locals 1

    .line 90
    sget-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR:Lorg/apache/commons/validator/routines/EmailValidator;

    return-object v0
.end method

.method public static getInstance(Z)Lorg/apache/commons/validator/routines/EmailValidator;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, v0}, Lorg/apache/commons/validator/routines/EmailValidator;->getInstance(ZZ)Lorg/apache/commons/validator/routines/EmailValidator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ZZ)Lorg/apache/commons/validator/routines/EmailValidator;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 104
    sget-object p0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

    return-object p0

    .line 106
    :cond_0
    sget-object p0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/EmailValidator;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 110
    sget-object p0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR_WITH_TLD:Lorg/apache/commons/validator/routines/EmailValidator;

    return-object p0

    .line 112
    :cond_2
    sget-object p0, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_VALIDATOR:Lorg/apache/commons/validator/routines/EmailValidator;

    return-object p0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 187
    :cond_1
    sget-object v1, Lorg/apache/commons/validator/routines/EmailValidator;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 192
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/validator/routines/EmailValidator;->isValidUser(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x2

    .line 196
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/EmailValidator;->isValidDomain(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method protected isValidDomain(Ljava/lang/String;)Z
    .locals 3

    .line 211
    sget-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lorg/apache/commons/validator/routines/InetAddressValidator;->getInstance()Lorg/apache/commons/validator/routines/InetAddressValidator;

    move-result-object p1

    .line 216
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 219
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/validator/routines/EmailValidator;->allowTld:Z

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lorg/apache/commons/validator/routines/EmailValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/validator/routines/EmailValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/DomainValidator;->isValidTld(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 222
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/validator/routines/EmailValidator;->domainValidator:Lorg/apache/commons/validator/routines/DomainValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/DomainValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isValidUser(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lorg/apache/commons/validator/routines/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
