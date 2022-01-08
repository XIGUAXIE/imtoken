.class public Lorg/bitcoinj/utils/BtcFormat$Builder;
.super Ljava/lang/Object;
.source "BtcFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private fractionGroups:[I

.field private locale:Ljava/util/Locale;

.field private localizedPattern:Ljava/lang/String;

.field private minimumFractionDigits:I

.field private pattern:Ljava/lang/String;

.field private scale:I

.field private style:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

.field private symbol:Ljava/lang/String;

.field private variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    sget-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->UNSET:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 556
    invoke-static {}, Lorg/bitcoinj/utils/BtcFormat;->access$600()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->locale:Ljava/util/Locale;

    const/4 v0, 0x2

    .line 557
    iput v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->minimumFractionDigits:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 558
    iput-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->fractionGroups:[I

    .line 559
    sget-object v1, Lorg/bitcoinj/utils/BtcAutoFormat$Style;->CODE:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    iput-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->style:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    .line 560
    iput v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->scale:I

    const-string v0, ""

    .line 561
    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->code:Ljava/lang/String;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/utils/BtcFormat$1;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Lorg/bitcoinj/utils/BtcFormat$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/bitcoinj/utils/BtcFormat$Builder;)Lorg/bitcoinj/utils/BtcAutoFormat$Style;
    .locals 0

    .line 542
    iget-object p0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->style:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bitcoinj/utils/BtcFormat$Builder;)Ljava/util/Locale;
    .locals 0

    .line 542
    iget-object p0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$300(Lorg/bitcoinj/utils/BtcFormat$Builder;)I
    .locals 0

    .line 542
    iget p0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->minimumFractionDigits:I

    return p0
.end method

.method static synthetic access$400(Lorg/bitcoinj/utils/BtcFormat$Builder;)I
    .locals 0

    .line 542
    iget p0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->scale:I

    return p0
.end method

.method static synthetic access$500(Lorg/bitcoinj/utils/BtcFormat$Builder;)[I
    .locals 0

    .line 542
    iget-object p0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->fractionGroups:[I

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bitcoinj/utils/BtcFormat;
    .locals 7

    .line 720
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->newInstance(Lorg/bitcoinj/utils/BtcFormat$Builder;)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->symbol:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->code:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_3

    :cond_0
    iget-object v1, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v2, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    .line 723
    iget-object v3, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->symbol:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->symbol:Ljava/lang/String;

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->code:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->code:Ljava/lang/String;

    goto :goto_1

    .line 725
    :cond_2
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    .line 723
    :goto_1
    invoke-static {v3, v4, v2}, Lorg/bitcoinj/utils/BtcFormat;->access$700(Ljava/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Ljava/text/DecimalFormatSymbols;

    .line 727
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    :cond_3
    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->pattern:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_6

    .line 729
    :cond_4
    iget-object v1, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    .line 730
    iget-object v2, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    invoke-static {v3}, Lorg/bitcoinj/utils/BtcFormat;->negify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    goto :goto_2

    .line 731
    :cond_5
    iget-object v2, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->pattern:Ljava/lang/String;

    invoke-static {v3}, Lorg/bitcoinj/utils/BtcFormat;->negify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 732
    :goto_2
    iget-object v2, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 733
    iget-object v2, v0, Lorg/bitcoinj/utils/BtcFormat;->numberFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    .line 727
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public code(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public fractionDigits(I)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 589
    invoke-virtual {p0, p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->minimumFractionDigits(I)Lorg/bitcoinj/utils/BtcFormat$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs fractionGroups([I)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 630
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->fractionGroups:[I

    return-object p0
.end method

.method public locale(Ljava/util/Locale;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 634
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public localizedPattern(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 2

    .line 711
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->pattern:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 713
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    return-object p0

    .line 712
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot invoke both pattern() and localizedPattern()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minimumFractionDigits(I)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 619
    iput p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->minimumFractionDigits:I

    return-object p0
.end method

.method public pattern(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 2

    .line 677
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->localizedPattern:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 679
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->pattern:Ljava/lang/String;

    return-object p0

    .line 678
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot invoke both pattern() and localizedPattern()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scale(I)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 2

    .line 606
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    sget-object v1, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->AUTO:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    if-eq v0, v1, :cond_0

    .line 608
    sget-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->FIXED:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 609
    iput p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->scale:I

    return-object p0

    .line 607
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot invoke both scale() and style()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public style(Lorg/bitcoinj/utils/BtcAutoFormat$Style;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 2

    .line 576
    iget-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    sget-object v1, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->FIXED:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    if-eq v0, v1, :cond_0

    .line 578
    sget-object v0, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;->AUTO:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    iput-object v0, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->variant:Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;

    .line 579
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->style:Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    return-object p0

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot invoke both style() and scale()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public symbol(Ljava/lang/String;)Lorg/bitcoinj/utils/BtcFormat$Builder;
    .locals 0

    .line 644
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$Builder;->symbol:Ljava/lang/String;

    return-object p0
.end method
