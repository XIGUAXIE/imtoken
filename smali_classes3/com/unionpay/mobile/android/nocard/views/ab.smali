.class final Lcom/unionpay/mobile/android/nocard/views/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ab;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ab;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/o;->a(I)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
