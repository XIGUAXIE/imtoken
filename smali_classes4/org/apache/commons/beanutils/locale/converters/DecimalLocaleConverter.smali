.class public Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;
.super Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;
.source "DecimalLocaleConverter.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 47
    const-class p1, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/lang/Object;Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Z)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/BaseLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    .line 47
    const-class p1, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 231
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    return-object p1

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    if-eqz p2, :cond_2

    .line 244
    iget-boolean v1, p0, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;->locPattern:Z

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/beanutils/locale/converters/DecimalLocaleConverter;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "No pattern provided, using default."

    invoke-interface {p2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 253
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
