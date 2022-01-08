.class Lproguard/ftsafe/b/u;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lproguard/ftsafe/b/t;


# direct methods
.method constructor <init>(Lproguard/ftsafe/b/t;JJ)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/b/u;->a:Lproguard/ftsafe/b/t;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "BluetoothBondEnable"

    const-string v1, ">>>> onFinish"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/b/u;->a:Lproguard/ftsafe/b/t;

    iget-object v0, v0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    iget-object v0, v0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {v0}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/b/u;->a:Lproguard/ftsafe/b/t;

    iget-object v0, v0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    iget-object v0, v0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {v0}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object v0

    invoke-interface {v0}, Lproguard/ftsafe/b/w;->b()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
