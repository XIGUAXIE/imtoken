.class Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

.field final synthetic val$contract:Lorg/bitcoinj/core/Transaction;

.field final synthetic val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->val$contract:Lorg/bitcoinj/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 390
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;->val$contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Sha256Hash;)V

    return-void
.end method
