.class final Lcom/unionpay/mobile/android/widgets/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/ah;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Lcom/unionpay/mobile/android/widgets/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Lcom/unionpay/mobile/android/widgets/ah;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ah;->a(Lcom/unionpay/mobile/android/widgets/ah;)Lcom/unionpay/mobile/android/widgets/ah$a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Lcom/unionpay/mobile/android/widgets/ah;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/ah;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_change_phoneNO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Lcom/unionpay/mobile/android/widgets/ah;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ah;->a(Lcom/unionpay/mobile/android/widgets/ah;)Lcom/unionpay/mobile/android/widgets/ah$a;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Lcom/unionpay/mobile/android/widgets/ah;

    invoke-static {v1}, Lcom/unionpay/mobile/android/widgets/ah;->b(Lcom/unionpay/mobile/android/widgets/ah;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/widgets/ah$a;->e(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
