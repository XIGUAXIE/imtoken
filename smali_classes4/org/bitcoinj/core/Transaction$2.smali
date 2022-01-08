.class final Lorg/bitcoinj/core/Transaction$2;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/core/Transaction$2;->compare(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)I
    .locals 5

    .line 81
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 84
    :goto_0
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    sget-object v4, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v2, v4, :cond_1

    .line 86
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->getAppearedAtChainHeight()I

    move-result v3

    .line 87
    :cond_1
    invoke-static {v0, v3}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    neg-int v0, v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Sha256Hash;->compareTo(Lorg/bitcoinj/core/Sha256Hash;)I

    move-result v0

    :goto_1
    return v0
.end method
