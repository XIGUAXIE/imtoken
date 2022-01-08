.class Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/google/protobuf/ByteString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

.field final synthetic val$ack:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->val$ack:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 425
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$200()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Failed retrieving paymentIncrease info future"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->UPDATE_PAYMENT_FAILED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v2, "Failed processing payment update"

    invoke-static {p1, v2, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void
.end method

.method public onSuccess(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->val$ack:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getPaymentAckBuilder()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setPaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 420
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->val$ack:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 416
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;->onSuccess(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
