.class public final Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "ISINCheckDigit.java"


# static fields
.field public static final ISIN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final MAX_ALPHANUMERIC_VALUE:I = 0x23

.field private static final POSITION_WEIGHT:[I

.field private static final serialVersionUID:J = -0x11329007348fe34fL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;->ISIN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;->POSITION_WEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 58
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected calculateModulus(Ljava/lang/String;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 75
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid checkdigit["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 79
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    if-ltz v2, :cond_2

    const/16 v3, 0x23

    if-gt v2, v3, :cond_2

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Character["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] = \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->calculateModulus(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method protected weightedValue(III)I
    .locals 0

    .line 107
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/ISINCheckDigit;->POSITION_WEIGHT:[I

    rem-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    mul-int p1, p1, p2

    .line 109
    invoke-static {p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->sumDigits(I)I

    move-result p1

    return p1
.end method
