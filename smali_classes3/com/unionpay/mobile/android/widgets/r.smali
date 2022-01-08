.class final Lcom/unionpay/mobile/android/widgets/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/p;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/p;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

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

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-virtual {p5}, Lcom/unionpay/mobile/android/widgets/p;->s()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_select_installment"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/unionpay/mobile/android/utils/o;->f:[Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {p4, p3}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;I)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/r;->a:Lcom/unionpay/mobile/android/widgets/p;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/p;->a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
