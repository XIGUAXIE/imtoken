.class Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"

# interfaces
.implements Lorg/bitcoinj/net/StreamConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->bindAndStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNewConnection(Ljava/net/InetAddress;I)Lorg/bitcoinj/net/ProtobufConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I)",
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->access$800(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;Ljava/net/SocketAddress;I)V

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;->access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getNewConnection(Ljava/net/InetAddress;I)Lorg/bitcoinj/net/StreamConnection;
    .locals 0

    .line 146
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;->getNewConnection(Ljava/net/InetAddress;I)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object p1

    return-object p1
.end method
