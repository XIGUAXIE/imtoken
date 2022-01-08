.class Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

.field final synthetic val$this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->val$this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bitcoinj/net/ProtobufConnection;->setSocketTimeout(I)V

    .line 85
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V

    return-void
.end method

.method public destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$400(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$402(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 80
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    return-void
.end method

.method public paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lorg/bitcoinj/core/Coin;",
            "Lcom/google/protobuf/ByteString;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;->paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;->this$1:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/net/ProtobufConnection;->write(Lcom/google/protobuf/MessageLite;)V

    return-void
.end method
