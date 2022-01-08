.class public Lorg/apache/commons/validator/DateValidator;
.super Ljava/lang/Object;
.source "DateValidator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATE_VALIDATOR:Lorg/apache/commons/validator/DateValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lorg/apache/commons/validator/DateValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/DateValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/DateValidator;->DATE_VALIDATOR:Lorg/apache/commons/validator/DateValidator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/DateValidator;
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/commons/validator/DateValidator;->DATE_VALIDATOR:Lorg/apache/commons/validator/DateValidator;

    return-object v0
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 84
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p2, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public isValid(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    if-eqz p2, :cond_1

    .line 114
    invoke-static {v1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p2

    .line 122
    :goto_0
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 125
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
