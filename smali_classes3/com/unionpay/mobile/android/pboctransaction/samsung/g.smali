.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "uppay"

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_6

    const/16 v5, 0x3fa

    const-string v6, "uppay-spay"

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "check spay support"

    :goto_0
    invoke-static {v6, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;->a(Z)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "get spay list call back"

    invoke-static {v6, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unionpay/tsmservice/data/VirtualCardInfo;

    new-instance v0, Lcom/unionpay/mobile/android/model/a;

    const/16 v3, 0x20

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/data/VirtualCardInfo;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/data/VirtualCardInfo;->getCardNo()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const-string v5, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0x7d0

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "list success"

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unionpay/tsmservice/result/GetSeAppListResult;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/result/GetSeAppListResult;->getSeAppList()[Lcom/unionpay/tsmservice/data/SeAppListItem;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/data/AppDetail;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/data/AppDetail;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-le v5, v6, :cond_0

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "06"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    :cond_0
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_1

    new-instance v3, Lcom/unionpay/mobile/android/model/a;

    const/4 v6, 0x1

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unionpay/tsmservice/data/AppDetail;->getAppID()Lcom/unionpay/tsmservice/AppID;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unionpay/tsmservice/AppID;->getAppAid()Ljava/lang/String;

    move-result-object v7

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/unionpay/tsmservice/data/SeAppListItem;->getAppDetail()Lcom/unionpay/tsmservice/data/AppDetail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unionpay/tsmservice/data/AppDetail;->getMpan()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const-string v8, ""

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/unionpay/mobile/android/model/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0x8

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "close channel success"

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v0, "success"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "apdu success version 3.3.1"

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_5
    const-string v0, "channel success"

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v2, "channel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v2, "apdu"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_3
    const-string v0, "timeout"

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    const-string v2, ""

    invoke-static {v0, p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;ILjava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string p1, "send apdu time out"

    invoke-static {v6, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "KEY_SUCCESS_VENDOR"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mIsVendorStateReady: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "get vendor pay status"

    goto/16 :goto_0

    :cond_6
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string p1, "init success"

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    iput-boolean v4, p1, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->h:Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "msg error"

    invoke-static {v2, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/f;

    invoke-static {v2, v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;ILjava/lang/String;)V

    :cond_8
    :goto_4
    return v1

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
