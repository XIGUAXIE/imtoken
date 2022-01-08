.class final Lcom/unionpay/mobile/android/nocard/views/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o$b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->a(Lcom/unionpay/mobile/android/nocard/views/o$b;)Landroid/widget/PopupWindow;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->b(Lcom/unionpay/mobile/android/nocard/views/o$b;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->c(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/upwidget/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result p4

    sub-int p4, p3, p4

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p5}, Lcom/unionpay/mobile/android/nocard/views/o$b;->b(Lcom/unionpay/mobile/android/nocard/views/o$b;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4, p3}, Lcom/unionpay/mobile/android/nocard/views/o$b;->a(Lcom/unionpay/mobile/android/nocard/views/o$b;I)I

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->c(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/upwidget/c;

    move-result-object p4

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p5}, Lcom/unionpay/mobile/android/nocard/views/o$b;->d(Lcom/unionpay/mobile/android/nocard/views/o$b;)I

    move-result p5

    invoke-virtual {p4, p5}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    :cond_0
    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->e(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/nocard/views/o$a;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p4}, Lcom/unionpay/mobile/android/nocard/views/o$b;->e(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/nocard/views/o$a;

    move-result-object p4

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/ad;->a:Lcom/unionpay/mobile/android/nocard/views/o$b;

    invoke-static {p5}, Lcom/unionpay/mobile/android/nocard/views/o$b;->c(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/upwidget/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result p5

    sub-int p5, p3, p5

    invoke-interface {p4, p5}, Lcom/unionpay/mobile/android/nocard/views/o$a;->a(I)V

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
