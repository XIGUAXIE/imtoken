.class public Lorg/bitcoinj/wallet/WalletTransaction;
.super Ljava/lang/Object;
.source "WalletTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/WalletTransaction$Pool;
    }
.end annotation


# instance fields
.field private final pool:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

.field private final transaction:Lorg/bitcoinj/core/Transaction;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletTransaction;->pool:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    .line 38
    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletTransaction;->transaction:Lorg/bitcoinj/core/Transaction;

    return-void
.end method


# virtual methods
.method public getPool()Lorg/bitcoinj/wallet/WalletTransaction$Pool;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletTransaction;->pool:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    return-object v0
.end method

.method public getTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletTransaction;->transaction:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method
