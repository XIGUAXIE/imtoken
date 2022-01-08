.class public abstract Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "DateTimeConverter.java"


# instance fields
.field private displayPatterns:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private patterns:[Ljava/lang/String;

.field private timeZone:Ljava/util/TimeZone;

.field private useLocaleFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    .line 504
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 505
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-object v0
.end method

.method private logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V
    .locals 2

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with Format"

    .line 613
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    instance-of p1, p2, Ljava/text/SimpleDateFormat;

    const-string v1, "]"

    if-eqz p1, :cond_0

    const-string p1, "["

    .line 615
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, " for "

    .line 619
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez p1, :cond_1

    const-string p1, "default locale"

    .line 621
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "locale["

    .line 623
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz p1, :cond_2

    const-string p1, ", TimeZone["

    .line 628
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 525
    :try_start_0
    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    .line 526
    invoke-direct {p0, p1, p2, p3, v4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v4

    if-nez v2, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    :cond_1
    iget-object p3, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    .line 535
    new-instance p3, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error converting \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' using  patterns \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 538
    :cond_2
    throw v2
.end method

.method private parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    const-string v0, "Parsing"

    .line 555
    invoke-direct {p0, v0, p4}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    const/4 v0, 0x0

    .line 556
    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 557
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 558
    invoke-virtual {p4, p3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 559
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne v1, p3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p4}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 560
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error converting \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 561
    instance-of p3, p4, Ljava/text/SimpleDateFormat;

    if-eqz p3, :cond_2

    .line 562
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using pattern \'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 564
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 565
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "    "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 567
    :cond_3
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toDate(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 373
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 378
    :cond_0
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 383
    :cond_1
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, p2, p3}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 388
    :cond_2
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 393
    :cond_3
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_4

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_5

    .line 398
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_6

    .line 400
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_6
    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 404
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x0

    .line 405
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setLenient(Z)V

    .line 406
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 409
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot handle conversion to \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 412
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 414
    :cond_8
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 438
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    :try_start_0
    invoke-static {p2}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 442
    :catch_0
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [yyyy-MM-dd] to create a java.sql.Date"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 448
    :cond_0
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :try_start_1
    invoke-static {p2}, Ljava/sql/Time;->valueOf(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 452
    :catch_1
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [HH:mm:ss] to create a java.sql.Time"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_1
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    :try_start_2
    invoke-static {p2}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 462
    :catch_2
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "String must be in JDBC format [yyyy-MM-dd HH:mm:ss.fffffffff] to create a java.sql.Timestamp"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support default String to \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' conversion."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object p2

    const-string v0, "    (N.B. Re-configure Converter or use alternative implementation)"

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 474
    :cond_3
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

    .line 227
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 228
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    .line 229
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 230
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 236
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    const-string v2, "\'"

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 238
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz p1, :cond_3

    array-length v1, p1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 239
    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 241
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_1
    const-string v1, "Formatting"

    .line 243
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->logFormat(Ljava/lang/String;Ljava/text/DateFormat;)V

    .line 244
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using format \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 249
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Converted  to String using toString() \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-object p1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 293
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    .line 299
    check-cast p2, Ljava/sql/Timestamp;

    .line 300
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    .line 301
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    const v2, 0xf4240

    div-int/2addr p2, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 303
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 308
    check-cast p2, Ljava/util/Date;

    .line 309
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 313
    :cond_1
    instance-of v1, p2, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 314
    check-cast p2, Ljava/util/Calendar;

    .line 315
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 319
    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 320
    check-cast p2, Ljava/lang/Long;

    .line 321
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 325
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 326
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->handleMissing(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 331
    :cond_4
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    if-eqz v1, :cond_7

    .line 333
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 334
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p2

    goto :goto_0

    .line 336
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v1

    .line 337
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->parse(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Calendar;

    move-result-object p2

    .line 339
    :goto_0
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 342
    :cond_6
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 347
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toDate(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 487
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 489
    :cond_0
    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 492
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPatterns()[Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 171
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setPatterns([Ljava/lang/String;)V

    return-void
.end method

.method public setPatterns([Ljava/lang/String;)V
    .locals 4

    .line 194
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->patterns:[Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 195
    array-length v1, p1

    if-le v1, v0, :cond_2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 197
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    .line 205
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->setUseLocaleFormat(Z)V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public setUseLocaleFormat(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[UseDefault="

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", UseLocaleFormat="

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->useLocaleFormat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 586
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", Patterns={"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->displayPatterns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    const-string v1, ", Locale="

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_2

    const-string v1, ", TimeZone="

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/DateTimeConverter;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x5d

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
