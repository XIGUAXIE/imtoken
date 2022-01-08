.class final Lcom/unionpay/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;


# instance fields
.field final synthetic a:Lcom/unionpay/b/b;


# direct methods
.method constructor <init>(Lcom/unionpay/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/b/d;->a:Lcom/unionpay/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTsmConnected()V
    .locals 2

    const-string v0, "uppay"

    const-string v1, "TsmService connected."

    invoke-static {v0, v1}, Lcom/unionpay/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/b/d;->a:Lcom/unionpay/b/b;

    invoke-virtual {v0}, Lcom/unionpay/b/b;->b()Z

    return-void
.end method

.method public final onTsmDisconnected()V
    .locals 5

    const-string v0, "uppay"

    const-string v1, "TsmService disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/b/d;->a:Lcom/unionpay/b/b;

    invoke-static {v0}, Lcom/unionpay/b/b;->c(Lcom/unionpay/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/b/d;->a:Lcom/unionpay/b/b;

    invoke-static {v2}, Lcom/unionpay/b/b;->d(Lcom/unionpay/b/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/unionpay/UPSEInfoResp;->ERROR_NONE:Ljava/lang/String;

    const-string v4, "Tsm service disconnect"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/unionpay/b/b;->a(Lcom/unionpay/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
