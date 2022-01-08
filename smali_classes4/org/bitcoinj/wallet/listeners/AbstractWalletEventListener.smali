.class public abstract Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;
.super Lorg/bitcoinj/wallet/listeners/AbstractKeyChainEventListener;
.source "AbstractWalletEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletEventListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/bitcoinj/wallet/listeners/AbstractKeyChainEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    return-void
.end method

.method public onCoinsReceived(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onCoinsSent(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onKeysAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onReorganize(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onScriptsChanged(Lorg/bitcoinj/wallet/Wallet;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;Z)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onTransactionConfidenceChanged(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method

.method public onWalletChanged(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/listeners/AbstractWalletEventListener;->onChange()V

    return-void
.end method
