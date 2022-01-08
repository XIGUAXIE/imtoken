.class Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;
.super Ljava/lang/Object;
.source "PaymentChannelServerState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->provideContract(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
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
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

.field final synthetic val$contract:Lorg/bitcoinj/core/Transaction;

.field final synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->val$contract:Lorg/bitcoinj/core/Transaction;

    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 210
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to broadcast contract"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->onSuccess(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/Transaction;)V
    .locals 3

    .line 196
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Successfully broadcast multisig contract {}. Channel now open."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->val$contract:Lorg/bitcoinj/core/Transaction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Z)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 205
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
