.class public final Lorg/bitcoinj/utils/BtcFixedFormat;
.super Lorg/bitcoinj/utils/BtcFormat;
.source "BtcFixedFormat.java"


# static fields
.field public static final REPEATING_DOUBLETS:[I

.field public static final REPEATING_PLACES:[I

.field public static final REPEATING_TRIPLETS:[I


# instance fields
.field private final scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_0

    sput-object v0, Lorg/bitcoinj/utils/BtcFixedFormat;->REPEATING_PLACES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_1

    sput-object v0, Lorg/bitcoinj/utils/BtcFixedFormat;->REPEATING_DOUBLETS:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_2

    sput-object v0, Lorg/bitcoinj/utils/BtcFixedFormat;->REPEATING_TRIPLETS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method protected constructor <init>(Ljava/util/Locale;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    check-cast p1, Ljava/text/DecimalFormat;

    invoke-direct {p0, p1, p3, p4}, Lorg/bitcoinj/utils/BtcFormat;-><init>(Ljava/text/DecimalFormat;ILjava/util/List;)V

    const/16 p1, 0x8

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "decimal cannot be shifted "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " places"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-static {p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    iput p2, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    return-void
.end method

.method private static prefixLabel(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fixed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Millicoin-"

    return-object p0

    :pswitch_1
    const-string p0, "Centicoin-"

    return-object p0

    :pswitch_2
    const-string p0, "Decicoin-"

    return-object p0

    :pswitch_3
    const-string p0, "Coin-"

    return-object p0

    :pswitch_4
    const-string p0, "Dekacoin-"

    return-object p0

    :pswitch_5
    const-string p0, "Hectocoin-"

    return-object p0

    :pswitch_6
    const-string p0, "Kilocoin-"

    return-object p0

    :cond_0
    const-string p0, "Microcoin-"

    return-object p0

    :cond_1
    const-string p0, "Megacoin-"

    return-object p0

    nop

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


# virtual methods
.method public code()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFixedFormat;->coinCode()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    invoke-static {v0, v1}, Lorg/bitcoinj/utils/BtcFixedFormat;->prefixCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lorg/bitcoinj/utils/BtcFixedFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    check-cast p1, Lorg/bitcoinj/utils/BtcFixedFormat;

    .line 138
    invoke-super {p0, p1}, Lorg/bitcoinj/utils/BtcFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/bitcoinj/utils/BtcFixedFormat;->scale()I

    move-result v1

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFixedFormat;->scale()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lorg/bitcoinj/utils/BtcFixedFormat;->decimalGroups:Ljava/util/List;

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->decimalGroups:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fractionPlaceGroups()[I
    .locals 6

    .line 124
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->decimalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 125
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 126
    new-array v3, v1, [I

    .line 127
    iget v4, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->minimumFractionDigits:I

    const/4 v5, 0x0

    aput v4, v3, v5

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v4, v2, -0x1

    .line 128
    aget-object v4, v0, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    invoke-super {p0}, Lorg/bitcoinj/utils/BtcFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public scale()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    return v0
.end method

.method protected scale(Ljava/math/BigInteger;I)I
    .locals 0

    .line 92
    iget-object p1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget p2, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    invoke-static {p1, p2}, Lorg/bitcoinj/utils/BtcFixedFormat;->prefixUnitsIndicator(Ljava/text/DecimalFormat;I)V

    .line 93
    iget p1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    return p1
.end method

.method public symbol()Ljava/lang/String;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFixedFormat;->coinSymbol()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    invoke-static {v0, v1}, Lorg/bitcoinj/utils/BtcFixedFormat;->prefixSymbol(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bitcoinj/utils/BtcFixedFormat;->scale:I

    invoke-static {v1}, Lorg/bitcoinj/utils/BtcFixedFormat;->prefixLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/utils/BtcFixedFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
