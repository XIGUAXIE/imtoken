.class public final Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;
.super Lorg/apache/commons/beanutils/converters/DateTimeConverter;
.source "SqlTimestampConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/DateTimeConverter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    const-class v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method protected getFormat(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 84
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0, v0, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-object p1
.end method
