.class Lcom/alipay/sdk/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->a(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$c;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    invoke-static {}, Lcom/alipay/sdk/widget/p;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/sdk/widget/r;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/widget/r;-><init>(Lcom/alipay/sdk/widget/q;Landroid/view/View;)V

    const-wide/16 v3, 0x100

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v1}, Lcom/alipay/sdk/widget/p;->b(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/widget/p$c;->a(Lcom/alipay/sdk/widget/p;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v1}, Lcom/alipay/sdk/widget/p;->c(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/alipay/sdk/widget/q;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/widget/p$c;->b(Lcom/alipay/sdk/widget/p;)V

    .line 70
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
