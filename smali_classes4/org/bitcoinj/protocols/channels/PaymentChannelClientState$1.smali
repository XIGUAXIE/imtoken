.class Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->initWalletListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoinsReceived(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 2

    .line 158
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    monitor-enter p1

    .line 159
    :try_start_0
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object p3

    if-nez p3, :cond_0

    monitor-exit p1

    return-void

    .line 160
    :cond_0
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p3, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->isSettlementTransaction(Lorg/bitcoinj/core/Transaction;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 161
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->access$000()Lorg/slf4j/Logger;

    move-result-object p3

    const-string p4, "Close: transaction {} closed contract {}"

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {p3, p4, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object p3, p3, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p4, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p3, p4}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 164
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object p3, p3, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    if-nez p3, :cond_1

    monitor-exit p1

    return-void

    .line 165
    :cond_1
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object p3, p3, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iput-object p2, p3, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    .line 166
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->updateChannelInWallet()V

    .line 167
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;->this$0:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V

    .line 169
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
