.class public Lorg/bitcoinj/jni/NativeWalletCoinsSentEventListener;
.super Ljava/lang/Object;
.source "NativeWalletCoinsSentEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onCoinsSent(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
.end method
