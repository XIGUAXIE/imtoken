.class public Lorg/apache/commons/validator/routines/BigDecimalValidator;
.super Lorg/apache/commons/validator/routines/AbstractNumberValidator;
.source "BigDecimalValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/BigDecimalValidator;

.field private static final serialVersionUID:J = -0x94d755146e86014L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lorg/apache/commons/validator/routines/BigDecimalValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/BigDecimalValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/BigDecimalValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/BigDecimalValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/BigDecimalValidator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 97
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/validator/routines/BigDecimalValidator;-><init>(ZIZ)V

    return-void
.end method

.method protected constructor <init>(ZIZ)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/BigDecimalValidator;
    .locals 1

    .line 80
    sget-object v0, Lorg/apache/commons/validator/routines/BigDecimalValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/BigDecimalValidator;

    return-object v0
.end method


# virtual methods
.method public isInRange(Ljava/math/BigDecimal;DD)Z
    .locals 3

    .line 189
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    cmpl-double v2, v0, p2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    cmpg-double p3, p1, p4

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxValue(Ljava/math/BigDecimal;D)Z
    .locals 2

    .line 213
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    cmpg-double p1, v0, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minValue(Ljava/math/BigDecimal;D)Z
    .locals 2

    .line 201
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 2

    .line 227
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 233
    :goto_0
    check-cast p2, Ljava/text/NumberFormat;

    invoke-virtual {p0, p2}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->determineScale(Ljava/text/NumberFormat;)I

    move-result p2

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    const/4 v0, 0x0

    .line 137
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    .line 150
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/math/BigDecimal;
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    .line 162
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigDecimal;

    return-object p1
.end method
