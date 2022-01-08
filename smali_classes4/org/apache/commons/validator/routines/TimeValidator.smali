.class public Lorg/apache/commons/validator/routines/TimeValidator;
.super Lorg/apache/commons/validator/routines/AbstractCalendarValidator;
.source "TimeValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/TimeValidator;

.field private static final serialVersionUID:J = 0x307d354d5b49d2bdL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/validator/routines/TimeValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/TimeValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/TimeValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/TimeValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 104
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/TimeValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/AbstractCalendarValidator;-><init>(ZII)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/TimeValidator;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/commons/validator/routines/TimeValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/TimeValidator;

    return-object v0
.end method


# virtual methods
.method public compareHours(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xb

    .line 271
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareMinutes(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xc

    .line 258
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareSeconds(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xd

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method public compareTime(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 1

    const/16 v0, 0xe

    .line 232
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->compareTime(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 0

    .line 283
    check-cast p2, Ljava/text/DateFormat;

    invoke-virtual {p2}, Ljava/text/DateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    .line 128
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 152
    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 204
    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 165
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 177
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/TimeZone;

    invoke-virtual {p0, p1, v1, p2, v0}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 190
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    const/4 v0, 0x0

    .line 140
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/commons/validator/routines/TimeValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    return-object p1
.end method
