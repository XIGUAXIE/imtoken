.class final Lorg/apache/commons/validator/routines/CreditCardValidator$1;
.super Lorg/apache/commons/validator/routines/RegexValidator;
.source "CreditCardValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/validator/routines/CreditCardValidator;->createRangeValidator([Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)Lorg/apache/commons/validator/routines/CodeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ccr:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

.field final synthetic val$creditCardRanges:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)V
    .locals 0

    .line 468
    iput-object p2, p0, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->val$creditCardRanges:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

    invoke-direct {p0, p1}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->val$creditCardRanges:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

    invoke-virtual {p1}, [Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

    iput-object p1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->ccr:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public match(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 474
    invoke-super {p0, p1}, Lorg/apache/commons/validator/routines/RegexValidator;->match(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 476
    iget-object v1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator$1;->ccr:[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 477
    invoke-static {v0, v5}, Lorg/apache/commons/validator/routines/CreditCardValidator;->validLength(ILorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    iget-object v6, v5, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->high:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 479
    iget-object v5, v5, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->low:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object p1

    .line 482
    :cond_0
    iget-object v6, v5, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->low:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_1

    iget-object v6, v5, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->high:Ljava/lang/String;

    iget-object v5, v5, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->high:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
