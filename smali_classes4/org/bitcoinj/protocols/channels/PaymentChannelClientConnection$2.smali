.class Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"

# interfaces
.implements Lorg/bitcoinj/net/ProtobufConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bitcoinj/net/ProtobufConnection$Listener<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed(Lorg/bitcoinj/net/ProtobufConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;)V"
        }
    .end annotation

    .line 213
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionClosed()V

    .line 214
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    const-string v2, "The TCP socket died"

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;-><init>(Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public connectionOpen(Lorg/bitcoinj/net/ProtobufConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen()V

    return-void
.end method

.method public bridge synthetic messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lcom/google/protobuf/MessageLite;)V
    .locals 0

    .line 195
    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method public messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ")V"
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
