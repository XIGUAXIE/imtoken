.class Lorg/bitcoinj/wallet/Wallet$2;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Lorg/bitcoinj/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->createTransientState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 1

    .line 346
    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->SEEN_PEERS:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    if-ne p2, v0, :cond_0

    .line 347
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iget-object p2, p2, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    :try_start_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bitcoinj/wallet/Wallet;->access$000(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;)V

    .line 350
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bitcoinj/wallet/Wallet;->getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    .line 351
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-static {p2, p1}, Lorg/bitcoinj/wallet/Wallet;->access$100(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V

    .line 352
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iget-object p1, p1, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet$2;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iget-object p2, p2, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
