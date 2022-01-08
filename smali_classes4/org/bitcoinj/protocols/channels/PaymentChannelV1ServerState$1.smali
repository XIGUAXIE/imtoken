.class Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;
.super Ljava/lang/Object;
.source "PaymentChannelV1ServerState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;
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
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 256
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to settle channel, could not broadcast: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 258
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->onSuccess(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/Transaction;)V
    .locals 3

    .line 250
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    const-string v2, "TX {} propagated, channel successfully closed."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 252
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
