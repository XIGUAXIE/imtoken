.class public final Lcom/unionpay/mobile/android/widgets/av;
.super Lcom/unionpay/mobile/android/widgets/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/av;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/av;->b:Lcom/unionpay/mobile/android/widgets/u;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/av;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 7

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/av;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v3, v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    if-lez v3, :cond_1

    const/16 v6, 0xc

    if-gt v3, v6, :cond_1

    if-gt v0, v4, :cond_0

    if-ne v0, v4, :cond_1

    if-lt v3, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return v5

    :cond_2
    return v2
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_select_availdata"

    return-object v0
.end method
