.class Lim/imkey/imkeylibrary/bluetooth/Ble$3;
.super Ljava/lang/Object;
.source "Ble.java"

# interfaces
.implements Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    iput-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecvData(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;[BI)V
    .locals 0

    .line 203
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {p2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$502(Lim/imkey/imkeylibrary/bluetooth/Ble;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onRecvFail(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V
    .locals 0

    .line 209
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {p2}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p2

    invoke-static {p1, p2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$602(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    .line 210
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
