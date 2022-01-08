.class public Lorg/apache/commons/validator/routines/PercentValidator;
.super Lorg/apache/commons/validator/routines/BigDecimalValidator;
.source "PercentValidator.java"


# static fields
.field private static final PERCENT_SYMBOL:C = '%'

.field private static final POINT_ZERO_ONE:Ljava/math/BigDecimal;

.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/PercentValidator;

.field private static final serialVersionUID:J = -0x30afc7717b77071cL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/apache/commons/validator/routines/PercentValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/PercentValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/PercentValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/PercentValidator;

    .line 57
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.01"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/validator/routines/PercentValidator;->POINT_ZERO_ONE:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/PercentValidator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/validator/routines/BigDecimalValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/BigDecimalValidator;
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/commons/validator/routines/PercentValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/PercentValidator;

    return-object v0
.end method


# virtual methods
.method protected parse(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;
    .locals 5

    .line 101
    invoke-super {p0, p1, p2}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    if-nez v0, :cond_3

    .line 102
    instance-of v1, p2, Ljava/text/DecimalFormat;

    if-nez v1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    check-cast p2, Ljava/text/DecimalFormat;

    .line 108
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1, p2}, Lorg/apache/commons/validator/routines/BigDecimalValidator;->parse(Ljava/lang/String;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 121
    sget-object p1, Lorg/apache/commons/validator/routines/PercentValidator;->POINT_ZERO_ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method
