.class public Lorg/apache/commons/validator/routines/FloatValidator;
.super Lorg/apache/commons/validator/routines/AbstractNumberValidator;
.source "FloatValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/FloatValidator;

.field private static final serialVersionUID:J = -0x3ea244cf169497bbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/validator/routines/FloatValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/FloatValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/FloatValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/FloatValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/FloatValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/FloatValidator;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/commons/validator/routines/FloatValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/FloatValidator;

    return-object v0
.end method


# virtual methods
.method public isInRange(FFF)Z
    .locals 0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInRange(Ljava/lang/Float;FF)Z
    .locals 0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/FloatValidator;->isInRange(FFF)Z

    move-result p1

    return p1
.end method

.method public maxValue(FF)Z
    .locals 0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxValue(Ljava/lang/Float;F)Z
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/FloatValidator;->maxValue(FF)Z

    move-result p1

    return p1
.end method

.method public minValue(FF)Z
    .locals 0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minValue(Ljava/lang/Float;F)Z
    .locals 0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/FloatValidator;->minValue(FF)Z

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 8

    .line 247
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    const-wide/high16 v2, 0x36a0000000000000L    # 1.401298464324817E-45

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmpl-double v7, p1, v4

    if-lez v7, :cond_1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    return-object v6

    :cond_0
    cmpl-double v2, p1, v0

    if-lez v2, :cond_3

    return-object v6

    :cond_1
    cmpg-double v7, p1, v4

    if-gez v7, :cond_3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    mul-double v4, v4, p1

    cmpg-double v7, v4, v2

    if-gez v7, :cond_2

    return-object v6

    :cond_2
    cmpl-double v2, v4, v0

    if-lez v2, :cond_3

    return-object v6

    :cond_3
    double-to-float p1, p1

    .line 266
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x0

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/validator/routines/FloatValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 132
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/FloatValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Float;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/FloatValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 144
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/FloatValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    return-object p1
.end method
