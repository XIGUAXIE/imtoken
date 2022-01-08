.class Lorg/bitcoinj/wallet/Wallet$6;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->queueOnCoinsSent(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;

.field final synthetic val$newBalance:Lorg/bitcoinj/core/Coin;

.field final synthetic val$prevBalance:Lorg/bitcoinj/core/Coin;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

.field final synthetic val$tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 0

    .line 2765
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$6;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$tx:Lorg/bitcoinj/core/Transaction;

    iput-object p4, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$prevBalance:Lorg/bitcoinj/core/Coin;

    iput-object p5, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$newBalance:Lorg/bitcoinj/core/Coin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2768
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet$6;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$tx:Lorg/bitcoinj/core/Transaction;

    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$prevBalance:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/bitcoinj/wallet/Wallet$6;->val$newBalance:Lorg/bitcoinj/core/Coin;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;->onCoinsSent(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    return-void
.end method
