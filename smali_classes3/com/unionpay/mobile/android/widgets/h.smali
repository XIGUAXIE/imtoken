.class final Lcom/unionpay/mobile/android/widgets/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/g;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/g;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/h;->a:Lcom/unionpay/mobile/android/widgets/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/h;->a:Lcom/unionpay/mobile/android/widgets/g;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/g;->a(Lcom/unionpay/mobile/android/widgets/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/h;->a:Lcom/unionpay/mobile/android/widgets/g;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/g;->a(Lcom/unionpay/mobile/android/widgets/g;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
