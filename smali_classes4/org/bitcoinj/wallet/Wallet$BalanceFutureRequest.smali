.class Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BalanceFutureRequest"
.end annotation


# instance fields
.field public future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Coin;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lorg/bitcoinj/wallet/Wallet$BalanceType;

.field public value:Lorg/bitcoinj/core/Coin;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/wallet/Wallet$1;)V
    .locals 0

    .line 3530
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;-><init>()V

    return-void
.end method
