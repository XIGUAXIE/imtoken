.class final Lcom/unionpay/mobile/android/nocard/views/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/l;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/l;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/m;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/m;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/m;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->i()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method