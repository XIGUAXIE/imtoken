.class final Lcom/unionpay/mobile/android/widgets/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/c;->a:Lcom/unionpay/mobile/android/widgets/a;

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

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/c;->a:Lcom/unionpay/mobile/android/widgets/a;

    invoke-virtual {p5}, Lcom/unionpay/mobile/android/widgets/a;->s()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_select_areacode"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/c;->a:Lcom/unionpay/mobile/android/widgets/a;

    invoke-static {p4, p3}, Lcom/unionpay/mobile/android/widgets/a;->a(Lcom/unionpay/mobile/android/widgets/a;I)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/c;->a:Lcom/unionpay/mobile/android/widgets/a;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/a;->a(Lcom/unionpay/mobile/android/widgets/a;)Landroid/widget/PopupWindow;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/c;->a:Lcom/unionpay/mobile/android/widgets/a;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/a;->a(Lcom/unionpay/mobile/android/widgets/a;)Landroid/widget/PopupWindow;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
