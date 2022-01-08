.class public final Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "CUSIPCheckDigit.java"


# static fields
.field public static final CUSIP_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final POSITION_WEIGHT:[I

.field private static final serialVersionUID:J = 0x9417424296c4e08L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;->CUSIP_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;->POSITION_WEIGHT:[I

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

    .line 56
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected toInt(CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 71
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

    .line 75
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

    .line 96
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/CUSIPCheckDigit;->POSITION_WEIGHT:[I

    rem-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    mul-int p1, p1, p2

    .line 98
    invoke-static {p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->sumDigits(I)I

    move-result p1

    return p1
.end method
