.class Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

.field final synthetic val$timeWindow:J


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;J)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    iput-wide p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->val$timeWindow:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptExpireTime(J)Z
    .locals 4

    .line 183
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->val$timeWindow:J

    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public channelOpen(Z)V
    .locals 1

    .line 188
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/net/ProtobufConnection;->setSocketTimeout(I)V

    .line 190
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payment channel client requested that the connection be closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;-><init>(Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 178
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    return-void
.end method

.method public sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/net/ProtobufConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/net/ProtobufConnection;->write(Lcom/google/protobuf/MessageLite;)V

    return-void
.end method
