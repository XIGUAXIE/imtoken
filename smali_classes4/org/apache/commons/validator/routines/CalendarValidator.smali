.class public Lorg/apache/commons/validator/routines/CalendarValidator;
.super Lorg/apache/commons/validator/routines/AbstractCalendarValidator;
.source "CalendarValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/CalendarValidator;

.field private static final serialVersionUID:J = 0x7e6bfc84d7216a97L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/apache/commons/validator/routines/CalendarValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/CalendarValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/CalendarValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CalendarValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 107
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/CalendarValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, -0x1

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;-><init>(ZII)V

    return-void
.end method

.method public static adjustToTimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)V
    .locals 7

    .line 233
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x2

    .line 237
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x5

    .line 238
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xb

    .line 239
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xc

    .line 240
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 241
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    move-object v1, p0

    .line 242
    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/CalendarValidator;
    .locals 1

    .line 99
    sget-object v0, Lorg/apache/commons/validator/routines/CalendarValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/CalendarValidator;

    return-object v0
.end method


# virtual methods
.method public compareDates(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    .line 256
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareMonths(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 0

    .line 310
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;->compareQuarters(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareWeeks(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x3

    .line 269
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareYears(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->compare(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p2, Ljava/text/DateFormat;

    invoke-virtual {p2}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    .line 131
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 156
    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 208
    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 0

    .line 223
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 169
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 181
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, p2, v0}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 194
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 144
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/commons/validator/routines/CalendarValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method
