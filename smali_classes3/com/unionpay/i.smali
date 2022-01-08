.class final Lcom/unionpay/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/unionpay/UPPayWapActivity;


# direct methods
.method constructor <init>(Lcom/unionpay/UPPayWapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/i;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unionpay/i;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/i;->a:Lcom/unionpay/UPPayWapActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/UPPayWapActivity;->a(Lcom/unionpay/UPPayWapActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {}, Lcom/unionpay/utils/k;->a()Lcom/unionpay/utils/k;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/utils/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unionpay/utils/k;->a()Lcom/unionpay/utils/k;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/utils/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unionpay/utils/k;->a()Lcom/unionpay/utils/k;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/utils/k;->b:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/j;

    invoke-direct {v2, p0}, Lcom/unionpay/j;-><init>(Lcom/unionpay/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/unionpay/utils/k;->a()Lcom/unionpay/utils/k;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/utils/k;->c:Ljava/lang/String;

    new-instance v2, Lcom/unionpay/k;

    invoke-direct {v2, p0}, Lcom/unionpay/k;-><init>(Lcom/unionpay/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
