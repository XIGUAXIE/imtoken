.class public Lorg/bitcoinj/wallet/KeyTimeCoinSelector;
.super Ljava/lang/Object;
.source "KeyTimeCoinSelector.java"

# interfaces
.implements Lorg/bitcoinj/wallet/CoinSelector;


# static fields
.field public static final MAX_SIMULTANEOUS_INPUTS:I = 0x258

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final ignorePending:Z

.field private final unixTimeSeconds:J

.field private final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;JZ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p2, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->unixTimeSeconds:J

    .line 46
    iput-object p1, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 47
    iput-boolean p4, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->ignorePending:Z

    return-void
.end method

.method private isConfirmed(Lorg/bitcoinj/core/TransactionOutput;)Z
    .locals 1

    .line 87
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 53
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object p1

    .line 54
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 56
    iget-boolean v2, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->ignorePending:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->isConfirmed(Lorg/bitcoinj/core/TransactionOutput;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    iget-object v3, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    :goto_1
    const-string v3, "Coin selector given output as candidate for which we lack the key"

    .line 70
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->unixTimeSeconds:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    .line 76
    sget-object p2, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    const-string v1, "Reached {} inputs, going further would yield a tx that is too large, stopping here."

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 67
    :cond_4
    sget-object v2, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;->log:Lorg/slf4j/Logger;

    const-string v3, "Skipping tx output {} because it\'s not of simple form."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_5
    :goto_2
    new-instance p2, Lorg/bitcoinj/wallet/CoinSelection;

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/wallet/CoinSelection;-><init>(Lorg/bitcoinj/core/Coin;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
