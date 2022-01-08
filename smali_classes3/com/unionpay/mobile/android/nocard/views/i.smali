.class final Lcom/unionpay/mobile/android/nocard/views/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/g;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/g;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/i;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/i;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/g;->a(Lcom/unionpay/mobile/android/nocard/views/g;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/i;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_open_user_protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/i;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/g;->b(Lcom/unionpay/mobile/android/nocard/views/g;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/a;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/i;->a:Lcom/unionpay/mobile/android/nocard/views/g;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/g;->b(Lcom/unionpay/mobile/android/nocard/views/g;)Lcom/unionpay/mobile/android/upwidget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upwidget/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
