.class public Lorg/apache/commons/validator/routines/ISINValidator;
.super Ljava/lang/Object;
.source "ISINValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final CCODES:[Ljava/lang/String;

.field private static final ISIN_REGEX:Ljava/lang/String; = "([A-Z]{2}[A-Z0-9]{9}[0-9])"

.field private static final ISIN_VALIDATOR_FALSE:Lorg/apache/commons/validator/routines/ISINValidator;

.field private static final ISIN_VALIDATOR_TRUE:Lorg/apache/commons/validator/routines/ISINValidator;

.field private static final SPECIALS:[Ljava/lang/String;

.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field private static final serialVersionUID:J = -0x52c5c669c7931548L


# instance fields
.field private final checkCountryCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;->ISIN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "([A-Z]{2}[A-Z0-9]{9}[0-9])"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;ILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 56
    new-instance v0, Lorg/apache/commons/validator/routines/ISINValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/ISINValidator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->ISIN_VALIDATOR_FALSE:Lorg/apache/commons/validator/routines/ISINValidator;

    .line 59
    new-instance v0, Lorg/apache/commons/validator/routines/ISINValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/ISINValidator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->ISIN_VALIDATOR_TRUE:Lorg/apache/commons/validator/routines/ISINValidator;

    .line 61
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->CCODES:[Ljava/lang/String;

    const-string v1, "EZ"

    const-string v2, "XS"

    .line 63
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/validator/routines/ISINValidator;->SPECIALS:[Ljava/lang/String;

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->SPECIALS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lorg/apache/commons/validator/routines/ISINValidator;->checkCountryCode:Z

    return-void
.end method

.method private checkCode(Ljava/lang/String;)Z
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->CCODES:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->SPECIALS:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

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

.method public static getInstance(Z)Lorg/apache/commons/validator/routines/ISINValidator;
    .locals 0

    if-eqz p0, :cond_0

    .line 81
    sget-object p0, Lorg/apache/commons/validator/routines/ISINValidator;->ISIN_VALIDATOR_TRUE:Lorg/apache/commons/validator/routines/ISINValidator;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/commons/validator/routines/ISINValidator;->ISIN_VALIDATOR_FALSE:Lorg/apache/commons/validator/routines/ISINValidator;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 2

    .line 96
    sget-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-boolean v1, p0, Lorg/apache/commons/validator/routines/ISINValidator;->checkCountryCode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/validator/routines/ISINValidator;->checkCode(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 110
    sget-object v0, Lorg/apache/commons/validator/routines/ISINValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v1, p0, Lorg/apache/commons/validator/routines/ISINValidator;->checkCountryCode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 112
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/validator/routines/ISINValidator;->checkCode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method
