.class final Lcom/unionpay/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/i;


# direct methods
.method constructor <init>(Lcom/unionpay/i;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/j;->a:Lcom/unionpay/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/j;->a:Lcom/unionpay/i;

    iget-object v0, v0, Lcom/unionpay/i;->a:Lcom/unionpay/UPPayWapActivity;

    const-string v1, "cancel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unionpay/UPPayWapActivity;->a(Lcom/unionpay/UPPayWapActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
