.class final Lcom/unionpay/mobile/android/upwidget/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/q;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/s;->a:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/s;->a:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/q;->b(Lcom/unionpay/mobile/android/upwidget/q;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
