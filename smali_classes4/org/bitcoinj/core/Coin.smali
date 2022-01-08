.class public final Lorg/bitcoinj/core/Coin;
.super Ljava/lang/Object;
.source "Coin.java"

# interfaces
.implements Lorg/bitcoinj/core/Monetary;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bitcoinj/core/Monetary;",
        "Ljava/lang/Comparable<",
        "Lorg/bitcoinj/core/Coin;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CENT:Lorg/bitcoinj/core/Coin;

.field public static final COIN:Lorg/bitcoinj/core/Coin;

.field private static final COIN_VALUE:J

.field public static final FIFTY_COINS:Lorg/bitcoinj/core/Coin;

.field private static final FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

.field public static final MICROCOIN:Lorg/bitcoinj/core/Coin;

.field public static final MILLICOIN:Lorg/bitcoinj/core/Coin;

.field public static final NEGATIVE_SATOSHI:Lorg/bitcoinj/core/Coin;

.field private static final PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

.field public static final SATOSHI:Lorg/bitcoinj/core/Coin;

.field public static final SMALLEST_UNIT_EXPONENT:I = 0x8

.field public static final ZERO:Lorg/bitcoinj/core/Coin;


# instance fields
.field public final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    const-wide/16 v1, 0xa

    .line 42
    invoke-static {v1, v2, v0}, Lcom/google/common/math/LongMath;->pow(JI)J

    move-result-wide v1

    sput-wide v1, Lorg/bitcoinj/core/Coin;->COIN_VALUE:J

    const-wide/16 v1, 0x0

    .line 47
    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 52
    sget-wide v1, Lorg/bitcoinj/core/Coin;->COIN_VALUE:J

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    const-wide/16 v2, 0x64

    .line 57
    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->CENT:Lorg/bitcoinj/core/Coin;

    .line 62
    sget-object v1, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->MILLICOIN:Lorg/bitcoinj/core/Coin;

    .line 67
    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->MICROCOIN:Lorg/bitcoinj/core/Coin;

    const-wide/16 v1, 0x1

    .line 72
    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->SATOSHI:Lorg/bitcoinj/core/Coin;

    .line 74
    sget-object v1, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->FIFTY_COINS:Lorg/bitcoinj/core/Coin;

    const-wide/16 v1, -0x1

    .line 79
    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->NEGATIVE_SATOSHI:Lorg/bitcoinj/core/Coin;

    .line 256
    sget-object v1, Lorg/bitcoinj/utils/MonetaryFormat;->BTC:Lorg/bitcoinj/utils/MonetaryFormat;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/utils/MonetaryFormat;->minDecimals(I)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/utils/MonetaryFormat;->repeatOptionalDecimals(II)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/utils/MonetaryFormat;->postfixCode()Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/core/Coin;->FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    .line 266
    sget-object v1, Lorg/bitcoinj/utils/MonetaryFormat;->BTC:Lorg/bitcoinj/utils/MonetaryFormat;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/bitcoinj/utils/MonetaryFormat;->minDecimals(I)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/bitcoinj/utils/MonetaryFormat;->repeatOptionalDecimals(II)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/utils/MonetaryFormat;->noCode()Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Coin;->PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p1, p0, Lorg/bitcoinj/core/Coin;->value:J

    return-void
.end method

.method public static parseCoin(Ljava/lang/String;)Lorg/bitcoinj/core/Coin;
    .locals 2

    .line 128
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 129
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(II)Lorg/bitcoinj/core/Coin;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 112
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 113
    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 114
    sget-object v0, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p0

    sget-object v0, Lorg/bitcoinj/core/Coin;->CENT:Lorg/bitcoinj/core/Coin;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(J)Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 91
    new-instance v0, Lorg/bitcoinj/core/Coin;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;
    .locals 5

    .line 136
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    iget-wide v3, p1, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/core/Coin;)I
    .locals 4

    .line 298
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    iget-wide v2, p1, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public div(I)Lorg/bitcoinj/core/Coin;
    .locals 2

    int-to-long v0, p1

    .line 178
    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public div(J)Lorg/bitcoinj/core/Coin;
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public divide(Lorg/bitcoinj/core/Coin;)J
    .locals 4

    .line 186
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    iget-wide v2, p1, Lorg/bitcoinj/core/Coin;->value:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public divide(J)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 168
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    div-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public divideAndRemainder(J)[Lorg/bitcoinj/core/Coin;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bitcoinj/core/Coin;

    .line 182
    new-instance v1, Lorg/bitcoinj/core/Coin;

    iget-wide v2, p0, Lorg/bitcoinj/core/Coin;->value:J

    div-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/bitcoinj/core/Coin;

    iget-wide v2, p0, Lorg/bitcoinj/core/Coin;->value:J

    rem-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 288
    :cond_1
    iget-wide v2, p0, Lorg/bitcoinj/core/Coin;->value:J

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iget-wide v4, p1, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getValue()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 293
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public isGreaterThan(Lorg/bitcoinj/core/Coin;)Z
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLessThan(Lorg/bitcoinj/core/Coin;)Z
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNegative()Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPositive()Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZero()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    return-wide v0
.end method

.method public minus(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public multiply(J)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 154
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v1, v2, p1, p2}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public negate()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 245
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    neg-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public plus(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public shiftLeft(I)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 230
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    shl-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public shiftRight(I)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 234
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    shr-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public signum()I
    .locals 5

    .line 239
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public smallestUnitExponent()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;
    .locals 5

    .line 145
    new-instance v0, Lorg/bitcoinj/core/Coin;

    iget-wide v1, p0, Lorg/bitcoinj/core/Coin;->value:J

    iget-wide v3, p1, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Coin;-><init>(J)V

    return-object v0
.end method

.method public times(I)Lorg/bitcoinj/core/Coin;
    .locals 2

    int-to-long v0, p1

    .line 164
    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public times(J)Lorg/bitcoinj/core/Coin;
    .locals 0

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public toFriendlyString()Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lorg/bitcoinj/core/Coin;->FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/utils/MonetaryFormat;->format(Lorg/bitcoinj/core/Monetary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 1

    .line 276
    sget-object v0, Lorg/bitcoinj/core/Coin;->PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/utils/MonetaryFormat;->format(Lorg/bitcoinj/core/Monetary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 281
    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
