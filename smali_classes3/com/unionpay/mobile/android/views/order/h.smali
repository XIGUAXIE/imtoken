.class final Lcom/unionpay/mobile/android/views/order/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unionpay/mobile/android/views/order/CViewMethods;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/views/order/CViewMethods;I)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/h;->b:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    iput p2, p0, Lcom/unionpay/mobile/android/views/order/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " touched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unionpay/mobile/android/views/order/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/h;->b:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Lcom/unionpay/mobile/android/views/order/CViewMethods;)Lcom/unionpay/mobile/android/views/order/CViewMethods$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/h;->b:Lcom/unionpay/mobile/android/views/order/CViewMethods;

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Lcom/unionpay/mobile/android/views/order/CViewMethods;)Lcom/unionpay/mobile/android/views/order/CViewMethods$a;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mobile/android/views/order/h;->a:I

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods$a;->c(I)V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
