.class public abstract Lorg/apache/commons/validator/routines/AbstractCalendarValidator;
.super Lorg/apache/commons/validator/routines/AbstractFormatValidator;
.source "AbstractCalendarValidator.java"


# static fields
.field private static final serialVersionUID:J = -0x13915b56a1570bb3L


# instance fields
.field private final dateStyle:I

.field private final timeStyle:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/validator/routines/AbstractFormatValidator;-><init>(Z)V

    .line 55
    iput p2, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->dateStyle:I

    .line 56
    iput p3, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->timeStyle:I

    return-void
.end method

.method private calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 0

    .line 418
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private calculateQuarter(Ljava/util/Calendar;I)I
    .locals 3

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 394
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v0

    if-lt p1, p2, :cond_0

    sub-int v2, p1, p2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, p2, 0xc

    add-int/2addr v2, p1

    .line 398
    :goto_0
    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v0

    if-ge p1, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method protected compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 2

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_6

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 286
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    .line 291
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x2

    .line 295
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_6

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 302
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x5

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_6

    if-eq p3, v0, :cond_6

    const/4 v0, 0x7

    if-eq p3, v0, :cond_6

    const/16 v0, 0x8

    if-ne p3, v0, :cond_5

    goto :goto_0

    .line 314
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method protected compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 0

    .line 372
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateQuarter(Ljava/util/Calendar;I)I

    move-result p1

    .line 373
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateQuarter(Ljava/util/Calendar;I)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 3

    const/16 v0, 0xb

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_4

    const/16 v2, 0xa

    if-eq p3, v2, :cond_4

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    .line 341
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_4

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    .line 347
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v1

    if-nez v1, :cond_4

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    if-ne p3, v0, :cond_3

    .line 354
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->calculateCompareResult(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1

    .line 357
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid field: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 125
    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 0

    .line 140
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->getFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p2

    check-cast p2, Ljava/text/DateFormat;

    if-eqz p4, :cond_0

    .line 142
    invoke-virtual {p2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 143
    :cond_0
    instance-of p3, p1, Ljava/util/Calendar;

    if-eqz p3, :cond_1

    .line 144
    move-object p3, p1

    check-cast p3, Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 146
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->format(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 97
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected format(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 163
    :cond_1
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 111
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 83
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->format(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 216
    invoke-virtual {p0, p2}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->getFormat(Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 218
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 221
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    :goto_1
    move-object p1, p2

    .line 223
    :goto_2
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    return-object p1
.end method

.method protected getFormat(Ljava/util/Locale;)Ljava/text/Format;
    .locals 2

    .line 237
    iget v0, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->dateStyle:I

    if-ltz v0, :cond_1

    iget v1, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->timeStyle:I

    if-ltz v1, :cond_1

    if-nez p1, :cond_0

    .line 239
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 241
    :cond_0
    invoke-static {v0, v1, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 243
    :cond_1
    iget v0, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->timeStyle:I

    if-ltz v0, :cond_3

    if-nez p1, :cond_2

    .line 245
    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 247
    :cond_2
    invoke-static {v0, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 250
    :cond_3
    iget v0, p0, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->dateStyle:I

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    :goto_0
    if-nez p1, :cond_5

    .line 252
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_1

    .line 254
    :cond_5
    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    return-object p1
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 1

    const/4 v0, 0x0

    .line 69
    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->getFormat(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object p2

    check-cast p2, Ljava/text/DateFormat;

    if-eqz p4, :cond_2

    .line 184
    invoke-virtual {p2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->parse(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected abstract processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
.end method
