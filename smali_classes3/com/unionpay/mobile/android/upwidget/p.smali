.class final Lcom/unionpay/mobile/android/upwidget/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/j;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/j;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/upwidget/j;->c(Lcom/unionpay/mobile/android/upwidget/j;I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->l(Lcom/unionpay/mobile/android/upwidget/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->m(Lcom/unionpay/mobile/android/upwidget/j;)[Lcom/unionpay/mobile/android/upwidget/j$a;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/unionpay/mobile/android/upwidget/j$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->m(Lcom/unionpay/mobile/android/upwidget/j;)[Lcom/unionpay/mobile/android/upwidget/j$a;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/unionpay/mobile/android/upwidget/j$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->n(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->m(Lcom/unionpay/mobile/android/upwidget/j;)[Lcom/unionpay/mobile/android/upwidget/j$a;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "\u6b63\u5728\u67e5\u8be2\u3002\u3002\u3002"

    invoke-static {v1, v2, v3}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/p;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->o(Lcom/unionpay/mobile/android/upwidget/j;)Z

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
