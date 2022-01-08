.class public final Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ZonedDateTimeTypeConverter;",
        "",
        "",
        "value",
        "Lorg/threeten/bp/OffsetDateTime;",
        "toOffsetDateTime",
        "(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;",
        "date",
        "fromOffsetDateTime",
        "(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromOffsetDateTime(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->formatToApi(Lorg/threeten/bp/OffsetDateTime;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final toOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/extensions/DateExtensionsKt;->parseToOffsetDateTime(Ljava/lang/String;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
