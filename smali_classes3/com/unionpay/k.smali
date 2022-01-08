.class final Lcom/unionpay/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/i;


# direct methods
.method constructor <init>(Lcom/unionpay/i;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/k;->a:Lcom/unionpay/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/k;->a:Lcom/unionpay/i;

    iget-object v0, v0, Lcom/unionpay/i;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-static {v0}, Lcom/unionpay/UPPayWapActivity;->a(Lcom/unionpay/UPPayWapActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
