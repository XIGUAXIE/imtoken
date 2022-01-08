.class public Lorg/apache/commons/validator/EmailValidator;
.super Ljava/lang/Object;
.source "EmailValidator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ATOM:Ljava/lang/String; = "[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]+"

.field private static final ATOM_PATTERN:Ljava/util/regex/Pattern;

.field private static final DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMAIL_VALIDATOR:Lorg/apache/commons/validator/EmailValidator;

.field private static final IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUOTED_USER:Ljava/lang/String; = "(\"[^\"]*\")"

.field private static final SPECIAL_CHARS:Ljava/lang/String; = "\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]"

.field private static final TLD_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_CHARS:Ljava/lang/String; = "[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]"

.field private static final WORD:Ljava/lang/String; = "(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\[(.*)\\]$"

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^([a-zA-Z]+)$"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->TLD_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\s*(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\"))(\\.(([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]|\')+|(\"[^\"]*\")))*$"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]+(\\.[^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]+)*\\s*$"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([^\\s\\p{Cntrl}\\(\\)<>@,;:\'\\\\\\\"\\.\\[\\]]+)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->ATOM_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Lorg/apache/commons/validator/EmailValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/EmailValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/EmailValidator;->EMAIL_VALIDATOR:Lorg/apache/commons/validator/EmailValidator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/EmailValidator;
    .locals 1

    .line 72
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->EMAIL_VALIDATOR:Lorg/apache/commons/validator/EmailValidator;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 90
    invoke-static {}, Lorg/apache/commons/validator/routines/EmailValidator;->getInstance()Lorg/apache/commons/validator/routines/EmailValidator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/EmailValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isValidDomain(Ljava/lang/String;)Z
    .locals 4

    .line 102
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lorg/apache/commons/validator/routines/InetAddressValidator;->getInstance()Lorg/apache/commons/validator/routines/InetAddressValidator;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/EmailValidator;->isValidSymbolicDomain(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method protected isValidIpAddress(Ljava/lang/String;)Z
    .locals 5

    .line 141
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->IP_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_3

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xff

    if-le v2, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return v3

    :cond_3
    return v0
.end method

.method protected isValidSymbolicDomain(Ljava/lang/String;)Z
    .locals 8

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 173
    sget-object v1, Lorg/apache/commons/validator/EmailValidator;->ATOM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 178
    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ge v5, p1, :cond_3

    return v2

    :cond_3
    sub-int/2addr v5, v3

    .line 195
    aget-object p1, v0, v5

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 197
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->TLD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method protected isValidUser(Ljava/lang/String;)Z
    .locals 1

    .line 132
    sget-object v0, Lorg/apache/commons/validator/EmailValidator;->USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected stripComments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "^((?:[^\"\\\\]|\\\\.)*(?:\"(?:[^\"\\\\]|\\\\.)*\"(?:[^\"\\\\]|I111\\\\.)*)*)\\((?:[^()\\\\]|\\\\.)*\\)/"

    .line 217
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 219
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\u0001 "

    .line 220
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
