.class Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lorg/bitcoinj/net/ProtobufConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
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
.field final synthetic this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

.field final synthetic val$address:Ljava/net/SocketAddress;

.field final synthetic val$this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized connectionClosed(Lorg/bitcoinj/net/ProtobufConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionClosed()V

    .line 102
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->channelClosed(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CONNECTION_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->channelClosed(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 106
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->setConnectionChannel(Lorg/bitcoinj/net/ProtobufConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connectionOpen(Lorg/bitcoinj/net/ProtobufConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->access$700(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->val$address:Ljava/net/SocketAddress;

    invoke-interface {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;->onNewConnection(Ljava/net/SocketAddress;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$502(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    .line 116
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->setConnectionChannel(Lorg/bitcoinj/net/ProtobufConnection;)V

    .line 117
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lcom/google/protobuf/MessageLite;)V
    .locals 0

    .line 93
    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method public declared-synchronized messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
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

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$600(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
