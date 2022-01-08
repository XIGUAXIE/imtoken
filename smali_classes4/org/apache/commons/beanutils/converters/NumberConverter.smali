.class public abstract Lorg/apache/commons/beanutils/converters/NumberConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "NumberConverter.java"


# static fields
.field private static final ONE:Ljava/lang/Integer;

.field private static final ZERO:Ljava/lang/Integer;


# instance fields
.field private final allowDecimals:Z

.field private locale:Ljava/util/Locale;

.field private pattern:Ljava/lang/String;

.field private useLocaleFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/beanutils/converters/NumberConverter;->ZERO:Ljava/lang/Integer;

    .line 88
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/beanutils/converters/NumberConverter;->ONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 105
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->allowDecimals:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 117
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->allowDecimals:Z

    .line 118
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private getFormat()Ljava/text/NumberFormat;
    .locals 3

    .line 501
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    const-string v1, "    Using pattern \'"

    if-nez v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 506
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with Locale["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 512
    :cond_2
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 513
    new-instance v1, Ljava/text/DecimalFormat;

    iget-object v2, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    move-object v0, v1

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_5

    .line 517
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "    Using default Locale format"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 520
    :cond_4
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Using Locale["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 525
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 528
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->allowDecimals:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 529
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    :cond_7
    return-object v0
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/NumberFormat;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/text/NumberFormat;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 546
    invoke-virtual {p4, p3, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 547
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne v0, p3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 548
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error converting from \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 549
    instance-of p3, p4, Ljava/text/DecimalFormat;

    if-eqz p3, :cond_2

    .line 550
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using pattern \'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 552
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_3

    .line 553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for locale=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 555
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 556
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "    "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 558
    :cond_4
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 422
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance p1, Ljava/lang/Byte;

    invoke-direct {p1, p3}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 427
    :cond_0
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    new-instance p1, Ljava/lang/Short;

    invoke-direct {p1, p3}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 432
    :cond_1
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 437
    :cond_2
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, p3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 442
    :cond_3
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, p3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 447
    :cond_4
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, p3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 452
    :cond_5
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 457
    :cond_6
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 458
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 461
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot handle conversion from \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 464
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 466
    :cond_8
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Number;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .line 303
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 308
    :cond_0
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\' is too small "

    const-string v2, "\' is too large for "

    const-string v3, " value \'"

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7f

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    const-wide/16 v6, -0x80

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 318
    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Number;->byteValue()B

    move-result p3

    invoke-direct {p1, p3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_2
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_3
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 323
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x7fff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    const-wide/16 v6, -0x8000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 332
    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Number;->shortValue()S

    move-result p3

    invoke-direct {p1, p3}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 329
    :cond_4
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_5
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_6
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_8

    const-wide/32 v6, -0x80000000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_7

    .line 346
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 343
    :cond_7
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_8
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_9
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 355
    :cond_a
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 356
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_b

    .line 360
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-direct {p1, p3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 357
    :cond_b
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_c
    const-class p1, Ljava/lang/Double;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 365
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 369
    :cond_d
    const-class p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 370
    instance-of p1, p3, Ljava/lang/Float;

    if-nez p1, :cond_11

    instance-of p1, p3, Ljava/lang/Double;

    if-eqz p1, :cond_e

    goto :goto_0

    .line 372
    :cond_e
    instance-of p1, p3, Ljava/math/BigInteger;

    if-eqz p1, :cond_f

    .line 373
    new-instance p1, Ljava/math/BigDecimal;

    check-cast p3, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 374
    :cond_f
    instance-of p1, p3, Ljava/math/BigDecimal;

    if-eqz p1, :cond_10

    .line 375
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 377
    :cond_10
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 371
    :cond_11
    :goto_0
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :cond_12
    const-class p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 383
    instance-of p1, p3, Ljava/math/BigDecimal;

    if-eqz p1, :cond_13

    .line 384
    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p3}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 386
    :cond_13
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 390
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot handle conversion to \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 393
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 395
    :cond_15
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->useLocaleFormat:Z

    const-string v1, "\'"

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->getFormat()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 207
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using format \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using toString() \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 235
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 237
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 238
    check-cast p2, Ljava/lang/Number;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 243
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/apache/commons/beanutils/converters/NumberConverter;->ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/commons/beanutils/converters/NumberConverter;->ZERO:Ljava/lang/Integer;

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 247
    :cond_2
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_3

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    new-instance v0, Ljava/lang/Long;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 252
    :cond_3
    instance-of v1, p2, Ljava/util/Calendar;

    if-eqz v1, :cond_4

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    new-instance v0, Ljava/lang/Long;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 257
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->handleMissing(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 264
    :cond_5
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->useLocaleFormat:Z

    if-eqz v1, :cond_6

    .line 265
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->getFormat()Ljava/text/NumberFormat;

    move-result-object v1

    .line 266
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/NumberFormat;)Ljava/lang/Number;

    move-result-object p2

    goto :goto_1

    .line 268
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "    No NumberFormat, using default conversion"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 271
    :cond_7
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p2

    .line 275
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toNumber(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowDecimals()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->allowDecimals:Z

    return v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setUseLocaleFormat(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->useLocaleFormat:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/NumberConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[UseDefault="

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/NumberConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", UseLocaleFormat="

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->useLocaleFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", Pattern="

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    const-string v1, ", Locale="

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/NumberConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
