.class Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;
.super Ljava/util/TimerTask;
.source "StoredPaymentChannelServerStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

.field final synthetic val$channel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;->this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    invoke-static {}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    const-string v2, "Auto-closing channel: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;->this$0:Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->closeChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    invoke-static {}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Auto-closing channel failed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
