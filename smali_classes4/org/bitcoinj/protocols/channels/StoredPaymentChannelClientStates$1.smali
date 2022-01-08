.class Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;
.super Ljava/util/TimerTask;
.source "StoredPaymentChannelClientStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

.field final synthetic val$channel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    invoke-static {v0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->access$000(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;)Lorg/bitcoinj/core/TransactionBroadcaster;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->removeChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V

    .line 224
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    .line 225
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-static {}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Auto-closing channel failed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
