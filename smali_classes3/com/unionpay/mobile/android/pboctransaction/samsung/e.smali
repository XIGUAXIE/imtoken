.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/e;
.super Lcom/unionpay/tsmservice/ITsmCallback$Stub;


# instance fields
.field private a:I

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/tsmservice/ITsmCallback$Stub;-><init>()V

    iput p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorDesc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "uppay"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "1003700023"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    const/16 v2, 0x3fa

    if-ne p2, v2, :cond_0

    const-string p1, "error 100370023 from get vendor pay status"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "KEY_SUCCESS_VENDOR"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    invoke-static {p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iget v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    invoke-static {p2, v0, v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->a:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const-string v1, "uppay-spay"

    const/16 v2, 0x3fa

    const-string v3, "result"

    if-eq v0, v2, :cond_0

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "check spay support callback"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/unionpay/tsmservice/result/CheckSSamsungPayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v0, 0x3f8

    invoke-static {p1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_1
    const-class v0, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/GetCardInfoBySpayResult;->getVirtualCardInfo()Lcom/unionpay/tsmservice/data/VirtualCardInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v1, 0x3f7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_2
    const-class v0, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v1, 0x3f6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v0, 0x3f5

    invoke-static {p1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_4
    const-class v0, Lcom/unionpay/tsmservice/result/SendApduResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/tsmservice/result/SendApduResult;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/SendApduResult;->getOutHexApdu()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_5
    const-class v0, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/tsmservice/result/OpenChannelResult;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/OpenChannelResult;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/OpenChannelResult;->getOutHexApdu()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "channel"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apdu"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    const/16 v0, 0x3f3

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "get vendor pay status callback"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/unionpay/tsmservice/result/VendorPayStatusResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/tsmservice/result/VendorPayStatusResult;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/VendorPayStatusResult;->getVendorPayStatusResult()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "KEY_SUCCESS_VENDOR"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result vendorPayStatusResult max card num reached:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "maxCardNumReached"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unpay"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/unionpay/tsmservice/result/InitResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;->b:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
