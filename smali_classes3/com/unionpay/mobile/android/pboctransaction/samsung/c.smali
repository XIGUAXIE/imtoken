.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/c;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    :goto_0
    return v0
.end method
