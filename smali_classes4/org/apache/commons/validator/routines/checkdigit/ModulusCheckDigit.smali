.class public abstract Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.super Ljava/lang/Object;
.source "ModulusCheckDigit.java"

# interfaces
.implements Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x28ecd18b11e234edL


# instance fields
.field private final modulus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->modulus:I

    return-void
.end method

.method public static sumDigits(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    .line 198
    rem-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    .line 199
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public calculate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->calculateModulus(Ljava/lang/String;Z)I

    move-result p1

    .line 96
    iget v0, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->modulus:I

    sub-int p1, v0, p1

    rem-int/2addr p1, v0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->toCheckDigit(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    const-string v0, "Code is missing"

    invoke-direct {p1, v0}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected calculateModulus(Ljava/lang/String;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    xor-int/lit8 v3, p2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v0

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->toInt(CII)I

    move-result v0

    .line 116
    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->weightedValue(III)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 121
    iget p1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->modulus:I

    rem-int/2addr v1, p1

    return v1

    .line 119
    :cond_1
    new-instance p1, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    const-string p2, "Invalid code, sum is zero"

    invoke-direct {p1, p2}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModulus()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->modulus:I

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 75
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->calculateModulus(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method protected toCheckDigit(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Check Digit Value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected toInt(CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 160
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 161
    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    return p1

    .line 163
    :cond_0
    new-instance p3, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Character["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected abstract weightedValue(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation
.end method
