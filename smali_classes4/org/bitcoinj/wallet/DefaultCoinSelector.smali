.class public Lorg/bitcoinj/wallet/DefaultCoinSelector;
.super Ljava/lang/Object;
.source "DefaultCoinSelector.java"

# interfaces
.implements Lorg/bitcoinj/wallet/CoinSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSelectable(Lorg/bitcoinj/core/Transaction;)Z
    .locals 4

    .line 93
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    .line 95
    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 97
    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v0

    if-gt v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.bitcoin.regtest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method static sortOutputs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/bitcoinj/wallet/DefaultCoinSelector$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultCoinSelector$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;
    .locals 7
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

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    sget-object p2, Lorg/bitcoinj/core/NetworkParameters;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    invoke-static {v1}, Lorg/bitcoinj/wallet/DefaultCoinSelector;->sortOutputs(Ljava/util/ArrayList;)V

    :cond_0
    const-wide/16 v2, 0x0

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 49
    iget-wide v4, p1, Lorg/bitcoinj/core/Coin;->value:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bitcoinj/wallet/DefaultCoinSelector;->shouldSelect(Lorg/bitcoinj/core/Transaction;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    iget-wide v4, v1, Lorg/bitcoinj/core/Coin;->value:J

    add-long/2addr v2, v4

    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    new-instance p1, Lorg/bitcoinj/wallet/CoinSelection;

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/bitcoinj/wallet/CoinSelection;-><init>(Lorg/bitcoinj/core/Coin;Ljava/util/Collection;)V

    return-object p1
.end method

.method protected shouldSelect(Lorg/bitcoinj/core/Transaction;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 86
    invoke-static {p1}, Lorg/bitcoinj/wallet/DefaultCoinSelector;->isSelectable(Lorg/bitcoinj/core/Transaction;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
