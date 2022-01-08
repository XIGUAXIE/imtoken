.class public Lorg/apache/commons/validator/routines/InetAddressValidator;
.super Ljava/lang/Object;
.source "InetAddressValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BASE_16:I = 0x10

.field private static final IPV4_MAX_OCTET_VALUE:I = 0xff

.field private static final IPV4_REGEX:Ljava/lang/String; = "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

.field private static final IPV6_MAX_HEX_DIGITS_PER_GROUP:I = 0x4

.field private static final IPV6_MAX_HEX_GROUPS:I = 0x8

.field private static final MAX_UNSIGNED_SHORT:I = 0xffff

.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/InetAddressValidator;

.field private static final serialVersionUID:J = -0xcc1a905893109a5L


# instance fields
.field private final ipv4Validator:Lorg/apache/commons/validator/routines/RegexValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/apache/commons/validator/routines/InetAddressValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/InetAddressValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/InetAddressValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/InetAddressValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/commons/validator/routines/RegexValidator;

    const-string v1, "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/InetAddressValidator;->ipv4Validator:Lorg/apache/commons/validator/routines/RegexValidator;

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/InetAddressValidator;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/commons/validator/routines/InetAddressValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/InetAddressValidator;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValidInet6Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isValidInet4Address(Ljava/lang/String;)Z
    .locals 7

    .line 88
    iget-object v0, p0, Lorg/apache/commons/validator/routines/InetAddressValidator;->ipv4Validator:Lorg/apache/commons/validator/routines/RegexValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/RegexValidator;->match(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    if-eqz v4, :cond_4

    .line 96
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    return v0

    .line 112
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_3

    const-string v3, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return v0

    :cond_5
    return v3
.end method

.method public isValidInet6Address(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, -0x1

    const-string v1, "/"

    .line 131
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 132
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    .line 135
    :cond_0
    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 136
    aget-object v1, p1, v4

    const-string v5, "\\d{1,3}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v5, 0x80

    if-le v1, v5, :cond_2

    :cond_1
    return v3

    .line 146
    :cond_2
    aget-object p1, p1, v3

    const-string v1, "%"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 147
    array-length v0, p1

    if-le v0, v2, :cond_3

    return v3

    .line 149
    :cond_3
    array-length v0, p1

    if-ne v0, v2, :cond_4

    .line 152
    aget-object v0, p1, v4

    const-string v1, "[^\\s/%]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 156
    :cond_4
    aget-object p1, p1, v3

    const-string v0, "::"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v2, v5, :cond_5

    return v3

    :cond_5
    const-string v2, ":"

    .line 161
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    return v3

    .line 165
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_b

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string p1, ""

    .line 170
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 172
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_a
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v5, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    .line 176
    :cond_b
    array-length p1, v2

    const/16 v0, 0x8

    if-le p1, v0, :cond_c

    return v3

    :cond_c
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 181
    :goto_1
    array-length v7, v2

    if-ge p1, v7, :cond_14

    .line 182
    aget-object v7, v2, p1

    .line 183
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_d

    add-int/2addr v6, v4

    if-le v6, v4, :cond_12

    return v3

    .line 191
    :cond_d
    array-length v6, v2

    sub-int/2addr v6, v4

    if-ne p1, v6, :cond_f

    const-string v6, "."

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 192
    invoke-virtual {p0, v7}, Lorg/apache/commons/validator/routines/InetAddressValidator;->isValidInet4Address(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    return v3

    :cond_e
    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    goto :goto_2

    .line 198
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x4

    if-le v6, v8, :cond_10

    return v3

    :cond_10
    const/16 v6, 0x10

    .line 203
    :try_start_0
    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v6, :cond_13

    const v7, 0xffff

    if-le v6, v7, :cond_11

    goto :goto_3

    :cond_11
    const/4 v6, 0x0

    :cond_12
    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    :cond_13
    :goto_3
    return v3

    :cond_14
    if-gt v5, v0, :cond_16

    if-ge v5, v0, :cond_15

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    return v4

    :cond_16
    :goto_4
    return v3
.end method
