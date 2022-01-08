.class final Lcom/unionpay/mobile/android/upwidget/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/j;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/j;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->b(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->c(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->d(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->b(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/unionpay/mobile/android/upwidget/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/upwidget/c;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->d(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/unionpay/mobile/android/upwidget/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0, p3}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lcom/unionpay/mobile/android/upwidget/j;I)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0, p3}, Lcom/unionpay/mobile/android/upwidget/j;->b(Lcom/unionpay/mobile/android/upwidget/j;I)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/k;->a:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/j;->e(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
