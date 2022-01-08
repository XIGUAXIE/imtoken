.class final Lorg/bitcoinj/wallet/DefaultCoinSelector$1;
.super Ljava/lang/Object;
.source "DefaultCoinSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/DefaultCoinSelector;->sortOutputs(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bitcoinj/core/TransactionOutput;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Lorg/bitcoinj/core/TransactionOutput;

    check-cast p2, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/DefaultCoinSelector$1;->compare(Lorg/bitcoinj/core/TransactionOutput;Lorg/bitcoinj/core/TransactionOutput;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/TransactionOutput;Lorg/bitcoinj/core/TransactionOutput;)I
    .locals 7

    .line 64
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionDepthInBlocks()I

    move-result v0

    .line 65
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionDepthInBlocks()I

    move-result v1

    .line 66
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    .line 68
    iget-wide v4, v2, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 69
    iget-wide v4, v3, Lorg/bitcoinj/core/Coin;->value:J

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 73
    :cond_0
    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/Sha256Hash;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method
