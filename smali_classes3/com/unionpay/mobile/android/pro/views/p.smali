.class final Lcom/unionpay/mobile/android/pro/views/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/k;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->l(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/k;->m(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/c;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)I

    move-result v0

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->m()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->m()V

    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->m()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->n(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->m()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->o(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->p(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aP:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/p;->a:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->q(Lcom/unionpay/mobile/android/pro/views/k;)V

    goto :goto_0
.end method
