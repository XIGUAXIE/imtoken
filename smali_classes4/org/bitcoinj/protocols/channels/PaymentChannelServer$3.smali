.class Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->settlePayment(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

.field final synthetic val$clientRequestedClose:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->val$clientRequestedClose:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 543
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to broadcast settlement tx"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->val$clientRequestedClose:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 523
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->onSuccess(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/Transaction;)V
    .locals 2

    .line 527
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 528
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 533
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$200()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v1, "Sending CLOSE back with broadcast settlement tx."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$200()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v1, "Sending CLOSE back without broadcast settlement tx."

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 537
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 538
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;->val$clientRequestedClose:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void
.end method
