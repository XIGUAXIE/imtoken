.class final Lcom/unionpay/mobile/android/nocard/views/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/bi;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bl;->a:Lcom/unionpay/mobile/android/nocard/views/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bl;->a:Lcom/unionpay/mobile/android/nocard/views/bi;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/bi;->i()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
