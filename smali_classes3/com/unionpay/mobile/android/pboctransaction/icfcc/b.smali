.class final Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p2}, Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a$a;->a(Landroid/os/IBinder;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/icfcc/b;->a:Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;->a(Lcom/unionpay/mobile/android/pboctransaction/icfcc/a;Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;)Lcn/gov/pbc/tsm/client/mobile/android/bank/service/a;

    return-void
.end method
