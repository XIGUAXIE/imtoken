.class Lproguard/ftsafe/a/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/a/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/b;->a:Lproguard/ftsafe/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lproguard/ftsafe/a/b;->a:Lproguard/ftsafe/a/a;

    invoke-virtual {p1}, Lproguard/ftsafe/a/a;->b()V

    :cond_1
    return-void
.end method
