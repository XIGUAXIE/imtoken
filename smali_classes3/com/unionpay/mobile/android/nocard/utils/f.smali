.class public final Lcom/unionpay/mobile/android/nocard/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I
    .locals 5

    const-string v0, "promotion_change_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->bt:Ljava/lang/String;

    const-string v0, "rules"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    const-string v0, "available_area_codes"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->ad:Lorg/json/JSONArray;

    const-string v0, "entrust_rules"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    const-string v0, "pre_cmd"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    const-string v0, "rules_button"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v0, "service_checkbox"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    const-string v0, "bind_card_checkbox"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    const-string v0, "timeout_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    const-string v0, "f55"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_amount"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "000000000000"

    :goto_0
    const-string v3, "trans_amt"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "order_currency"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "0156"

    :goto_1
    const-string v3, "trans currcy code"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trans_type"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "00"

    :goto_2
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mer_name"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pan"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    const-string v0, "encrypt_key"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->bf:Ljava/lang/String;

    const-string v0, "auth_id"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->bg:Ljava/lang/String;

    const-string v0, "fail_continue"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/model/b;->F:Z

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/unionpay/mobile/android/model/b;->D:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_7

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p0, 0x2

    :goto_5
    return p0
.end method

.method public static a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I
    .locals 0

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->G:Lorg/json/JSONObject;

    :cond_0
    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;
    .locals 3

    new-instance v0, Lcom/unionpay/mobile/android/model/f;

    invoke-direct {v0}, Lcom/unionpay/mobile/android/model/f;-><init>()V

    const-string v1, "promotion"

    invoke-static {p0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "instalment"

    invoke-static {p0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "promotion_instalment_msgbox"

    invoke-static {p0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "readonly"

    invoke-static {v2, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "pan"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/util/List;

    :cond_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-string v3, "user_cards"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/j;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v5, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    invoke-static {v7, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/unionpay/mobile/android/model/a;

    invoke-direct {v8, v5, v6, v7, v1}, Lcom/unionpay/mobile/android/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "available_area_codes"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->ad:Lorg/json/JSONArray;

    const-string v0, "promotion_change_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->bt:Ljava/lang/String;

    const-string v0, "user_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->ac:Lorg/json/JSONArray;

    const-string v0, "rules"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    const-string v0, "service_url"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->Z:Lorg/json/JSONObject;

    const-string v0, "bind_url"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aa:Lorg/json/JSONObject;

    const-string v0, "empty_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    const-string v0, "add_card_tip"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aY:Ljava/lang/String;

    const-string v0, "pan"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    return v2
.end method

.method public static c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    const-string v0, "cardExpireMsgBox"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "openByCounterMsgBox"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v0, "restrictPayMsgBox"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aG:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aH:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    const-string v0, "func"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/model/b;->aF:Lorg/json/JSONObject;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "label"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/model/b;->aK:Ljava/lang/String;

    const-string v2, "action"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aI:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/model/b;->aJ:Ljava/lang/String;

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
