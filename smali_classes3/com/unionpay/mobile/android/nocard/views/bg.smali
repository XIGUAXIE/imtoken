.class final Lcom/unionpay/mobile/android/nocard/views/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/unionpay/mobile/android/nocard/views/bd$a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bd$a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->d:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->a:I

    iput-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->i:[Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->d:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bg;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/bd;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
