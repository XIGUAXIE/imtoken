.class final Lcom/unionpay/mobile/android/nocard/views/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/at;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/at;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/at;->b(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/at;->b(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/at;->c(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/at;->c(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->c(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->e()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->d(Lcom/unionpay/mobile/android/nocard/views/at;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/at;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v2, v2, Lcom/unionpay/mobile/android/nocard/views/at;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_apply"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/at;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/at;->e(Lcom/unionpay/mobile/android/nocard/views/at;)Z

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Lcom/unionpay/mobile/android/nocard/views/at;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/au;->a:Lcom/unionpay/mobile/android/nocard/views/at;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/at;->a(Lcom/unionpay/mobile/android/nocard/views/at;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
