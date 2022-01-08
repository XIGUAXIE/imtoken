.class Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerHandler"
.end annotation


# instance fields
.field private closeReason:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

.field private eventHandler:Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

.field private final paymentChannelManager:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

.field private final protobufHandlerListener:Lorg/bitcoinj/net/ProtobufConnection$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/net/ProtobufConnection$Listener<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final socketProtobufHandler:Lorg/bitcoinj/net/ProtobufConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V
    .locals 5

    .line 71
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/core/TransactionBroadcaster;

    move-result-object v1

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object v2

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    new-instance v4, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;

    invoke-direct {v4, p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->paymentChannelManager:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    .line 93
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler$2;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->protobufHandlerListener:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    .line 122
    new-instance p1, Lorg/bitcoinj/net/ProtobufConnection;

    .line 123
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p2

    mul-int/lit16 p3, p3, 0x3e8

    const/16 v1, 0x7fff

    invoke-direct {p1, v0, p2, v1, p3}, Lorg/bitcoinj/net/ProtobufConnection;-><init>(Lorg/bitcoinj/net/ProtobufConnection$Listener;Lcom/google/protobuf/MessageLite;II)V

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->socketProtobufHandler:Lorg/bitcoinj/net/ProtobufConnection;

    return-void
.end method

.method static synthetic access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->socketProtobufHandler:Lorg/bitcoinj/net/ProtobufConnection;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->closeReason:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p0
.end method

.method static synthetic access$402(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->closeReason:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1
.end method

.method static synthetic access$500(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->eventHandler:Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    return-object p0
.end method

.method static synthetic access$502(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;)Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->eventHandler:Lorg/bitcoinj/protocols/channels/ServerConnectionEventHandler;

    return-object p1
.end method

.method static synthetic access$600(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->paymentChannelManager:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    return-object p0
.end method
