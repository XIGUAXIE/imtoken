.class public final Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "ISSNCheckDigit.java"


# static fields
.field public static final ISSN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISSNCheckDigit;->ISSN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected toCheckDigit(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string p1, "X"

    return-object p1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->toCheckDigit(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected toInt(CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/16 v0, 0x58

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    return p1

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;->toInt(CII)I

    move-result p1

    return p1
.end method

.method protected weightedValue(III)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    rsub-int/lit8 p2, p2, 0x9

    mul-int p1, p1, p2

    return p1
.end method
