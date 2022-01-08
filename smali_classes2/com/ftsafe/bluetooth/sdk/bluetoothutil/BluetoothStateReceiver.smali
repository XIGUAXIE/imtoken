.class public Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "BluetoothStateReceiver onReceive"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "STATE_TURNING_OFF"

    goto :goto_0

    :pswitch_1
    const-string p1, "STATE_ON"

    goto :goto_0

    :pswitch_2
    const-string p1, "STATE_TURNING_ON"

    goto :goto_0

    :pswitch_3
    const-string p1, "STATE_OFF"

    :goto_0
    invoke-static {p2, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
