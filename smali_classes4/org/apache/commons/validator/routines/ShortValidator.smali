.class public Lorg/apache/commons/validator/routines/ShortValidator;
.super Lorg/apache/commons/validator/routines/AbstractNumberValidator;
.source "ShortValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/ShortValidator;

.field private static final serialVersionUID:J = -0x488bd948ee05413aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/validator/routines/ShortValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/ShortValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/ShortValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/ShortValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/ShortValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/ShortValidator;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/commons/validator/routines/ShortValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/ShortValidator;

    return-object v0
.end method


# virtual methods
.method public isInRange(Ljava/lang/Short;SS)Z
    .locals 0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/ShortValidator;->isInRange(SSS)Z

    move-result p1

    return p1
.end method

.method public isInRange(SSS)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxValue(Ljava/lang/Short;S)Z
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/ShortValidator;->maxValue(SS)Z

    move-result p1

    return p1
.end method

.method public maxValue(SS)Z
    .locals 0

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minValue(Ljava/lang/Short;S)Z
    .locals 0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/ShortValidator;->minValue(SS)Z

    move-result p1

    return p1
.end method

.method public minValue(SS)Z
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 3

    .line 247
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v0, -0x8000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x7fff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    int-to-short p1, p2

    .line 253
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Short;
    .locals 2

    const/4 v0, 0x0

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/validator/routines/ShortValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Short;
    .locals 1

    const/4 v0, 0x0

    .line 132
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/ShortValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Short;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/ShortValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Short;
    .locals 1

    const/4 v0, 0x0

    .line 144
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/ShortValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    return-object p1
.end method
