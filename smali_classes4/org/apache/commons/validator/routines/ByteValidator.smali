.class public Lorg/apache/commons/validator/routines/ByteValidator;
.super Lorg/apache/commons/validator/routines/AbstractNumberValidator;
.source "ByteValidator.java"


# static fields
.field private static final VALIDATOR:Lorg/apache/commons/validator/routines/ByteValidator;

.field private static final serialVersionUID:J = 0x612ad358101e32b9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lorg/apache/commons/validator/routines/ByteValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/ByteValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/ByteValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/ByteValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/validator/routines/ByteValidator;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/AbstractNumberValidator;-><init>(ZIZ)V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/ByteValidator;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/commons/validator/routines/ByteValidator;->VALIDATOR:Lorg/apache/commons/validator/routines/ByteValidator;

    return-object v0
.end method


# virtual methods
.method public isInRange(BBB)Z
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

.method public isInRange(Ljava/lang/Byte;BB)Z
    .locals 0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/ByteValidator;->isInRange(BBB)Z

    move-result p1

    return p1
.end method

.method public maxValue(BB)Z
    .locals 0

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maxValue(Ljava/lang/Byte;B)Z
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/ByteValidator;->maxValue(BB)Z

    move-result p1

    return p1
.end method

.method public minValue(BB)Z
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minValue(Ljava/lang/Byte;B)Z
    .locals 0

    .line 208
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/validator/routines/ByteValidator;->minValue(BB)Z

    move-result p1

    return p1
.end method

.method protected processParsedValue(Ljava/lang/Object;Ljava/text/Format;)Ljava/lang/Object;
    .locals 3

    .line 248
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 249
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, -0x80

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 252
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public validate(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 2

    const/4 v0, 0x0

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/validator/routines/ByteValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Byte;
    .locals 1

    const/4 v0, 0x0

    .line 132
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/validator/routines/ByteValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Byte;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/validator/routines/ByteValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method

.method public validate(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Byte;
    .locals 1

    const/4 v0, 0x0

    .line 144
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/validator/routines/ByteValidator;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    return-object p1
.end method
