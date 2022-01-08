.class Lorg/bitcoinj/wallet/Wallet$9;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;

.field final synthetic val$req:Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;

.field final synthetic val$v:Lorg/bitcoinj/core/Coin;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;Lorg/bitcoinj/core/Coin;)V
    .locals 0

    .line 3588
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$9;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/wallet/Wallet$9;->val$req:Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;

    iput-object p3, p0, Lorg/bitcoinj/wallet/Wallet$9;->val$v:Lorg/bitcoinj/core/Coin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3590
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$9;->val$req:Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;

    iget-object v0, v0, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet$9;->val$v:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
