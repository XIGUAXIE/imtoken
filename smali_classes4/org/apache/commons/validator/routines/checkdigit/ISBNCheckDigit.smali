.class public final Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;
.super Ljava/lang/Object;
.source "ISBNCheckDigit.java"

# interfaces
.implements Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;
.implements Ljava/io/Serializable;


# static fields
.field public static final ISBN10_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field public static final ISBN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field public static final ISBN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final serialVersionUID:J = 0x1350d7713c956a2eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBN10CheckDigit;->ISBN10_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN10_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    .line 45
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    .line 48
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 71
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN10_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 73
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ISBN Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    new-instance p1, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;

    const-string v0, "ISBN Code is missing"

    invoke-direct {p1, v0}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigitException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 98
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN10_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 100
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/ISBNCheckDigit;->ISBN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method
