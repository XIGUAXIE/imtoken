.class final Lcom/unionpay/mobile/android/widgets/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/aj;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/aj;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_select_reduce_activity"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/unionpay/mobile/android/utils/o;->h:[Ljava/lang/String;

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    const-string v0, "type"

    invoke-static {p5, p4, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/widgets/aj;ILjava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    const-string v0, "label"

    invoke-static {p5, p4, p3, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/widgets/aj;IILjava/lang/String;)Ljava/lang/String;

    iget-object p5, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    invoke-static {p5, p4, p3}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/widgets/aj;II)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/widgets/aj;)Landroid/widget/PopupWindow;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/am;->a:Lcom/unionpay/mobile/android/widgets/aj;

    invoke-static {p4}, Lcom/unionpay/mobile/android/widgets/aj;->a(Lcom/unionpay/mobile/android/widgets/aj;)Landroid/widget/PopupWindow;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V

    return-void
.end method
