.class public final Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "ModulusTenCheckDigit.java"


# static fields
.field private static final serialVersionUID:J = -0x341515efa2a690b1L


# instance fields
.field private final postitionWeight:[I

.field private final sumWeightedDigits:Z

.field private final useRightPos:Z


# direct methods
.method public constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;-><init>([IZZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;-><init>([IZZ)V

    return-void
.end method

.method public constructor <init>([IZZ)V
    .locals 1

    const/16 v0, 0xa

    .line 159
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    .line 160
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->postitionWeight:[I

    .line 161
    iput-boolean p2, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->useRightPos:Z

    .line 162
    iput-boolean p3, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->sumWeightedDigits:Z

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 183
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected toInt(CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    .line 203
    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p3

    if-ltz p3, :cond_0

    return p3

    .line 205
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[postitionWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->postitionWeight:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useRightPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->useRightPos:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sumWeightedDigits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->sumWeightedDigits:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected weightedValue(III)I
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->useRightPos:Z

    if-eqz v0, :cond_0

    move p2, p3

    .line 224
    :cond_0
    iget-object p3, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->postitionWeight:[I

    add-int/lit8 p2, p2, -0x1

    array-length v0, p3

    rem-int/2addr p2, v0

    aget p2, p3, p2

    mul-int p1, p1, p2

    .line 226
    iget-boolean p2, p0, Lorg/apache/commons/validator/routines/checkdigit/ModulusTenCheckDigit;->sumWeightedDigits:Z

    if-eqz p2, :cond_1

    .line 227
    invoke-static {p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->sumDigits(I)I

    move-result p1

    :cond_1
    return p1
.end method
