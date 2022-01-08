.class public Lorg/bitcoinj/wallet/FilteringCoinSelector;
.super Ljava/lang/Object;
.source "FilteringCoinSelector.java"

# interfaces
.implements Lorg/bitcoinj/wallet/CoinSelector;


# instance fields
.field protected delegate:Lorg/bitcoinj/wallet/CoinSelector;

.field protected spent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/bitcoinj/core/TransactionOutPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bitcoinj/wallet/CoinSelector;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/FilteringCoinSelector;->spent:Ljava/util/HashSet;

    .line 33
    iput-object p1, p0, Lorg/bitcoinj/wallet/FilteringCoinSelector;->delegate:Lorg/bitcoinj/wallet/CoinSelector;

    return-void
.end method


# virtual methods
.method public excludeOutputsSpentBy(Lorg/bitcoinj/core/Transaction;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 38
    iget-object v1, p0, Lorg/bitcoinj/wallet/FilteringCoinSelector;->spent:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;)",
            "Lorg/bitcoinj/wallet/CoinSelection;"
        }
    .end annotation

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 47
    iget-object v2, p0, Lorg/bitcoinj/wallet/FilteringCoinSelector;->spent:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/FilteringCoinSelector;->delegate:Lorg/bitcoinj/wallet/CoinSelector;

    invoke-interface {v0, p1, p2}, Lorg/bitcoinj/wallet/CoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object p1

    return-object p1
.end method
