.class public Lorg/apache/commons/validator/routines/CreditCardValidator;
.super Ljava/lang/Object;
.source "CreditCardValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;
    }
.end annotation


# static fields
.field public static final AMEX:J = 0x1L

.field public static final AMEX_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field public static final DINERS:J = 0x10L

.field public static final DINERS_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field public static final DISCOVER:J = 0x8L

.field private static final DISCOVER_REGEX:Lorg/apache/commons/validator/routines/RegexValidator;

.field public static final DISCOVER_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field private static final LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field public static final MASTERCARD:J = 0x4L

.field public static final MASTERCARD_PRE_OCT2016:J = 0x40L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MASTERCARD_REGEX:Lorg/apache/commons/validator/routines/RegexValidator;

.field public static final MASTERCARD_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field public static final MASTERCARD_VALIDATOR_PRE_OCT2016:Lorg/apache/commons/validator/routines/CodeValidator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_CC_LENGTH:I = 0x13

.field private static final MIN_CC_LENGTH:I = 0xc

.field public static final NONE:J = 0x0L

.field public static final VISA:J = 0x2L

.field public static final VISA_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field public static final VPAY:J = 0x20L

.field public static final VPAY_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

.field private static final serialVersionUID:J = 0x52a7e345cccc4b08L


# instance fields
.field private final cardTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/validator/routines/CodeValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 212
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/LuhnCheckDigit;->LUHN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    .line 220
    new-instance v1, Lorg/apache/commons/validator/routines/CodeValidator;

    const-string v2, "^(3[47]\\d{13})$"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->AMEX_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 231
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "^(30[0-5]\\d{11}|3095\\d{10}|36\\d{12}|3[8-9]\\d{12})$"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->DINERS_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 239
    new-instance v0, Lorg/apache/commons/validator/routines/RegexValidator;

    const-string v1, "^(6011\\d{12,13})$"

    const-string v2, "^(64[4-9]\\d{13})$"

    const-string v3, "^(65\\d{14})$"

    const-string v4, "^(62[2-8]\\d{13})$"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->DISCOVER_REGEX:Lorg/apache/commons/validator/routines/RegexValidator;

    .line 242
    new-instance v1, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v2, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Lorg/apache/commons/validator/routines/RegexValidator;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->DISCOVER_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 250
    new-instance v0, Lorg/apache/commons/validator/routines/RegexValidator;

    const-string v1, "^(5[1-5]\\d{14})$"

    const-string v2, "^(2221\\d{12})$"

    const-string v3, "^(222[2-9]\\d{12})$"

    const-string v4, "^(22[3-9]\\d{13})$"

    const-string v5, "^(2[3-6]\\d{14})$"

    const-string v6, "^(27[01]\\d{13})$"

    const-string v7, "^(2720\\d{12})$"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/RegexValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->MASTERCARD_REGEX:Lorg/apache/commons/validator/routines/RegexValidator;

    .line 263
    new-instance v1, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v2, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Lorg/apache/commons/validator/routines/RegexValidator;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 270
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "^(5[1-5]\\d{14})$"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR_PRE_OCT2016:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 277
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "^(4)(\\d{12}|\\d{15})$"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->VISA_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    .line 284
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v2, "^(4)(\\d{12,18})$"

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    sput-object v0, Lorg/apache/commons/validator/routines/CreditCardValidator;->VPAY_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xf

    .line 292
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    const-wide/16 v0, 0x2

    .line 304
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->VISA_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v0, 0x20

    .line 308
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->VPAY_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x1

    .line 312
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->AMEX_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v0, 0x4

    .line 316
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v0, 0x40

    .line 320
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->MASTERCARD_VALIDATOR_PRE_OCT2016:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v0, 0x8

    .line 324
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    iget-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/validator/routines/CreditCardValidator;->DISCOVER_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide/16 v0, 0x10

    .line 328
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->isOn(JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 329
    iget-object p1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    sget-object p2, Lorg/apache/commons/validator/routines/CreditCardValidator;->DINERS_VALIDATOR:Lorg/apache/commons/validator/routines/CodeValidator;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/validator/routines/CodeValidator;)V
    .locals 1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 341
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Card validators are missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/commons/validator/routines/CodeValidator;[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)V
    .locals 3

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 373
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 374
    iget-object p1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/validator/routines/CodeValidator;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-static {p2, v2}, Lorg/apache/commons/validator/routines/CreditCardValidator;->createRangeValidator([Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)Lorg/apache/commons/validator/routines/CodeValidator;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card ranges are missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card validators are missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)V
    .locals 4

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/validator/routines/CodeValidator;

    const/4 v2, 0x0

    .line 353
    sget-object v3, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-static {p1, v3}, Lorg/apache/commons/validator/routines/CreditCardValidator;->createRangeValidator([Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)Lorg/apache/commons/validator/routines/CodeValidator;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Card ranges are missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static createRangeValidator([Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)Lorg/apache/commons/validator/routines/CodeValidator;
    .locals 3

    .line 466
    new-instance v0, Lorg/apache/commons/validator/routines/CodeValidator;

    new-instance v1, Lorg/apache/commons/validator/routines/CreditCardValidator$1;

    const-string v2, "(\\d+)"

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/validator/routines/CreditCardValidator$1;-><init>(Ljava/lang/String;[Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)V

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Lorg/apache/commons/validator/routines/RegexValidator;Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    return-object v0
.end method

.method public static genericCreditCardValidator()Lorg/apache/commons/validator/routines/CreditCardValidator;
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x13

    .line 410
    invoke-static {v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;->genericCreditCardValidator(II)Lorg/apache/commons/validator/routines/CreditCardValidator;

    move-result-object v0

    return-object v0
.end method

.method public static genericCreditCardValidator(I)Lorg/apache/commons/validator/routines/CreditCardValidator;
    .locals 0

    .line 399
    invoke-static {p0, p0}, Lorg/apache/commons/validator/routines/CreditCardValidator;->genericCreditCardValidator(II)Lorg/apache/commons/validator/routines/CreditCardValidator;

    move-result-object p0

    return-object p0
.end method

.method public static genericCreditCardValidator(II)Lorg/apache/commons/validator/routines/CreditCardValidator;
    .locals 5

    .line 387
    new-instance v0, Lorg/apache/commons/validator/routines/CreditCardValidator;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/validator/routines/CodeValidator;

    new-instance v2, Lorg/apache/commons/validator/routines/CodeValidator;

    sget-object v3, Lorg/apache/commons/validator/routines/CreditCardValidator;->LUHN_VALIDATOR:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const-string v4, "(\\d+)"

    invoke-direct {v2, v4, p0, p1, v3}, Lorg/apache/commons/validator/routines/CodeValidator;-><init>(Ljava/lang/String;IILorg/apache/commons/validator/routines/checkdigit/CheckDigit;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/routines/CreditCardValidator;-><init>([Lorg/apache/commons/validator/routines/CodeValidator;)V

    return-object v0
.end method

.method private isOn(JJ)Z
    .locals 1

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static validLength(ILorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;)Z
    .locals 5

    .line 453
    iget-object v0, p1, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->lengths:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 454
    iget-object p1, p1, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->lengths:[I

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, p1, v3

    if-ne p0, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 461
    :cond_2
    iget v0, p1, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->minLen:I

    if-lt p0, v0, :cond_3

    iget p1, p1, Lorg/apache/commons/validator/routines/CreditCardValidator$CreditCardRange;->maxLen:I

    if-gt p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/routines/CodeValidator;

    .line 423
    invoke-virtual {v2, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/validator/routines/CreditCardValidator;->cardTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/routines/CodeValidator;

    .line 442
    invoke-virtual {v2, p1}, Lorg/apache/commons/validator/routines/CodeValidator;->validate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method
