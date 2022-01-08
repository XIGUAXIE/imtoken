.class final Lcom/unionpay/mobile/android/widgets/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/k;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->a(Lcom/unionpay/mobile/android/widgets/k;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "errMsg"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->a()Ljava/lang/String;

    move-result-object v2

    const-string v5, "[A-Za-z0-9]{8,32}"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/widgets/k;->a(Z)V

    const-string v1, "value"

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/k;->b(Lcom/unionpay/mobile/android/widgets/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aD:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->C:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->aC:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->C:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->c(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    iget-object v0, v0, Lcom/unionpay/mobile/android/widgets/k;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->e()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/k;->a(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/l;->a:Lcom/unionpay/mobile/android/widgets/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/k;->d(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
