.class public final Lcom/unionpay/mobile/android/nocard/utils/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)I
    .locals 3

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->an:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    iget-boolean v1, p1, Lcom/unionpay/mobile/android/model/b;->aw:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/unionpay/mobile/android/model/b;->ao:I

    const v2, 0x11101

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    const/4 p0, 0x1

    :cond_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    iget-object p0, p1, Lcom/unionpay/mobile/android/model/b;->t:Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONArray;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    return v0
.end method
