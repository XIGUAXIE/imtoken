.class public Lorg/bitcoinj/jni/NativeWalletCoinsReceivedEventListener;
.super Ljava/lang/Object;
.source "NativeWalletCoinsReceivedEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;


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
.method public native onCoinsReceived(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
.end method
