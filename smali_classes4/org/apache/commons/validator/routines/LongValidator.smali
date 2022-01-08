.class public Lorg/apache/commons/validator/routines/LongValidator;
.super Lorg/apache/commons/validator/routines/AbstractNumberValidator;
.source "LongValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/LongValidator;

.field private static final serialVersionUID:J = -0x47040f25a945f1f2L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/apache/commons/validator/routines/LongValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/LongValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/LongValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/LongValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/LongValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/LongValidator;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/validator/routines/LongValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/LongValidator;

    return-object v0
.end method


# virtual methods
.method public isInRange(JJJ)Z
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    cmp-long p3, p1, p5

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInRange(Ljava/lang/Long;JJ)Z
    .locals 7

    .line 183
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/validator/routines/LongValidator;->isInRange(JJJ)Z

    move-result p1

    return p1
.end method

.method public maxValue(JJ)Z
    .locals 1

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxValue(Ljava/lang/Long;J)Z
    .locals 2

    .line 231
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/validator/routines/LongValidator;->maxValue(JJ)Z

    move-result p1

    return p1
.end method

.method public minValue(JJ)Z
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minValue(Ljava/lang/Long;J)Z
    .locals 2

    .line 207
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/validator/routines/LongValidator;->minValue(JJ)Z

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 0

    .line 246
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 119
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/validator/routines/LongValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    .line 131
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/LongValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Long;
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/LongValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    .line 143
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/LongValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
