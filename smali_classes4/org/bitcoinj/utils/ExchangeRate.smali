.class public Lorg/bitcoinj/utils/ExchangeRate;
.super Ljava/lang/Object;
.source "ExchangeRate.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final coin:Lorg/bitcoinj/core/Coin;

.field public final fiat:Lorg/bitcoinj/utils/Fiat;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/utils/Fiat;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/bitcoinj/core/Coin;->isPositive()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 39
    invoke-virtual {p2}, Lorg/bitcoinj/utils/Fiat;->isPositive()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 40
    iget-object v0, p2, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "currency code required"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    .line 42
    iput-object p2, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/utils/Fiat;)V
    .locals 1

    .line 47
    sget-object v0, Lorg/bitcoinj/core/Coin;->COIN:Lorg/bitcoinj/core/Coin;

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/utils/ExchangeRate;-><init>(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/utils/Fiat;)V

    return-void
.end method


# virtual methods
.method public coinToFiat(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/utils/Fiat;
    .locals 3

    .line 56
    iget-wide v0, p1, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-wide v0, v0, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    .line 57
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    .line 58
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    .line 59
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-object v0, v0, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/utils/Fiat;->valueOf(Ljava/lang/String;J)Lorg/bitcoinj/utils/Fiat;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Overflow"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    check-cast p1, Lorg/bitcoinj/utils/ExchangeRate;

    .line 89
    iget-object v2, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    iget-object v3, p1, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-object p1, p1, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public fiatToCoin(Lorg/bitcoinj/utils/Fiat;)Lorg/bitcoinj/core/Coin;
    .locals 4

    .line 69
    iget-object v0, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    iget-object v1, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-object v1, v1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-object v2, v2, Lorg/bitcoinj/utils/Fiat;->currencyCode:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Currency mismatch: %s vs %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-wide v0, p1, Lorg/bitcoinj/utils/Fiat;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    iget-wide v0, v0, Lorg/bitcoinj/utils/Fiat;->value:J

    .line 73
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    .line 74
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    .line 75
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Overflow"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lorg/bitcoinj/utils/ExchangeRate;->coin:Lorg/bitcoinj/core/Coin;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/utils/ExchangeRate;->fiat:Lorg/bitcoinj/utils/Fiat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
