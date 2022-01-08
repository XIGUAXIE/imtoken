.class public Lorg/apache/commons/validator/routines/DateValidator;
.super Lorg/apache/commons/validator/routines/AbstractCalendarValidator;
.source "DateValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/DateValidator;

.field private static final serialVersionUID:J = -0x370b3aaa6c8e0aa6L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/validator/routines/DateValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/DateValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/DateValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/DateValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 104
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/DateValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;-><init>(ZII)V

    return-void
.end method

.method private getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 0

    if-eqz p2, :cond_0

    .line 341
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 345
    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p2
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/DateValidator;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/commons/validator/routines/DateValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/DateValidator;

    return-object v0
.end method


# virtual methods
.method public compareDates(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)I
    .locals 0

    .line 235
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 236
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x5

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareMonths(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)I
    .locals 0

    .line 267
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 268
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x2

    .line 269
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareQuarters(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)I
    .locals 1

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/DateValidator;->compareQuarters(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;I)I

    move-result p1

    return p1
.end method

.method public compareQuarters(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;I)I
    .locals 0

    .line 298
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 299
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 300
    invoke-super {p0, p1, p2, p4}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareWeeks(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)I
    .locals 0

    .line 251
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 252
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x3

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareYears(Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;)I
    .locals 0

    .line 314
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 315
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->getCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x1

    .line 316
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    .line 128
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    .line 153
    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 206
    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 0

    .line 221
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 167
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    .line 179
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, p2, v0}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 192
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 2

    const/4 v0, 0x0

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/commons/validator/routines/DateValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1
.end method
