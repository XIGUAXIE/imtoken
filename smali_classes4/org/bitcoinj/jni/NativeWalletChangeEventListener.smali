.class public Lorg/bitcoinj/jni/NativeWalletChangeEventListener;
.super Ljava/lang/Object;
.source "NativeWalletChangeEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onWalletChanged(Lorg/bitcoinj/wallet/Wallet;)V
.end method
