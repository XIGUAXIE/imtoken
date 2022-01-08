.class public final Lorg/bitcoinj/utils/BtcAutoFormat;
.super Lorg/bitcoinj/utils/BtcFormat;
.source "BtcAutoFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/utils/BtcAutoFormat$Style;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Locale;Lorg/bitcoinj/utils/BtcAutoFormat$Style;I)V
    .locals 1

    .line 112
    invoke-static {p1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    check-cast p1, Ljava/text/DecimalFormat;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lorg/bitcoinj/utils/BtcFormat;-><init>(Ljava/text/DecimalFormat;ILjava/util/List;)V

    .line 113
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcAutoFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->apply(Ljava/text/DecimalFormat;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 190
    :cond_0
    instance-of v0, p1, Lorg/bitcoinj/utils/BtcAutoFormat;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 191
    :cond_1
    invoke-super {p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fractionPlaces()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/bitcoinj/utils/BtcAutoFormat;->minimumFractionDigits:I

    return v0
.end method

.method protected scale()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected scale(Ljava/math/BigInteger;I)I
    .locals 7

    rsub-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    .line 142
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 143
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 144
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x6

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 148
    sget-object v4, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    const/4 v0, 0x3

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p1, v3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v4

    .line 152
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    .line 156
    :cond_3
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    .line 158
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v0, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    add-int/lit8 v5, p2, -0x3

    .line 159
    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    .line 160
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v4, v0, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sub-int/2addr p2, v3

    .line 161
    invoke-virtual {v4, p2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p2

    .line 162
    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-gez v4, :cond_4

    .line 163
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_1

    .line 165
    :cond_4
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    .line 170
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcAutoFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/BtcAutoFormat;->prefixUnitsIndicator(Ljava/text/DecimalFormat;I)V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcAutoFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
