.class public final Lorg/bitcoinj/utils/Fiat;
.super Ljava/lang/Object;
.source "Fiat.java"

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
        "Lorg/bitcoinj/utils/Fiat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

.field private static final PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

.field public static final SMALLEST_UNIT_EXPONENT:I = 0x4


# instance fields
.field public final currencyCode:Ljava/lang/String;

.field public final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 178
    sget-object v0, Lorg/bitcoinj/utils/MonetaryFormat;->FIAT:Lorg/bitcoinj/utils/MonetaryFormat;

    invoke-virtual {v0}, Lorg/bitcoinj/utils/MonetaryFormat;->postfixCode()Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/Fiat;->FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    .line 188
    sget-object v0, Lorg/bitcoinj/utils/MonetaryFormat;->FIAT:Lorg/bitcoinj/utils/MonetaryFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bitcoinj/utils/MonetaryFormat;->minDecimals(I)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/utils/MonetaryFormat;->repeatOptionalDecimals(II)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/utils/MonetaryFormat;->noCode()Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/Fiat;->PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    .line 51
    iput-object p1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public static parseFiat(Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoinj/utils/Fiat;
    .locals 2

    .line 87
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 89
    invoke-static {p0, v0, v1}, Lorg/bitcoinj/utils/Fiat;->valueOf(Ljava/lang/String;J)Lorg/bitcoinj/utils/Fiat;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;J)Lorg/bitcoinj/utils/Fiat;
    .locals 1

    .line 55
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    invoke-direct {v0, p0, p1, p2}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/bitcoinj/utils/Fiat;)Lorg/bitcoinj/utils/Fiat;
    .locals 6

    .line 96
    iget-object v0, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    iget-wide v4, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lorg/bitcoinj/utils/Fiat;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/Fiat;->compareTo(Lorg/bitcoinj/utils/Fiat;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/bitcoinj/utils/Fiat;)I
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object v1, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object p1, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 222
    :cond_0
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    iget-wide v2, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public divide(Lorg/bitcoinj/utils/Fiat;)J
    .locals 4

    .line 118
    iget-object v0, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 119
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    iget-wide v2, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public divide(J)Lorg/bitcoinj/utils/Fiat;
    .locals 4

    .line 110
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    div-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public divideAndRemainder(J)[Lorg/bitcoinj/utils/Fiat;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bitcoinj/utils/Fiat;

    .line 114
    new-instance v1, Lorg/bitcoinj/utils/Fiat;

    iget-object v2, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v3, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    div-long/2addr v3, p1

    invoke-direct {v1, v2, v3, v4}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/bitcoinj/utils/Fiat;

    iget-object v2, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v3, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    rem-long/2addr v3, p1

    invoke-direct {v1, v2, v3, v4}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    check-cast p1, Lorg/bitcoinj/utils/Fiat;

    .line 210
    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    iget-wide v4, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object p1, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 215
    iget-wide v1, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGreaterThan(Lorg/bitcoinj/utils/Fiat;)Z
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/Fiat;->compareTo(Lorg/bitcoinj/utils/Fiat;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLessThan(Lorg/bitcoinj/utils/Fiat;)Z
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/Fiat;->compareTo(Lorg/bitcoinj/utils/Fiat;)I

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

    .line 133
    invoke-virtual {p0}, Lorg/bitcoinj/utils/Fiat;->signum()I

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

    .line 126
    invoke-virtual {p0}, Lorg/bitcoinj/utils/Fiat;->signum()I

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

    .line 140
    invoke-virtual {p0}, Lorg/bitcoinj/utils/Fiat;->signum()I

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

    .line 175
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    return-wide v0
.end method

.method public multiply(J)Lorg/bitcoinj/utils/Fiat;
    .locals 4

    .line 106
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v2, v3, p1, p2}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide p1

    invoke-direct {v0, v1, p1, p2}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public negate()Lorg/bitcoinj/utils/Fiat;
    .locals 4

    .line 167
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    neg-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public signum()I
    .locals 5

    .line 161
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

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

    const/4 v0, 0x4

    return v0
.end method

.method public subtract(Lorg/bitcoinj/utils/Fiat;)Lorg/bitcoinj/utils/Fiat;
    .locals 6

    .line 101
    iget-object v0, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 102
    new-instance v0, Lorg/bitcoinj/utils/Fiat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-wide v2, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    iget-wide v4, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/bitcoinj/utils/Fiat;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public toFriendlyString()Ljava/lang/String;
    .locals 3

    .line 185
    sget-object v0, Lorg/bitcoinj/utils/Fiat;->FRIENDLY_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    iget-object v1, p0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/bitcoinj/utils/MonetaryFormat;->code(ILjava/lang/String;)Lorg/bitcoinj/utils/MonetaryFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/utils/MonetaryFormat;->format(Lorg/bitcoinj/core/Monetary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 1

    .line 197
    sget-object v0, Lorg/bitcoinj/utils/Fiat;->PLAIN_FORMAT:Lorg/bitcoinj/utils/MonetaryFormat;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/utils/MonetaryFormat;->format(Lorg/bitcoinj/core/Monetary;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    iget-wide v0, p0, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
