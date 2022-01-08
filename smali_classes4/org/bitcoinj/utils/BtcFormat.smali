.class public abstract Lorg/bitcoinj/utils/BtcFormat;
.super Ljava/text/Format;
.source "BtcFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;,
        Lorg/bitcoinj/utils/BtcFormat$Builder;
    }
.end annotation


# static fields
.field private static final COIN_CODE:Ljava/lang/String; = "BTC"

.field public static final COIN_SCALE:I = 0x0

.field private static final COIN_SYMBOL:Ljava/lang/String; = "\u0e3f"

.field protected static final COIN_SYMBOL_ALT:Ljava/lang/String; = "\u0243"

.field public static final MICROCOIN_SCALE:I = 0x6

.field public static final MILLICOIN_SCALE:I = 0x3


# instance fields
.field private volatile ci:Ljava/lang/String;

.field private coinPattern:Ljava/util/regex/Pattern;

.field protected final decimalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile denoms:[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

.field protected final minimumFractionDigits:I

.field protected final numberFormat:Ljava/text/DecimalFormat;


# direct methods
.method protected constructor <init>(Ljava/text/DecimalFormat;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 744
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const-string v0, "(\u0e3f|\u0243|B\u20e6|BTC|XBT)"

    .line 1313
    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "There can be no fewer than zero fractional decimal places"

    .line 745
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 746
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    .line 747
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 748
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 749
    iput p2, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    .line 750
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 751
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget p2, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 752
    iput-object p3, p0, Lorg/bitcoinj/utils/BtcFormat;->decimalGroups:Ljava/util/List;

    .line 753
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget-object p3, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    .line 755
    invoke-virtual {p3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p3

    invoke-virtual {p3}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object p3

    const-string v0, "\u0e3f"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "\u0243"

    goto :goto_1

    :cond_1
    const-string p3, "\u0e3f"

    :goto_1
    const-string v0, "BTC"

    .line 753
    invoke-static {p2, p3, v0}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    .line 759
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic access$600()Ljava/util/Locale;
    .locals 1

    .line 470
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;
    .locals 0

    .line 470
    invoke-static {p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    return-object p0
.end method

.method private static boxAsList([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 927
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p0, v3

    if-lez v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const-string v6, "Size of decimal group must be at least one."

    .line 928
    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 929
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static builder()Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 2

    .line 741
    new-instance v0, Lorg/bitcoinj/utils/BtcFormat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bitcoinj/utils/BtcFormat$Builder;-><init>(Lorg/bitcoinj/utils/BtcFormat$1;)V

    return-object v0
.end method

.method private static calculateFractionPlaces(Ljava/math/BigDecimal;IILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1259
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1260
    :cond_0
    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->offSatoshis(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1262
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1263
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1267
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p2, v0

    if-le p2, p1, :cond_1

    move p2, p1

    goto :goto_1

    :cond_3
    :goto_2
    return p2
.end method

.method private static defaultLocale()Ljava/util/Locale;
    .locals 1

    .line 524
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private denominateAndRound(Ljava/math/BigInteger;ILjava/util/List;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 1223
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->scale(Ljava/math/BigInteger;I)I

    move-result v0

    .line 1224
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->offSatoshis(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1225
    invoke-static {p1, v0, p2, p3}, Lorg/bitcoinj/utils/BtcFormat;->calculateFractionPlaces(Ljava/math/BigDecimal;IILjava/util/List;)I

    move-result p2

    .line 1226
    sget-object p3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method private format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ILjava/util/List;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "There can be no fewer than zero fractional decimal places"

    .line 1184
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1185
    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v2

    .line 1186
    :try_start_0
    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    .line 1187
    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->inSatoshis(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lorg/bitcoinj/utils/BtcFormat;->denominateAndRound(Ljava/math/BigInteger;ILjava/util/List;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1188
    iget-object p4, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    .line 1189
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p5

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-static {p4, p5, v4}, Lorg/bitcoinj/utils/BtcFormat;->setFormatterDigits(Ljava/text/DecimalFormat;II)Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    .line 1190
    iget-object p5, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p5, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1191
    iget-object p2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p2, v3}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1192
    iget-object p2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p2, p3, p4}, Lorg/bitcoinj/utils/BtcFormat;->setFormatterDigits(Ljava/text/DecimalFormat;II)Lcom/google/common/collect/ImmutableList;

    .line 1193
    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 1194
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1521
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getCodeInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 783
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getCodeInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCodeInstance(I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 806
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bitcoinj/utils/BtcFormat;->getCodeInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCodeInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 821
    sget-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-static {v0, p0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCodeInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 844
    sget-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-static {v0, p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCoinInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 923
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getCoinInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getCoinInstance(I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 2

    .line 944
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, v0, p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCoinInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/4 v2, 0x2

    .line 952
    invoke-static {v0, p0, v2, v1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getCoinInstance(Ljava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 963
    invoke-static {p2}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 769
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 1068
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getInstance(II[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 1057
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p2}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, v0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x2

    .line 1080
    invoke-static {p0, p1, v1, v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/bitcoinj/utils/BtcFormat;"
        }
    .end annotation

    .line 1107
    new-instance v0, Lorg/bitcoinj/utils/BtcFixedFormat;

    invoke-direct {v0, p1, p0, p2, p3}, Lorg/bitcoinj/utils/BtcFixedFormat;-><init>(Ljava/util/Locale;IILjava/util/List;)V

    return-object v0
.end method

.method public static varargs getInstance(ILjava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 0

    .line 1093
    invoke-static {p3}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 0

    .line 814
    invoke-static {p0}, Lorg/bitcoinj/utils/BtcFormat;->getCodeInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 0

    .line 832
    invoke-static {p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getCodeInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 874
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 886
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    const/4 v0, 0x2

    .line 899
    invoke-static {p0, p1, v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 915
    new-instance v0, Lorg/bitcoinj/utils/BtcAutoFormat;

    invoke-direct {v0, p1, p0, p2}, Lorg/bitcoinj/utils/BtcAutoFormat;-><init>(Ljava/util/Locale;Lorg/bitcoinj/utils/BtcAutoFormat$Style;I)V

    return-object v0
.end method

.method public static getMicroInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 1011
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getMicroInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMicroInstance(I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 2

    .line 1031
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, v0, p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMicroInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    const/4 v0, 0x6

    .line 1019
    invoke-static {v0, p0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getMicroInstance(Ljava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 1043
    invoke-static {p2}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMilliInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 971
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getMilliInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMilliInstance(I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 2

    .line 991
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1, v0, p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getMilliInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 979
    invoke-static {v1, p0, v2, v0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getMilliInstance(Ljava/util/Locale;I[I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 1003
    invoke-static {p2}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(ILjava/util/Locale;ILjava/util/List;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getSymbolInstance()Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 776
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->getSymbolInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getSymbolInstance(I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 794
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->defaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bitcoinj/utils/BtcFormat;->getSymbolInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getSymbolInstance(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 853
    sget-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->SYMBOL:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-static {v0, p0}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getSymbolInstance(Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;
    .locals 1

    .line 865
    sget-object v0, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->SYMBOL:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    invoke-static {v0, p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p0

    return-object p0
.end method

.method private static inSatoshis(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3

    .line 1281
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1283
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 1284
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_1

    .line 1285
    :cond_1
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 1286
    check-cast p0, Ljava/math/BigDecimal;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1287
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    .line 1288
    :cond_2
    instance-of v0, p0, Lorg/bitcoinj/core/Coin;

    if-eqz v0, :cond_3

    .line 1289
    check-cast p0, Lorg/bitcoinj/core/Coin;

    iget-wide v0, p0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    .line 1291
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a Bicoin value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_4
    :goto_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected static negify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ";"

    .line 1508
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, "-"

    .line 1510
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "^([^#0,.\']*(\'[^\']*\')?)*"

    const-string v2, "$0-"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1511
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Positive pattern contains negative sign"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static offSatoshis(I)I
    .locals 0

    rsub-int/lit8 p0, p0, 0x8

    return p0
.end method

.method protected static prefixCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1474
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No known prefix for scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1468
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1467
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1466
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :pswitch_3
    return-object p0

    .line 1470
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "da"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1471
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1472
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1469
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u00b5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1473
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static prefixSymbol(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1489
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No known prefix for scale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1483
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u20a5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1482
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u00a2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1481
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :pswitch_3
    return-object p0

    .line 1485
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "da"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1486
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1487
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "k"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1484
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u00b5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1488
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static prefixUnitsIndicator(Ljava/text/DecimalFormat;I)V
    .locals 2

    .line 1380
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1381
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 1383
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/bitcoinj/utils/BtcFormat;->prefixSymbol(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bitcoinj/utils/BtcFormat;->prefixCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1382
    invoke-static {p0, v1, p1}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    return-void
.end method

.method private static setFormatterDigits(Ljava/text/DecimalFormat;II)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "II)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1236
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1234
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1238
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1239
    invoke-virtual {p0, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-object v0
.end method

.method private static setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;
    .locals 0

    .line 1348
    invoke-static {p0, p1, p1}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    move-result-object p0

    return-object p0
.end method

.method private static setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;
    .locals 2

    .line 1359
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1360
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    .line 1362
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-object v1
.end method


# virtual methods
.method public coinCode()Ljava/lang/String;
    .locals 2

    .line 1531
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1532
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1533
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public coinSymbol()Ljava/lang/String;
    .locals 2

    .line 1525
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1526
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1527
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method denomMatchers()[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;
    .locals 6

    .line 1317
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->denoms:[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    if-nez v0, :cond_3

    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->denoms:[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    if-nez v0, :cond_2

    .line 1321
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    const-string v1, "\\("

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1323
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    const-string v1, "\\)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    .line 1325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->coinPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    const/4 v1, 0x0

    .line 1326
    new-instance v2, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00a2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?|c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u20a5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?|m"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1328
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const/4 v5, 0x3

    invoke-direct {v2, p0, v3, v5}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([\u00b5u]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1329
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(da"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v4}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-instance v2, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1331
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, -0x2

    invoke-direct {v2, p0, v4, v5}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1332
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v5, -0x3

    invoke-direct {v2, p0, v4, v5}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v2, v0, v1

    new-instance v1, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat;->ci:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1333
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v4, -0x6

    invoke-direct {v1, p0, v2, v4}, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;-><init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->denoms:[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    .line 1336
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1575
    :cond_0
    instance-of v1, p1, Lorg/bitcoinj/utils/BtcFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1576
    :cond_1
    check-cast p1, Lorg/bitcoinj/utils/BtcFormat;

    .line 1577
    invoke-virtual {p1}, Lorg/bitcoinj/utils/BtcFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1578
    invoke-virtual {p1}, Lorg/bitcoinj/utils/BtcFormat;->symbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->symbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    iget v1, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs format(Ljava/lang/Object;I[I)Ljava/lang/String;
    .locals 6

    .line 1161
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-static {p3}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/utils/BtcFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ILjava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    .line 1144
    iget v4, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->decimalGroups:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/utils/BtcFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ILjava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public varargs format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;I[I)Ljava/lang/StringBuffer;
    .locals 6

    .line 1179
    invoke-static {p5}, Lorg/bitcoinj/utils/BtcFormat;->boxAsList([I)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/utils/BtcFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ILjava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    .line 1121
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1122
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1123
    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat;->inSatoshis(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    iget v2, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->decimalGroups:Ljava/util/List;

    invoke-direct {p0, p1, v2, v3}, Lorg/bitcoinj/utils/BtcFormat;->denominateAndRound(Ljava/math/BigInteger;ILjava/util/List;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1124
    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/bitcoinj/utils/BtcFormat;->setFormatterDigits(Ljava/text/DecimalFormat;II)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1125
    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3, p1}, Ljava/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    .line 1126
    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1127
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/bitcoinj/utils/BtcFormat;->setFormatterDigits(Ljava/text/DecimalFormat;II)Lcom/google/common/collect/ImmutableList;

    .line 1128
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1586
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->symbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/utils/BtcFormat;->minimumFractionDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->decimalGroups:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Lorg/bitcoinj/core/Coin;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1458
    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/bitcoinj/core/Coin;
    .locals 9

    .line 1411
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1412
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00a4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1413
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->denomMatchers()[Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 1414
    iget-object v7, v6, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1415
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1416
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1417
    iget v4, v6, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;->scale:I

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    .line 1422
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->coinPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1423
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 1424
    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lorg/bitcoinj/utils/BtcFormat;->setSymbolAndCode(Ljava/text/DecimalFormat;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    goto :goto_2

    .line 1426
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->scale()I

    move-result v4

    move-object v1, v2

    .line 1428
    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5, p1, p2}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 1430
    :try_start_1
    check-cast p1, Ljava/math/BigDecimal;

    .line 1431
    invoke-static {v4}, Lorg/bitcoinj/utils/BtcFormat;->offSatoshis(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 1430
    invoke-static {v4, v5}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1434
    :catch_0
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 1436
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 1437
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 1303
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/utils/BtcFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public pattern()Ljava/lang/String;
    .locals 11

    .line 1540
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1541
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1542
    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat;->decimalGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "("

    .line 1543
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-static {v4, v3}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 1546
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1547
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1549
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 1550
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 1551
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    .line 1552
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1553
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(^|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")([^"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1556
    invoke-static {v8}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\']*(\'[^\']*\')?)*["

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]+"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1559
    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00a4\u00a4"

    .line 1561
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u00a4"

    .line 1562
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFormat;->coinSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract scale()I
.end method

.method protected abstract scale(Ljava/math/BigInteger;I)I
.end method

.method public symbols()Ljava/text/DecimalFormatSymbols;
    .locals 2

    .line 1566
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 1567
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
