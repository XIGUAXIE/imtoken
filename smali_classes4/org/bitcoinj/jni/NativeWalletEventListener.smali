.class public Lorg/bitcoinj/jni/NativeWalletEventListener;
.super Ljava/lang/Object;
.source "NativeWalletEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onCoinsReceived(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
.end method

.method public native onCoinsSent(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
.end method

.method public native onKeysAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onReorganize(Lorg/bitcoinj/wallet/Wallet;)V
.end method

.method public native onScriptsChanged(Lorg/bitcoinj/wallet/Wallet;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public native onTransactionConfidenceChanged(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V
.end method

.method public native onWalletChanged(Lorg/bitcoinj/wallet/Wallet;)V
.end method
