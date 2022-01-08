.class Lproguard/ftsafe/d/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/d/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/d/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/d/b;->a:Lproguard/ftsafe/d/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lproguard/ftsafe/d/b;->a:Lproguard/ftsafe/d/a;

    sget-object p2, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    invoke-static {p1, p2}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/d/a;Lproguard/ftsafe/b/c;)Lproguard/ftsafe/b/c;

    iget-object p1, p0, Lproguard/ftsafe/d/b;->a:Lproguard/ftsafe/d/a;

    invoke-static {p1}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lproguard/ftsafe/d/b;->a:Lproguard/ftsafe/d/a;

    invoke-static {p1}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/d/g;->a()V

    :cond_1
    :goto_0
    return-void
.end method
