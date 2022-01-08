.class public Lorg/apache/commons/validator/routines/ISSNValidator;
.super Ljava/lang/Object;
.source "ISSNValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EAN_ISSN_LEN:I = 0xd

.field private static final EAN_ISSN_REGEX:Ljava/lang/String; = "^(977)(?:(\\d{10}))$"

.field private static final EAN_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field private static final ISSN_LEN:I = 0x8

.field private static final ISSN_PREFIX:Ljava/lang/String; = "977"

.field private static final ISSN_REGEX:Ljava/lang/String; = "(?:ISSN )?(\\d{4})-(\\d{3}[0-9X])$"

.field private static final ISSN_VALIDATOR:Lorg/apache/commons/validator/routines/ISSNValidator;

.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field private static final serialVersionUID:J = 0x3bf200a1e78fc435L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;->ISSN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "(?:ISSN )?(\\d{4})-(\\d{3}[0-9X])$"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;ILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 79
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "^(977)(?:(\\d{10}))$"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;ILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->EAN_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 82
    new-instance v0, Lorg/apache/commons/validator/routines/ISSNValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/ISSNValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->ISSN_VALIDATOR:Lorg/apache/commons/validator/routines/ISSNValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/ISSNValidator;
    .locals 1

    .line 90
    sget-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->ISSN_VALIDATOR:Lorg/apache/commons/validator/routines/ISSNValidator;

    return-object v0
.end method


# virtual methods
.method public convertToEAN13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_1

    const-string v0, "\\d\\d"

    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/ISSNValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "977"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :try_start_0
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {p2, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check digit error for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suffix must be two digits: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extractFromEAN13(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\'"

    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    const-string v1, "977"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lorg/apache/commons/validator/routines/ISSNValidator;->validateEan(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0xa

    .line 195
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v1, Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;->ISSN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v1, v0}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check digit error for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefix must be 977 to contain an ISSN: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 114
    sget-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public validateEan(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 103
    sget-object v0, Lorg/apache/commons/validator/routines/ISSNValidator;->EAN_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
