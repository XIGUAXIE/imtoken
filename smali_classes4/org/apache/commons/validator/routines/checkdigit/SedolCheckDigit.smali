.class public final Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "SedolCheckDigit.java"


# static fields
.field private static final MAX_ALPHANUMERIC_VALUE:I = 0x23

.field private static final POSITION_WEIGHT:[I

.field public static final SEDOL_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final serialVersionUID:J = -0x7c944a45db4fc66bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;->SEDOL_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;->POSITION_WEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x1
        0x7
        0x3
        0x9
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;->POSITION_WEIGHT:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 75
    invoke-super {p0, p1, p2}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->calculateModulus(Ljava/lang/String;Z)I

    move-result p1

    return p1

    .line 73
    :cond_0
    new-instance p2, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Code Length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected toInt(CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    return p1

    .line 108
    :cond_1
    new-instance v1, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Character["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] = \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' out of range 0 to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected weightedValue(III)I
    .locals 0

    .line 89
    sget-object p3, Lorg/apache/commons/validator/routines/checkdigit/SedolCheckDigit;->POSITION_WEIGHT:[I

    add-int/lit8 p2, p2, -0x1

    aget p2, p3, p2

    mul-int p1, p1, p2

    return p1
.end method
