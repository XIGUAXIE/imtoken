.class public final Lorg/apache/commons/validator/routines/CodeValidator;
.super Ljava/lang/Object;
.source "CodeValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x633ec9490f28279L


# instance fields
.field private final checkdigit:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private final maxLength:I

.field private final minLength:I

.field private final regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    new-instance v0, Lorg/apache/commons/validator/routines/RegexValidator;

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/CodeValidator;->regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    .line 122
    :goto_0
    iput p2, p0, Lorg/apache/commons/validator/routines/CodeValidator;->minLength:I

    .line 123
    iput p3, p0, Lorg/apache/commons/validator/routines/CodeValidator;->maxLength:I

    .line 124
    iput-object p4, p0, Lorg/apache/commons/validator/routines/CodeValidator;->checkdigit:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 1

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/validator/routines/RegexValidator;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    .line 163
    iput p2, p0, Lorg/apache/commons/validator/routines/CodeValidator;->minLength:I

    .line 164
    iput p3, p0, Lorg/apache/commons/validator/routines/CodeValidator;->maxLength:I

    .line 165
    iput-object p4, p0, Lorg/apache/commons/validator/routines/CodeValidator;->checkdigit:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/validator/routines/RegexValidator;ILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Lorg/apache/commons/validator/routines/RegexValidator;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/validator/routines/RegexValidator;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V
    .locals 1

    const/4 v0, -0x1

    .line 135
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Lorg/apache/commons/validator/routines/RegexValidator;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    return-void
.end method


# virtual methods
.method public getCheckDigit()Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CodeValidator;->checkdigit:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/apache/commons/validator/routines/CodeValidator;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 190
    iget v0, p0, Lorg/apache/commons/validator/routines/CodeValidator;->minLength:I

    return v0
.end method

.method public getRegexValidator()Lorg/apache/commons/validator/routines/RegexValidator;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CodeValidator;->regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    return-object v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 261
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->regexValidator:Lorg/apache/commons/validator/routines/RegexValidator;

    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {v1, p1}, Lorg/apache/commons/validator/routines/RegexValidator;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 269
    :cond_2
    iget v1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->minLength:I

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/validator/routines/CodeValidator;->minLength:I

    if-lt v1, v2, :cond_4

    :cond_3
    iget v1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->maxLength:I

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/validator/routines/CodeValidator;->maxLength:I

    if-le v1, v2, :cond_5

    :cond_4
    return-object v0

    .line 275
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/validator/routines/CodeValidator;->checkdigit:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    if-eqz v1, :cond_6

    invoke-interface {v1, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    return-object p1
.end method
