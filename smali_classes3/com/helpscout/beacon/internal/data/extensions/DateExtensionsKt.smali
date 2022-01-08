.class public final Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001b\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u000f\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u000f\u0010\u0007\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\u001b\u0010\n\u001a\n \t*\u0004\u0018\u00010\u00000\u0000*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0013\u0010\u000c\u001a\u00020\u0004*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\"\u0016\u0010\u000e\u001a\u00020\u00008\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\"\u0016\u0010\u0010\u001a\u00020\u00008\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000f\"\u001e\u0010\u0012\u001a\n \t*\u0004\u0018\u00010\u00110\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\"\u001e\u0010\u0014\u001a\n \t*\u0004\u0018\u00010\u00110\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "",
        "justNowText",
        "relativeTime",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "Lorg/threeten/bp/OffsetDateTime;",
        "nowUTC",
        "()Lorg/threeten/bp/OffsetDateTime;",
        "nowUTCFormattedToApi",
        "()Ljava/lang/String;",
        "kotlin.jvm.PlatformType",
        "formatToApi",
        "(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;",
        "parseToOffsetDateTime",
        "(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;",
        "SHORT_YEAR_DATE_PATTERN",
        "Ljava/lang/String;",
        "SHORT_DATE_PATTERN",
        "Lorg/threeten/bp/format/DateTimeFormatter;",
        "shortDateFormatter",
        "Lorg/threeten/bp/format/DateTimeFormatter;",
        "shortYearDateFormatter",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final SHORT_DATE_PATTERN:Ljava/lang/String; = "MMM d"

.field private static final SHORT_YEAR_DATE_PATTERN:Ljava/lang/String; = "MMM d, YYYY"

.field private static final shortDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final shortYearDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MMM d"

    invoke-static {v0}, Lorg/threeten/bp/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->shortDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;

    const-string v0, "MMM d, YYYY"

    invoke-static {v0}, Lorg/threeten/bp/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->shortYearDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method public static final formatToApi(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$formatToApi"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final nowUTC()Lorg/threeten/bp/OffsetDateTime;
    .locals 2

    sget-object v0, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0}, Lorg/threeten/bp/OffsetDateTime;->now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    const-string v1, "OffsetDateTime.now(ZoneOffset.UTC)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final nowUTCFormattedToApi()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->nowUTC()Lorg/threeten/bp/OffsetDateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->formatToApi(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nowUTC().formatToApi()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final parseToOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;
    .locals 1

    const-string v0, "$this$parseToOffsetDateTime"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/threeten/bp/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    const-string v0, "OffsetDateTime.parse(this)"

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/threeten/bp/OffsetDateTime;->MIN:Lorg/threeten/bp/OffsetDateTime;

    const-string v0, "OffsetDateTime.MIN"

    :goto_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final relativeTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$relativeTime"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "justNowText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/threeten/bp/Instant;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/Instant;

    move-result-object p0

    sget-object v0, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    invoke-static {p0, v0}, Lorg/threeten/bp/LocalDateTime;->ofInstant(Lorg/threeten/bp/Instant;Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p0

    invoke-static {}, Lorg/threeten/bp/Clock;->systemUTC()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/LocalDateTime;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    const-string v1, "dateTimeToFormat"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v1

    const-string v2, "nowDateTime"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->getYear()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p1, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->shortYearDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dateTimeToFormat.format(shortYearDateFormatter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1, p0, v0}, Lorg/threeten/bp/temporal/ChronoUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v1

    const/4 v3, 0x7

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->shortDateFormatter:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/LocalDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dateTimeToFormat.format(shortDateFormatter)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1, p0, v0}, Lorg/threeten/bp/temporal/ChronoUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v1, p0, v0}, Lorg/threeten/bp/temporal/ChronoUnit;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J

    move-result-wide v0

    cmp-long p0, v0, v3

    if-lez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method
