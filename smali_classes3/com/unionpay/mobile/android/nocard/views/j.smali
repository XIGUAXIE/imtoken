.class final Lcom/unionpay/mobile/android/nocard/views/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/g;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/g;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/j;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/j;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/g;->i()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/j;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/g;->a(Lcom/unionpay/mobile/android/nocard/views/g;I)I

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
