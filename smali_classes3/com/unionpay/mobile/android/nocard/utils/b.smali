.class public final Lcom/unionpay/mobile/android/nocard/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V
    .locals 1

    const-string v0, "red_packet_url"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/unionpay/mobile/android/model/b;->as:Ljava/lang/String;

    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V
    .locals 2

    const-string v0, "pay_msg"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aR:Ljava/lang/String;

    const-string v0, "reserved"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->bj:Ljava/lang/String;

    const-string v0, "promotion_msg"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aS:Ljava/lang/String;

    const-string v0, "instalment_msg"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aT:Ljava/lang/String;

    const-string v0, "temporary_pay_flag"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/lang/String;

    iget-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "temporary_pay_info"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->aX:Ljava/lang/String;

    :cond_0
    const-string v0, "luck_draw_flag"

    invoke-static {p0, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/unionpay/mobile/android/model/b;->aV:Z

    :cond_1
    return-void
.end method
